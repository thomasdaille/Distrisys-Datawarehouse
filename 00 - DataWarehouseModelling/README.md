# Datawarehouse modelling

## How to store data ?

[...]

## Slowly Changing Dimensions

What to do when the value of an attribute of a dimension changes ? Well, R. Kimball recommends 3 different methods depending on the user need :

### Type 1 - Overwrite previous value

In the Type 1 reaction, we simply replace the old attribute value with the new one in the relevant dimension row. 

<p align="center">
  <img src="https://github.com/thomasdaille/Image-Library/blob/master/SCD1.PNG" alt="SCD type 1">
</p>

:heavy_plus_sign: Quick and easy to set up

:heavy_minus_sign: Loss of history and no tracking of change

**=> Best option when the change is a correction**

### Type 2 - Add a dimension line

When an attribute is changed, we enter a new dimension line indicating the new value.

<p align="center">
  <img src="https://github.com/thomasdaille/Image-Library/blob/master/SCD2.PNG" alt="SCD type 2">
</p>

:heavy_plus_sign: Accurate history tracing

:heavy_minus_sign: Can make the table bigger

:warning: Use the natural key (Us_number) to safely connect the two recordings (and do not count the same product twice)

**=> Main technique for correctly tracking slowly changing dimensional attributes**

### Type 3 - Add a dimension column

With type 3, we add a column in order to know simultaneously the current value and the previous value.

<p align="center">
  <img src="https://github.com/thomasdaille/Image-Library/blob/master/SCD3.PNG" alt="SCD type 3">
</p>

:heavy_plus_sign: Allows you to view the data according to both the new and old attribute values

:heavy_minus_sign: Limited history management. Only the previous state is saved

**=> Perfect solution when there is a strong need to allow two world views simultaneously**

## Data audit

[...]

# Our dimensions

- **DimGeographie** - Allows the geographical location of sites and clients
- **DimSite** - Includes all the company's site (shop)
- **DimClient** - Cover all the company's clients
- **DimProduit** - Contains all the company's products
- **DimTemps** - nables the use of a temporal analysis axis

# Our fact tables

## FactFacture

The fact table *FactFacture* allows you to analyse the company's invoices by containing one line per day (invoice date), per invoice site, per product and per customer. For each line, we find the amount of the invoice, the discount, the margin, the cost and the quantity.

<p align="center">
  <img src="https://github.com/thomasdaille/Image-Library/blob/master/FactFacture.PNG" alt="FactFacture schema">
</p>

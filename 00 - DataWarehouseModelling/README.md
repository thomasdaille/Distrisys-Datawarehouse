# Datawarehouse modelling

## How to store data ?

[...]

## Slowly Changing Dimensions

What to do when the value of an attribute of a dimension changes ? 

### Type 1 - Overwrite previous value

In the Type 1 reaction, we simply replace the old attribute value with the new one in the relevant dimension row. 

<p align="center">
  <img src="https://github.com/thomasdaille/Image-Library/blob/master/SCD1.PNG" alt="SCD type 1">
</p>

:heavy_plus_sign: Quick and easy to set up
:heavy_minus_sign: Loss of history and no tracking of change

:arrow_right: Best option when the change is a correction

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

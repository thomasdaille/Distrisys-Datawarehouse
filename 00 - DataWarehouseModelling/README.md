# Datawarehouse modelling

## How to store data ?

[...]

## Slowly Changing Dimensions

[...]

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

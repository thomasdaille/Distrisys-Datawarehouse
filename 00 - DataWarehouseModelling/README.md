# Datawarehouse modelling

## How to store data ?

https://www.amazon.com/Data-Warehouse-Toolkit-Definitive-Dimensional/dp/1118530802

The star schema is a mature modelling approach widely adopted by relational data warehouses. Modellers must classify their model tables as either dimension or fact tables.

<p align="center">
  <img src="https://github.com/thomasdaille/Image-Library/blob/master/StarSchema.PNG" alt="Star schema">
</p>

###

### Fact tables

Fact tables store observations or events and can be sales orders, stock balances, exchange rates, temperatures, etc. A fact table is generally divided into 3 parts :

- a first block of foreign keys that details the links with the dimension tables (defines the granularity of the table)

- a second block with the measures

- a third block for degenerate dimensions (dimension without attributes such as an order number). They have no use in the analysis but generally represent a reference to the grain of the fact table. They allow the link between the decision-making system and the source system.

There are three types of fact tables :

- **Transaction** type fact tables : these describe in detail the stage of a process (the event)

- **Balance sheet** type fact tables : this is a summary of certain stages in the course of a process

- **Photo** type fact tables : this involves taking stock of a process at a given moment (the inventory)

### Dimension tables 

The dimension tables describe the business entities. These are the axes of analysis of our model. A dimension table is usually made up of two parts: the first part contains the technical key of the table and the second part the attributes of the dimension.

## Slowly Changing Dimensions

What to do when the value of an attribute of a dimension changes ? Well, R. Kimball recommends 3 different methods depending on the user need :

### Type 1 - Overwrite previous value

In the Type 1 reaction, we simply replace the old attribute value with the new one in the relevant dimension row. 

<p align="center">
  <img src="https://github.com/thomasdaille/Image-Library/blob/master/SCD1.PNG" alt="SCD type 1">
</p>

:heavy_plus_sign: Quick and easy to set up

:heavy_minus_sign: Loss of history and no tracking of change

**CONCLUSION : Best option when the change is a correction**

### Type 2 - Add a dimension line

When an attribute is changed, we enter a new dimension line indicating the new value.

<p align="center">
  <img src="https://github.com/thomasdaille/Image-Library/blob/master/SCD2.PNG" alt="SCD type 2">
</p>

You can also work with "effective date" and "expiry date" fields.

:heavy_plus_sign: Accurate history tracing

:heavy_minus_sign: Can make the table bigger

**ATTENTION :** Use the natural key (Us_number) to safely connect the two recordings (and do not count the same product twice)

**CONCLUSION : Main technique for correctly tracking slowly changing dimensional attributes**

### Type 3 - Add a dimension column

With type 3, we add a column in order to know simultaneously the current value and the previous value.

<p align="center">
  <img src="https://github.com/thomasdaille/Image-Library/blob/master/SCD3.PNG" alt="SCD type 3">
</p>

:heavy_plus_sign: Allows you to view the data according to both the new and old attribute values

:heavy_minus_sign: Limited history management. Only the previous state is saved

**CONCLUSION : Perfect solution when there is a strong need to allow two world views simultaneously**

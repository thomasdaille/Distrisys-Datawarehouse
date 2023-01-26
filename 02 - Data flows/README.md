# Data flows

## Environment

<p align="center">
  <img src="https://github.com/thomasdaille/Image-Library/blob/master/Environement.PNG" alt="Environement">
</p>

## Flows

The ETL flows detailed here are intended to feed the data warehouse from the staging area of the BI system.

### Dimension flows

The role of dimension feeds, such as the product dimension, is to ensure the traceability of variations within the dimension while guaranteeing the origin of the data. It therefore integrates the principles of SCD and flow auditing.

#### DimProduct

Within the dimension there is a technical attribute "Valide", which identifies the lines currently used by the system. On the other hand, the "AuditFluxAjout_FK" column identifies the flow responsible for adding the line within the dimension. Finally, "AuditFluxModification_FK" identifies the flow responsible for a line modification.

<p align="center">
  <img src="https://github.com/thomasdaille/Image-Library/blob/master/AuditProduit.PNG" alt="Produit rows">
</p>

For example, it is understood that the product RC3000p has been added to the dimension by stream 49. It then underwent a "FamilyCode" modification in flow 50, resulting in the addition of a new line.

#### AuditFlux

In the "AuditFlux" table, we find the details relating to flows 49 and 50 such as their execution date and time.

<p align="center">
  <img src="https://github.com/thomasdaille/Image-Library/blob/master/AuditFlux.PNG" alt="AuditFlux rows">
</p>

#### AuditEvenement

AuditEvenement table allows you to trace the events that have occurred flow by flow.

<p align="center">
  <img src="https://github.com/thomasdaille/Image-Library/blob/master/AuditEvenement.PNG" alt="AuditEvenement rows">
</p>

For example, there is the modification of line RC3000p line 12.

#### AuditTraitement

Finally, "AuditTraitement" allows the monitoring of all flow executions.

<p align="center">
  <img src="https://github.com/thomasdaille/Image-Library/blob/master/AuditTraitement.PNG" alt="AuditTraitement rows">
</p>

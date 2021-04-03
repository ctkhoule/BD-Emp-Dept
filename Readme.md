# BD-Emp-Dept
Mise en place d'une base de données de gestion des employés, départements, produits et commandes.

## Soit la base de données BD-Emp-Dept dont le schéma relationnel est donné ci-dessous :

Employe (__Numemp__, Nomemp, #NumD)

Departement (___NumD__, Nomd, #NumChef)

Commande (__NumC__, #NumP,#NumD, Montant)

Produit (__NumP__, NomP, TypeP)

---

NB :

Les attributs en gras représentent les clés primaires et cels précédés d'un hastag (#) représentent les clés étrangères.

__NumChef__ fait référence à __Numemp__ et représente le numéro du chef de département qui est un employé.
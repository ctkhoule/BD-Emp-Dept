-- Creatipn des tables (création du schéma de base de données)

-- Table Employe 
Create Table Employe(
    Numemp integer primary key,
    Nomemp varchar(10)
);

-- Table Departement
Create Table Departement(
    NumD integer primary key,
    Nomd varchar(20)
);

-- Ajout de l'attribut clè étrangère, #NumD, dans la table Employe
Alter table Employe add NumD integer;
Alter table Employe add constraint fk_Emp_Dept foreign key(NumD) references Departement(NumD);

-- Ajout de l'attribut clè étrangère, #NumChef, dans la table Departement
Alter table Departement add NumChef integer;
Alter table Departement add constraint fk_Dept_Emp foreign key(NumChef) references Employe(Numemp);

-- Table Produit
Create table Produit(
    NumP integer primary key,
    NomP varchar(15),
    TypeP varchar(15)
);

-- Table Commande
Create table Commande(
    NumC integer primary key,
    NumP integer,
    NumD integer,
    Montant integer,
    constraint fk_Com_Dept foreign key(NumD) references Departement(NumD),
    constraint fk_Com_Prod foreign key(NumP) references Produit(NumP)
);

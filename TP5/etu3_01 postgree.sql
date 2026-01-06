-- -----------------------------------------------------------------------------
--             G?n?ration d'une base de donn?es pour
--                      Oracle Version 10g
--                     (23/7/2020 14:37:11)
-- -----------------------------------------------------------------------------
--      Nom de la base : CDI_ETUDIANT_CORRECT
--      Projet : CDI
--      Auteur : E.PORCQ
--      Date de derni?re modification : 23/7/2020 14:37:02
-- -----------------------------------------------------------------------------

DROP TABLE CDI_FOURNISSEUR CASCADE ;
DROP TABLE CDI_COMMANDE CASCADE;
DROP TABLE CDI_LIVRAISON CASCADE;
DROP TABLE CDI_CLIENT CASCADE;
DROP TABLE CDI_MESSAGE CASCADE;
DROP TABLE CDI_MAGASIN CASCADE ;
DROP TABLE CDI_POIMESSAGE CASCADE;
DROP TABLE CDI_POIDS CASCADE ;
DROP TABLE CDI_ARTICLE CASCADE;
DROP TABLE CDI_LIV_MESSAGE CASCADE;
DROP TABLE CDI_LIGCDE CASCADE;
DROP TABLE CDI_LIGLIV CASCADE;

DROP TABLE CDI_ANCIEN_FOURNISSEUR CASCADE;

CREATE TABLE CDI_ANCIEN_FOURNISSEUR
(
    FO_NUMERO CHAR(8)  ,
    FO_NOM varchar(32),
    FO_DATE_DISPARITION date
);

CREATE TABLE CDI_FOURNISSEUR
(
    FO_NUMERO CHAR(8)  ,
    FO_NOM varchar(32)  
);

CREATE TABLE CDI_COMMANDE
(
    CO_NUMERO CHAR(8)  ,
    MA_NUMERO CHAR(8)  ,
    CL_NUMERO CHAR(8)  ,
    CO_DATE DATE  
);

CREATE TABLE CDI_LIVRAISON
(
    LI_NUMERO CHAR(8)  ,
    CL_NUMERO CHAR(8)  ,
    CO_NUMERO CHAR(8)  ,
    MA_NUMERO CHAR(8)  ,
    DATE_LIV DATE  
);

CREATE TABLE CDI_CLIENT
(
    CL_NUMERO CHAR(8)  ,
    CL_NOM varchar(32),
    CL_PRENOM varchar(32),
    CL_LOCALITE varchar(32),
    CL_PAYS varchar(32),
    CL_CA int4,
    CL_TYPE varchar(32)  
);

CREATE TABLE CDI_MESSAGE
(
    MES_CODE CHAR(3)  ,
    MES_TEXTE varchar(50)  
);

CREATE TABLE CDI_MAGASIN
(
    MA_NUMERO CHAR(8)  ,
    MA_LOCALITE CHAR(32),
    MA_NOM_GERANT varchar(25),
    MA_PRENOM_GERANT varchar(25)  
);

CREATE TABLE CDI_POIMESSAGE
(
    POM_MESSAGE_124 varchar(60)  ,
    POM_DATE_JOUR DATE  ,
    POM_TOTAL_LU int,
    POM_MESSAGE_3 varchar(60),
    POM_LOGIN varchar(32)  
);

CREATE TABLE CDI_POIDS
(
    POI_CODE int  ,
    POI_LIBELLE varchar(10),
    POI_MIN int4,
    POI_MAX int4  
);

CREATE TABLE CDI_ARTICLE
(
    AR_NUMERO CHAR(8)  ,
    FO_NUMERO CHAR(8)  ,
    POI_CODE int2,
    AR_NOM varchar(25),
    AR_POIDS int4,
    AR_COULEUR varchar(32),
    AR_STOCK int4,
    AR_PA float,
    AR_PV float  
);

CREATE TABLE CDI_LIV_MESSAGE
(
    LV_DATE_MES DATE  ,
    LI_NUMERO CHAR(8)  ,
    MA_NUMERO CHAR(8)  ,
    CO_NUMERO CHAR(8)  ,
    CL_NUMERO CHAR(8)  ,
    AR_NUMERO CHAR(8)  ,
    LV_MESSAGE varchar(5)  ,
    LV_LOGIN varchar(32)  
);

CREATE TABLE CDI_LIGCDE
(
    AR_NUMERO CHAR(8)  ,
    CO_NUMERO CHAR(8)  ,
    DATE_LIV DATE,
    LIC_QTCMDEE int2,
    LIC_QTLIVREE int2,
    LIC_PU float  
);

CREATE TABLE CDI_LIGLIV
(
    LI_NUMERO CHAR(8)  ,
    AR_NUMERO CHAR(8)  ,
    LIL_QTLIVREE int2  
);


---------------------------------------------------
--   DATA FOR  CDI
---------------------------------------------------
Insert into CDI_MAGASIN (MA_NUMERO,MA_LOCALITE,MA_NOM_GERANT,MA_PRENOM_GERANT) values ('M01','PARIS 5E','BERTON','Louis');
Insert into CDI_MAGASIN (MA_NUMERO,MA_LOCALITE,MA_NOM_GERANT,MA_PRENOM_GERANT) values ('M02','PARIS 10E','JANNEAU','Luc');
Insert into CDI_MAGASIN (MA_NUMERO,MA_LOCALITE,MA_NOM_GERANT,MA_PRENOM_GERANT) values ('M03','LYON','MOUILLARD','Marcel');
Insert into CDI_MAGASIN (MA_NUMERO,MA_LOCALITE,MA_NOM_GERANT,MA_PRENOM_GERANT) values ('M04','MARSEILLE','CAMUS','Marius');
Insert into CDI_MAGASIN (MA_NUMERO,MA_LOCALITE,MA_NOM_GERANT,MA_PRENOM_GERANT) values ('M05','MONTPELLIER','BAIJOT','Marc');
Insert into CDI_MAGASIN (MA_NUMERO,MA_LOCALITE,MA_NOM_GERANT,MA_PRENOM_GERANT) values ('M06','BORDEAUX','DETIENNE','Nicole');
Insert into CDI_MAGASIN (MA_NUMERO,MA_LOCALITE,MA_NOM_GERANT,MA_PRENOM_GERANT) values ('M07','NANTES','DUMONT','Henri');
Insert into CDI_MAGASIN (MA_NUMERO,MA_LOCALITE,MA_NOM_GERANT,MA_PRENOM_GERANT) values ('M08','STRASBOURG','HOUSSEL','Kader');
Insert into CDI_MAGASIN (MA_NUMERO,MA_LOCALITE,MA_NOM_GERANT,MA_PRENOM_GERANT) values ('M09','ROUEN','NOSSENT','Daniel');
Insert into CDI_MAGASIN (MA_NUMERO,MA_LOCALITE,MA_NOM_GERANT,MA_PRENOM_GERANT) values ('M10','LILLE','NIZET','Jean-Luc');
Insert into CDI_MAGASIN (MA_NUMERO,MA_LOCALITE,MA_NOM_GERANT,MA_PRENOM_GERANT) values ('M11','BRUXELLES','VANDAELE','Annick');
Insert into CDI_MAGASIN (MA_NUMERO,MA_LOCALITE,MA_NOM_GERANT,MA_PRENOM_GERANT) values ('M12','LIEGE','HANNEAU','Vincent');
Insert into CDI_MAGASIN (MA_NUMERO,MA_LOCALITE,MA_NOM_GERANT,MA_PRENOM_GERANT) values ('M13','TOURS','DEMARTEAU','Ren?e');

Insert into CDI_FOURNISSEUR (FO_NUMERO,FO_NOM) values ('F01','CATI O ELECTRONIC');
Insert into CDI_FOURNISSEUR (FO_NUMERO,FO_NOM) values ('F02','LES STYLOS REUNIS');
Insert into CDI_FOURNISSEUR (FO_NUMERO,FO_NOM) values ('F03','MECANIQUE DE PRECISION');
Insert into CDI_FOURNISSEUR (FO_NUMERO,FO_NOM) values ('F04','SARL ROULAND');
Insert into CDI_FOURNISSEUR (FO_NUMERO,FO_NOM) values ('F05','ELECTROLAMP');
Insert into CDI_FOURNISSEUR (FO_NUMERO,FO_NOM) values ('F06','RAMONAGE BDD');
Insert into CDI_FOURNISSEUR (FO_NUMERO,FO_NOM) values ('F08','TROISLOUKOUMS MATOS'); 

Insert into CDI_ANCIEN_FOURNISSEUR (FO_NUMERO,FO_NOM, FO_DATE_DISPARITION) values ('F01','LE PLUMIER ROYAL', to_date('15/06/1970','dd/mm/yyyy') );
Insert into CDI_ANCIEN_FOURNISSEUR (FO_NUMERO,FO_NOM, FO_DATE_DISPARITION) values ('F02','L''ENCRE MAGIQUE',  to_date('31/12/1985','dd/mm/yyyy'));
Insert into CDI_ANCIEN_FOURNISSEUR (FO_NUMERO,FO_NOM, FO_DATE_DISPARITION) values ('F03','PARCHEMINS ET COMPAGNIE',  to_date('30/08/1929','dd/mm/yyyy'));
Insert into CDI_ANCIEN_FOURNISSEUR (FO_NUMERO,FO_NOM, FO_DATE_DISPARITION) values ('F04','LA COURSE AUX TROUSSES',  to_date('30/06/2009','dd/mm/yyyy'));

Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A01','F04','AGRAFEUSE',150,'ROUGE',3,7,10);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A02','F01','CALCULATRICE',100,'NOIR',null,25,29);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A03','F04','CACHEUR-DATEUR',100,'BLANC',3,15,25);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A04','F05','LAMPE',550,'ROUGE',48,18,28);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A05','F05','LAMPE',550,'BLANC',666,18,28);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A06','F05','LAMPE',550,'BLEU',null,18,28);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A07','F05','LAMPE',550,'VERT',3,18,28);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A08','F03','PESE-LETTRE 1-500',1230,null,null,28,35);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A09','F03','PESE-LETTRE 1-1000',null,null,3,30,39);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A10','F02','CRAYON',20,'ROUGE',null,1,2);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A11','F02','CRAYON',20,'BLEU',null,3,4);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A12','F02','CRAYON LUXE',20,'ROUGE',8,3,4);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A13','F02','CRAYON LUXE',20,'VERT',7,3,4);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A14','F02','CRAYON LUXE',20,'BLEU',null,3,4);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A15','F02','CRAYON LUXE',20,'NOIR',null,3,5);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A20','F01','COLLE',60,'BLANC',null,1,3);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A21','F06','COLLE',60,'BLANC',10,1,2);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A22','F03','COLLE',60,'BLANC',34,1,2);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A25','F01','COLLE',null,'BLANC',10,1,2);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A26','F02','COLLE',60,'BLANC',15,1,2);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A27','F05','COLLE',60,'BLANC',1,1,2);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A28','F03','Surligneur',10,'JAUNE',0,1,2);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A30','F01','Calculatrice',80,'Bleu',null,6,24);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A31','F08','GOMME',29,'BLANC',400,0.50,1.20);
Insert into CDI_ARTICLE (AR_NUMERO,FO_NUMERO,AR_NOM,AR_POIDS,AR_COULEUR,AR_STOCK,AR_PA,AR_PV) values ('A32','F06','SOURIS',35,'Vert',5,2,5);

Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C01     ','DEFRERE','Marc','FRANCE','PARIS',null,'Particulier');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C02     ','DECERF','Jean','FRANCE','PARIS',null,'Particulier');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C03     ','DEFAWE','Leon','BELGIQUE','LIEGE',null,'Particulier');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C04     ','NOSSENT','Serge','BELGIQUE','BRUXELLES',null,'Particulier');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C05     ','JACOB','Marthe','FRANCE','MARSEILLE','31','Administration');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C06     ','JAMAR','Pierre','BELGIQUE','LIEGE','21','Administration');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C07     ','DECKERS','Willian','FRANCE','LYON','140','Grand compte');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C08     ','DECLERCQ','Lucien','BELGIQUE','BRUXELLES','349','Grand compte');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C09     ','DEFYZ','Maurice','FRANCE','BORDEAUX',null,'Particulier');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C10     ','DEFOOZ','Francis','FRANCE','LILLE',null,'Particulier');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C11     ','RAMJOIE','Victor','FRANCE','NANTES',null,'Particulier');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C12     ','RENARDY','Jean','FRANCE','MARSEILLE','275','Grand compte');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C13     ','MANTEAU','Yvan','FRANCE','CAEN','105','Grand compte');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C14     ','JONAS','Henri','FRANCE','PARIS','190','PME');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C15     ','DELVENNE','Christian','FRANCE','LYON','590','Grand compte');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C16     ','DEFEEZ','Andre','FRANCE','LYON',null,'Particulier');
Insert into CDI_CLIENT (CL_NUMERO,CL_NOM,CL_PRENOM,CL_PAYS,CL_LOCALITE,CL_CA,CL_TYPE) values ('C113    ','MUDA','Robert','FRANCE','IFS',null,'Particulier');


Insert into CDI_COMMANDE (CO_NUMERO,CO_DATE,CL_NUMERO,MA_NUMERO) values ('C9713   ',to_date('04/07/2010','DD/MM/YYYY'),'C07','M10');
Insert into CDI_COMMANDE (CO_NUMERO,CO_DATE,CL_NUMERO,MA_NUMERO) values ('C9701   ',to_date('02/05/2010','DD/MM/YYYY'),'C07','M03');
Insert into CDI_COMMANDE (CO_NUMERO,CO_DATE,CL_NUMERO,MA_NUMERO) values ('C9702   ',to_date('03/05/2010','DD/MM/YYYY'),'C06','M12');
Insert into CDI_COMMANDE (CO_NUMERO,CO_DATE,CL_NUMERO,MA_NUMERO) values ('C9703   ',to_date('03/06/2010','DD/MM/YYYY'),'C13','M01');
Insert into CDI_COMMANDE (CO_NUMERO,CO_DATE,CL_NUMERO,MA_NUMERO) values ('C9704   ',to_date('03/06/2010','DD/MM/YYYY'),'C01','M02');
Insert into CDI_COMMANDE (CO_NUMERO,CO_DATE,CL_NUMERO,MA_NUMERO) values ('C9705   ',to_date('05/06/2010','DD/MM/YYYY'),'C08','M11');
Insert into CDI_COMMANDE (CO_NUMERO,CO_DATE,CL_NUMERO,MA_NUMERO) values ('C9706   ',to_date('08/06/2010','DD/MM/YYYY'),'C05','M04');
Insert into CDI_COMMANDE (CO_NUMERO,CO_DATE,CL_NUMERO,MA_NUMERO) values ('C9707   ',to_date('12/06/2010','DD/MM/YYYY'),'C04','M11');
Insert into CDI_COMMANDE (CO_NUMERO,CO_DATE,CL_NUMERO,MA_NUMERO) values ('C9708   ',to_date('13/06/2010','DD/MM/YYYY'),'C03','M12');
Insert into CDI_COMMANDE (CO_NUMERO,CO_DATE,CL_NUMERO,MA_NUMERO) values ('C9709   ',to_date('13/06/2010','DD/MM/YYYY'),'C10','M11');
Insert into CDI_COMMANDE (CO_NUMERO,CO_DATE,CL_NUMERO,MA_NUMERO) values ('C9710   ',to_date('16/06/2010','DD/MM/YYYY'),'C01','M11');
Insert into CDI_COMMANDE (CO_NUMERO,CO_DATE,CL_NUMERO,MA_NUMERO) values ('C9711   ',to_date('16/06/2010','DD/MM/YYYY'),'C12','M01');
Insert into CDI_COMMANDE (CO_NUMERO,CO_DATE,CL_NUMERO,MA_NUMERO) values ('C9712   ',to_date('18/06/2010','DD/MM/YYYY'),'C01','M11');
Insert into CDI_COMMANDE (CO_NUMERO,CO_DATE,CL_NUMERO,MA_NUMERO) values ('C9714   ',to_date('25/06/2010','DD/MM/YYYY'),'C06','M04');

Insert into CDI_LIVRAISON (LI_NUMERO,MA_NUMERO,CO_NUMERO,CL_NUMERO,DATE_LIV) values ('L9701   ','M03','C9701   ','C07',to_date('17/05/2010','DD/MM/YYYY'));
Insert into CDI_LIVRAISON (LI_NUMERO,MA_NUMERO,CO_NUMERO,CL_NUMERO,DATE_LIV) values ('L9702   ','M12','C9702   ','C06',to_date('13/05/2010','DD/MM/YYYY'));
Insert into CDI_LIVRAISON (LI_NUMERO,MA_NUMERO,CO_NUMERO,CL_NUMERO,DATE_LIV) values ('L9703   ','M01','C9703   ','C13',to_date('26/06/2010','DD/MM/YYYY'));
Insert into CDI_LIVRAISON (LI_NUMERO,MA_NUMERO,CO_NUMERO,CL_NUMERO,DATE_LIV) values ('L9704   ','M02','C9704   ','C01',to_date('04/06/2010','DD/MM/YYYY'));
Insert into CDI_LIVRAISON (LI_NUMERO,MA_NUMERO,CO_NUMERO,CL_NUMERO,DATE_LIV) values ('L9705   ','M11','C9705   ','C08',to_date('06/06/2010','DD/MM/YYYY'));
Insert into CDI_LIVRAISON (LI_NUMERO,MA_NUMERO,CO_NUMERO,CL_NUMERO,DATE_LIV) values ('L9706   ','M04','C9706   ','C05',to_date('09/06/2010','DD/MM/YYYY'));
Insert into CDI_LIVRAISON (LI_NUMERO,MA_NUMERO,CO_NUMERO,CL_NUMERO,DATE_LIV) values ('L9707   ','M11','C9707   ','C04',to_date('01/07/2010','DD/MM/YYYY'));
Insert into CDI_LIVRAISON (LI_NUMERO,MA_NUMERO,CO_NUMERO,CL_NUMERO,DATE_LIV) values ('L9708   ','M12','C9708   ','C03',to_date('15/06/2010','DD/MM/YYYY'));
Insert into CDI_LIVRAISON (LI_NUMERO,MA_NUMERO,CO_NUMERO,CL_NUMERO,DATE_LIV) values ('L9709   ','M11','C9709   ','C10',to_date('16/06/2010','DD/MM/YYYY'));
Insert into CDI_LIVRAISON (LI_NUMERO,MA_NUMERO,CO_NUMERO,CL_NUMERO,DATE_LIV) values ('L9710   ','M11','C9710   ','C01',to_date('23/06/2010','DD/MM/YYYY'));
Insert into CDI_LIVRAISON (LI_NUMERO,MA_NUMERO,CO_NUMERO,CL_NUMERO,DATE_LIV) values ('L9711   ','M01','C9711   ','C12',to_date('24/06/2010','DD/MM/YYYY'));
Insert into CDI_LIVRAISON (LI_NUMERO,MA_NUMERO,CO_NUMERO,CL_NUMERO,DATE_LIV) values ('L9712   ','M11','C9712   ','C01',to_date('18/06/2010','DD/MM/YYYY'));

Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (4,1,28,'C9713   ','A04',to_date('01/09/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (1,1,25,'C9713   ','A03',to_date('01/09/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (10,4,2,'C9713   ','A10',to_date('03/09/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (1,1,28,'C9701   ','A04',to_date('17/05/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (1,1,2,'C9702   ','A10',to_date('13/05/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (2,1,3,'C9702   ','A11',to_date('13/05/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (3,3,3,'C9702   ','A14',to_date('13/05/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (1,1,40,'C9703   ','A02',to_date('26/06/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (2,2,25,'C9703   ','A03',to_date('26/06/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (5,5,5,'C9703   ','A15',to_date('26/06/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (1,1,3,'C9703   ','A14',to_date('26/06/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (1,1,3,'C9703   ','A13',to_date('26/06/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (2,0,40,'C9704   ','A02',null);
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (1,0,3,'C9704   ','A12',null);
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (10,0,3,'C9704   ','A13',null);
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (8,0,5,'C9704   ','A15',null);
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (1,0,28,'C9704   ','A05',null);
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (1,1,28,'C9705   ','A06',to_date('10/06/2010','DD/MM/RR'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (1,1,35,'C9705   ','A08',to_date('10/06/2010','DD/MM/RR'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (1,1,2,'C9706   ','A10',to_date('20/06/2010','DD/MM/RR'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (1,0,28,'C9707   ','A07',null);
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (1,1,10,'C9708   ','A01',to_date('01/07/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (3,3,3,'C9709   ','A12',to_date('30/06/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (3,3,3,'C9709   ','A13',to_date('30/06/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (3,3,3,'C9709   ','A14',to_date('30/06/2010','DD/MM/vRR'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (3,3,5,'C9709   ','A15',to_date('30/06/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (8,8,3,'C9710   ','A12',to_date('10/07/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (9,3,3,'C9710   ','A02',to_date('10/07/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (1,0,39,'C9711   ','A09',null);
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (5,5,5,'C9712   ','A15',to_date('15/07/2010','DD/MM/YYYY'));
Insert into CDI_LIGCDE (LIC_QTCMDEE,LIC_QTLIVREE,LIC_PU,CO_NUMERO,AR_NUMERO,DATE_LIV) values (3,1,25,'C9712   ','A03',to_date('15/07/2010','DD/MM/YYYY'));

Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (4,'L9711   ','A10 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (1,'L9711   ','A03 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (1,'L9711   ','A04 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (1,'L9701   ','A04 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (1,'L9702   ','A10 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (1,'L9702   ','A11 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (3,'L9702   ','A14 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (1,'L9703   ','A02 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (2,'L9703   ','A03 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (5,'L9703   ','A15 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (1,'L9703   ','A14 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (1,'L9703   ','A13 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (0,'L9704   ','A02 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (0,'L9704   ','A12 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (0,'L9704   ','A13 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (0,'L9704   ','A15 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (0,'L9704   ','A05 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (1,'L9705   ','A06 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (1,'L9705   ','A08 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (1,'L9706   ','A10 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (0,'L9707   ','A07 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (1,'L9708   ','A01 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (3,'L9709   ','A12 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (3,'L9709   ','A13 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (3,'L9709   ','A15 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (3,'L9709   ','A14 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (3,'L9710   ','A02 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (8,'L9710   ','A12 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (0,'L9711   ','A09 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (1,'L9712   ','A03 ');
Insert into CDI_LIGLIV (LIL_QTLIVREE,LI_NUMERO,AR_NUMERO) values (5,'L9712   ','A05 ');

Insert into CDI_POIDS (POI_CODE,POI_LIBELLE,POI_MIN,POI_MAX) values (2,'LEGER',101,500);
Insert into CDI_POIDS (POI_CODE,POI_LIBELLE,POI_MIN,POI_MAX) values (1,'PLUME',0,100);
Insert into CDI_POIDS (POI_CODE,POI_LIBELLE,POI_MIN,POI_MAX) values (4,'LOURD',2501,9999);
Insert into CDI_POIDS (POI_CODE,POI_LIBELLE,POI_MIN,POI_MAX) values (3,'MOYEN',501,2500);

Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M01','La livraison existe');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M02','Nouvelle livraison');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M03','La commande existe');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M04','La commande est inconnue');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M05','L''article existe');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M15','La ligne Commande a ete mise en attente');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M06','L''article est inconnu');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M07','L''article n''a pas ete commande');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M08','L''article a ete commande');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M09','Le stock est insuffisant');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M10','Le stock a ete mis a jour');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M11','La ligne LIVRAISON a ete creee');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M12','La ligne  LLIVR a ete creee');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M13','La ligne LCDE  a ete mise a jour');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M14','Commande entierement livree');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M19','Le stock est ?gal ? z?ro');
Insert into CDI_MESSAGE (MES_CODE,MES_TEXTE) values ('M00','Travail ? rendre le');

insert into cdi_poimessage (POM_MESSAGE_124,POM_TOTAL_LU,POM_MESSAGE_3,POM_LOGIN,POM_DATE_JOUR) values ('table cdi_poids vide',0,null,'ERIC',to_date('15/03/2017 12:00:00','dd/mm/yyyy hh24:mi:ss'));
insert into cdi_poimessage (POM_MESSAGE_124,POM_TOTAL_LU,POM_MESSAGE_3,POM_LOGIN,POM_DATE_JOUR) values ('table cdi_poids vide',0,null,'ERIC',to_date('15/03/2017 12:02:05','dd/mm/yyyy hh24:mi:ss'));
insert into cdi_poimessage (POM_MESSAGE_124,POM_TOTAL_LU,POM_MESSAGE_3,POM_LOGIN,POM_DATE_JOUR) values ('table CDI_ARTICLE vide ou aucun traitement realis?',0,null,'ETU1_36',to_date('16/03/2017 12:00:00','dd/mm/yyyy hh24:mi:ss'));
insert into cdi_poimessage (POM_MESSAGE_124,POM_TOTAL_LU,POM_MESSAGE_3,POM_LOGIN,POM_DATE_JOUR) values ('table CDI_ARTICLE vide ou aucun traitement realis?',0,null,'ETU1_25',to_date('17/03/2017 12:00:00','dd/mm/yyyy hh24:mi:ss'));
insert into cdi_poimessage (POM_MESSAGE_124,POM_TOTAL_LU,POM_MESSAGE_3,POM_LOGIN,POM_DATE_JOUR) values ('table CDI_ARTICLE trait?e',3,'partiellement','ERIC',to_date('19/03/2017 12:00:00','dd/mm/yyyy hh24:mi:ss'));
insert into cdi_poimessage (POM_MESSAGE_124,POM_TOTAL_LU,POM_MESSAGE_3,POM_LOGIN,POM_DATE_JOUR) values ('table CDI_ARTICLE trait?e',20,'en totalit?','PATRICE',to_date('19/03/2017 17:00:00','dd/mm/yyyy hh24:mi:ss'));

commit;

-- 4.1 La projection
-- 4.1.1 Afficher tous les clients
select * from cdi_client;
select cl_numero, cl_nom, cl_prenom, cl_pays, cl_localite, cl_ca, cl_type 
from cdi_client;
-- 17 r?ponses

--4.1.2 Afficher les noms pays et localit? des clients;
select cl_prenom,cl_nom, cl_pays, cl_localite from cdi_client;
-- 17 r?ponses

select cl_nom, cl_pays, cl_localite as ma_ville from cdi_client;
-- select cl_nom, cl_pays, cl_localite as "ma ville" from cdi_client; -- ? ?viter

--4.1.3 Rechercher la liste de toutes les localit?s de tous les clients
select cl_localite from cdi_client ;
-- 17 r?ponses

--4.1.4 M?me requ?te mais en supprimant les r?p?titions
select distinct cl_localite from cdi_client;
-- 10 r?ponses
 
 -- 4.1.5  Afficher les articles en limitant l'affichage ? 10 articles.
 select * from cdi_article where rownum <= 10;
 --marche pas obliger de faire des fetch first
 select * from cdi_article fetch first 10 rows only;
 select * from cdi_article fetch first 10 rows only offset 5 rows;
 
 --uniquement postgree 
 select * from cdi_article limit 10;
 select * from cdi_article limit 10 offset 5;
 
 
-- 10 r?ponses
 
--4.2 La restriction (ou s?lection)
--4.2.1 Afficher tous les clients habitant "BORDEAUX"
select * from cdi_client where cl_localite = 'BORDEAUX'; -- TB
select * from cdi_client where cl_localite like 'BORDEAUX%'; -- Correct
select * from cdi_client where trim(cl_localite) like 'BORDEAUX';  -- Bof
select * from cdi_client where cl_localite like 'BORDEAUX'; -- Attention !!!!! !!!! faux 
desc cdi_client;

select * from information_schema.columns where table_name='cdi_client';

-- cl_localite est en varchar2
--1 r?ponse

--4.2.2  Afficher tous les clients habitant dans une ville dont le nom commence par un "L"
select * from cdi_client where cl_localite like 'L%';
-- 6 r?ponses

--4.2.3 Afficher tous les magasins dont le nom du g?rant comprend un "A" en deuxi?me position 
select * from cdi_magasin where ma_nom_gerant like '_A%';

insert into cdi_magasin values ('M08','CAEN','L_ABS','');
-- " " ne marche pas
set escape off;
select * from cdi_magasin where ma_nom_gerant like '%\_A%' escape '\';

set escape \;
insert into cdi_magasin values ('M63','IFS','Robert \& Simone','') ;

select * from cdi_magasin;
rollback;
--8 r?ponses

--4.2.4 Afficher les fournisseurs dont le nom comprend un "N"
select * from cdi_fournisseur where fo_nom like '%N%';
--5 r?ponses

--4.2.5 S?lectionner les articles dont le poids est sup?rieur ? 500
select * from cdi_article where ar_poids > 500;
--5 r?ponses

--4.2.6 S?lectionner les articles dont le poids est inf?rieur ou ?gal ? 500
select * from cdi_article where ar_poids <= 500;
--18 r?ponses

--4.2.7 S?lectionner tous les articles pour lesquels le prix de vente est sup?rieur 
--ou ?gal au double du prix d'achat 
select * from cdi_article where ar_pv >= 2*ar_pa;
-- 11 r?ponses

--4.2.8 S?lectionner les articles de couleur rouge de poids sup?rieur ? 100
select * from cdi_article where upper(ar_couleur) = 'ROUGE' and ar_poids > 100;
--2 r?ponses

--4.2.9 S?lectionner les articles rouges et ceux de poids sup?rieurs ? 100
select * from cdi_article where upper(ar_couleur) = 'ROUGE' or ar_poids > 100;
--8 r?ponses

--4.2.10 On souhaite le contraire (compl?ment) de la requ?te pr?c?dente
select * from cdi_article where upper(ar_couleur) <> 'ROUGE' and ar_poids <= 100;
select * from cdi_article where not (upper(ar_couleur) = 'ROUGE' or ar_poids > 100);
--15 r?ponses

select * from cdi_article
minus--utiliser except
select * from cdi_article where upper(ar_couleur) = 'ROUGE' or ar_poids > 100;

select * from cdi_article
where ar_numero not in
(
  select ar_numero from cdi_article where upper(ar_couleur) = 'ROUGE' or ar_poids > 100
);
--17 r?ponses

--4.2.11 S?lectionner tous les articles dont, soit la couleur est "ROUGE" et le 
--poids sup?rieur ? 100, soit la couleur est "VERT"
select * from cdi_article 
where ( upper(ar_couleur) = 'VERT' ) 
or ( upper(ar_couleur) = 'ROUGE' and ar_poids > 100 ) ;
--5 r?ponses

--4.2.12 Afficher la liste des articles dont le prix d?achat est compris entre 10 et 25 euros
select * from cdi_article where ar_PA between 10 and 25;
select * from cdi_article where ar_PA >=10 and ar_pa <=25;
--6 r?ponses

--4.2.13 Afficher la liste des articles de couleur soit "ROUGE" soit "VERT"
select * from cdi_article where upper(ar_couleur) in ('ROUGE','VERT');
--7 r?ponses

--4.2.14 Afficher les articles dont la couleur n'est pas indiqu?e
select * from cdi_article where ar_couleur is null;
--2 r?ponses

----------------- Attention ----------------------
drop table essai;
create table essai (a int, b int);

insert into essai values (1,1);
insert into essai values (2,'');
insert into essai values (3,null);

select * from essai;
select * from essai where b ='';
select * from essai where b is null;
----------------------------------------------

--4.2.15 Trier les articles selon l'ordre croissant de leur poids
select * from cdi_article order by ar_poids;
--25 r?ponses

--3.2.16 Trier les articles de poids inf?rieur ou ?gal ? 100 selon l'ordre 
--croissant de leur poids et ? poids ?gal par prix d'achat d?croissant
select * from cdi_article where ar_poids <= 100 order by ar_poids,ar_pa desc;
--17 r?ponses

--4.2.17 Afficher le num?ro et le nom des clients, ainsi que le montant de leur 
--chiffre d'affaires, si celui-ci d?passe 200
select cl_numero,cl_nom,cl_ca from cdi_client where cl_ca > 200;
-- 3 r?ponses

select cl_numero,cl_nom,'trop pas assez' cl_ca  from cdi_client where cl_ca <= 200
union
select cl_numero,cl_nom,to_char(cl_ca) from cdi_client where cl_ca > 200;
--8 r?ponses

select cl_numero,cl_nom,
CASE 
WHEN cl_ca > 200  THEN to_char(cl_ca)
WHEN cl_ca <= 200  THEN  'TROP PAS ASSEZ'
END as cl_ca
from cdi_client where cl_ca is not null;
--8 r?ponses

--4.3 Fonctions et expressions

--4.3.1 Afficher la marge b?n?ficiaire sur les produits dont le prix d'achat est 
--sup?rieur ? 10, par ordre de celle-ci 
select ar_numero,ar_pv-ar_pa as marge_Beneficaire from cdi_article 
where ar_pa > 10 order by marge_Beneficaire;
/*
select ar_numero,ar_pv-ar_pa as "marge b?n?ficaire" from cdi_article 
where ar_pa > 10 order by 2;*/
--8 r?ponses

--4.3.2 Pour tous les clients habitant ? "PARIS", afficher le nom complet avec le nom, 
-- le pr?nom et la nationalit? (concat?nation)
select cl_nom||' '||cl_prenom||' '||cl_pays as infos_Client from cdi_client 
where upper(cl_localite) = 'PARIS';
--3 r?ponses

-- requ?tes sur les groupes
select ar_couleur from cdi_article;

select count(*) as nb from cdi_article;

select ar_couleur, count(*) from cdi_article;

select ar_couleur, count(ar_couleur) as nb from cdi_article 
group by ar_couleur;

select ar_couleur,ar_poids, count(ar_couleur) as nb from cdi_article 
group by ar_couleur,ar_poids;

select ar_couleur, count(ar_couleur) as nb
from cdi_article 
group by ar_couleur
having count(ar_couleur) = 9;

select max(count(*)) from cdi_article group by ar_couleur;
__max count ne marche pas donc on fait une sous requete 

select ar_couleur, count(ar_couleur) as nb
from cdi_article 
group by ar_couleur
having count(ar_couleur) = 
(select max(count(*)) from cdi_article group by ar_couleur);

create or replace view nbCouleurs as
select count(*) as nb from cdi_article ;

select ar_couleur,  nb
from cdi_article , nbCouleurs
where nb > 1;

--4.3.3 Calculer le d?lai moyen entre la commande et la date de livraison souhait?e, 
--ainsi que le plus grand d?lai 
select avg(date_liv-co_date) as moyen,max(date_liv-co_date) as maxi 
from cdi_livraison,cdi_commande 
where cdi_livraison.co_numero= cdi_commande.co_numero;

select avg(date_liv-co_date) as moyen,max(date_liv-co_date) as maxi 
from cdi_livraison li 
join cdi_commande co on co.co_numero=li.co_numero;

select avg(date_liv-co_date) as moyen,max(date_liv-co_date) as maxi 
from cdi_livraison
join cdi_commande using(co_numero);
-- 7,5	23

-- 4.3.4 Calculer le prix moyen (vente et achat) des articles (arrondir ? trois chiffres apr?s la virgule)
select round(avg(ar_pa),3) as pa,round(avg(ar_pv),3) pv from cdi_article;
 -- 8.34  12,808
--le 00 et to_char remplac ele round que postgre ne prend pas 
select to_char(avg(ar_pa),'99.000') as pa,round(avg(ar_pv),3) pv from cdi_article;

 --4.3.5  Afficher le prix d'achat de l'article le plus cher du stock  
 -- (Option?: afficher aussi le N? d'article)
select max(ar_pa) as maxi_ar_pa from cdi_article
where COALESCE(ar_stock,0) > 0 ;
-- INCOMPLET

select ar_numero, max(ar_pa) as maxi_ar_pa from cdi_article 
where nvl(ar_stock,0) > 0; -- FAUX
-- fonctionne presque avec mysql

select ar_numero, max(ar_pa) as maxi_ar_pa from cdi_article 
where nvl(ar_stock,0) > 0
group by ar_numero;  -- FAUX

-- solution 1
select ar_numero,ar_pa as maxi_ar_pa from cdi_article 
where ar_pa >= all
  (select ar_pa from cdi_article where nvl(ar_stock,0) > 0);

-- solution 2
select ar_numero, ar_pa from cdi_article where ar_pa = 
( select max(ar_pa) from cdi_article where  nvl(ar_stock,0) > 0 );
--A09 30

--4.3.6 Calculer le poids moyen, la marge maximum (la plus grande diff?rence entre 
-- prix de vente et prix d'achat), la diff?rence entre le prix de vente maximum 
--et le prix d'achat maximum, pour les articles dont la couleur n'est pas d?finie
select round(avg(ar_poids),3)  as poids_moyen, 
max(ar_pv-ar_pa) as grande_difference_de_prix, 
max(ar_pv)-max(ar_pa) as difference_max_et_min, max(ar_pa) as grand_pa 
from cdi_article where ar_couleur is null;
-- poids moyen            grande difference de prix difference max et min  grand pa               
------------------------ ---------------------- ---------------------- ---------------------- 
                      1230                9	                          9	        30   
--4.4  Requ?tes sur les groupes
--4.4.1 Compter le nombre de couleurs diff?rentes existant
-- aide
select  count(upper(ar_couleur)) as nb from cdi_article 
where ar_couleur is not null
group by upper(ar_couleur);

-- sol 1
select  count(count(ar_couleur)) as nb from cdi_article 
where ar_couleur is not null
group by upper(ar_couleur);

-- sol 2
select count(distinct upper(ar_couleur)) as nb from cdi_article ;
--6

--4.4.2 Calculer le prix de vente moyen de chaque couleur d'articles
select upper(ar_couleur) couleur, round(avg(ar_pv),2) as pv_moyen
from cdi_article 
--where ar_couleur is not null
group by upper(ar_couleur)
order by couleur;

select upper(ar_couleur) couleur, to_char(avg(ar_pv),'00.00') as pv_moyen
from cdi_article 
--where ar_couleur is not null
group by upper(ar_couleur)
order by couleur;
--6 ou 7 r?ponses

--4.4.3 Rechercher la couleur des articles dont le prix de vente moyen
-- des articles de la couleur est sup?rieur ? 10
select upper(ar_couleur) ar_couleur,round(avg(ar_pv),2) moy_pv 
from cdi_article  
where ar_couleur is not null
group by upper(ar_couleur) 
having avg(ar_pv)>10;
--4 r?ponses

-- 4.4.4 Rechercher les magasins (ma_numero), qui, pendant la p?riode 
--du 01/01/2007 au 01/01/2011 ont r?alis? plus de 1 commande.
-- Afficher ?galement le nombre de comamndes.
select ma_numero,count(*) as nb 
from cdi_commande
where co_date 
between to_date('01/01/2007','dd/mm/yyyy') 
and to_date('01/01/2011','dd/mm/yyyy')
group by ma_numero having count(*) > 1;
--4 r?ponses

-- 4.4.5 Afficher le nombre d'articles par couleur ainsi que 
-- le nombre d'article total
select count(*) as total from cdi_article;

select upper(ar_couleur) as couleur, count(*) as nbparCouleur
from cdi_article
group by upper(ar_couleur);

-- avec vues
create or replace view vt_total_articles as 
select count(*) as total from cdi_article;

create or replace view vt_nb_par_coureur as
select upper(ar_couleur) as couleur, count(*) as nbparCouleur
from cdi_article
group by upper(ar_couleur);

-- solution 1
select * from vt_nb_par_coureur, vt_total_articles;

-- solution 2
select upper(ar_couleur) as couleur, count(*) as nbparCouleur, total
from cdi_article, vt_total_articles
group by upper(ar_couleur),total;

-- solution 3
select upper(ar_couleur) as couleur, count(*) as nbparCouleur, total 
from cdi_article, (select count(*) as total from cdi_article)
group by upper(ar_couleur),total;

-- solution 4
select upper(ar_couleur) as couleur , count(*) as nbparCouleur, 
(select count(*) from cdi_article) as total
from cdi_article
group by upper(ar_couleur);

-- solution 5
select distinct upper(ar_couleur) as couleur, 
count(*) over(partition by upper(ar_couleur) ) as nbparCouleur ,
count(*) over() as total
from  cdi_article ;

-- 4.4.6 M?me question mais avec le total en bas.
-- solution 1
select upper(ar_couleur) as couleur , 
count(*) as nbparCouleur
from cdi_article
group by upper(ar_couleur)
union
select ' TOTAL',count(*) from cdi_article
order by 1 desc;

-- solution 2
select upper(ar_couleur) as couleur,  
count(*) as nbparCouleur
from cdi_article
where ar_couleur is not null
group by ROLLUP (upper(ar_couleur));

-- solution 3
select nvl(upper(ar_couleur),'TOTAL') as couleur,  
count(*) as nbparCouleur
from cdi_article
where ar_couleur is not null
group by ROLLUP (upper(ar_couleur));

--4.5  La jointure et les sous-requ?tes
--4.5.1 S?lectionner les articles de couleur "ROUGE" et afficher 
-- le num?ro, le poids et le nom du fournisseur
select fo.fo_numero, ar_numero,ar_poids,fo_nom 
from cdi_article ar, cdi_fournisseur fo
where ar.fo_numero = fo.fo_numero
and upper(ar_couleur) = 'ROUGE';

select fo.fo_numero, ar_numero,ar_poids,fo_nom 
from cdi_article ar
join cdi_fournisseur fo on ar.fo_numero = fo.fo_numero
and upper(ar_couleur) = 'ROUGE';

select fo_numero, ar_numero,ar_poids,fo_nom
from cdi_article ar
join cdi_fournisseur  using(fo_numero)
where upper(ar_couleur) = 'ROUGE';
--4 r?ponses

--4.5.2 Afficher les clients qui ont command?
select distinct cl.* from  cdi_client cl
join cdi_commande co on cl.cl_numero = co.cl_numero;

select distinct cdi_client.* from  cdi_client
join cdi_commande  on cdi_client.cl_numero = cdi_commande.cl_numero;

select * from  cdi_client where cl_numero in
( select cl_numero from cdi_commande  );

select * from  cdi_client cl where exists 
( select 0 from cdi_commande  co where co.cl_numero = cl.cl_numero);

--------- FAUX ------------------------
select distinct cl.* from cdi_client cl
join cdi_commande co using(cl_numero);
---------------------------------------
--10 r?ponses

--4.5.3 Afficher les articles command?s par les clients qui habitent "LIEGE"
select ar_numero, fo_numero, poi_code, ar_nom, ar_couleur, ar_poids, ar_pv, ar_pa 
from cdi_client 
join cdi_commande using(cl_numero)
join cdi_ligcde using(co_numero)
join cdi_article using(ar_numero)
where upper(cl_localite) = 'LIEGE';

select cdi_article.*
from cdi_client 
join cdi_commande on cdi_commande.cl_numero = cdi_client.cl_numero
join cdi_ligcde on cdi_ligcde.co_numero = cdi_commande.co_numero
join cdi_article on cdi_article.ar_numero = cdi_ligcde.ar_numero
where upper(cl_localite) = 'LIEGE';
--4 r?ponses

-- 4.5.4 Afficher les noms de tous les clients et leurs num?ros de commandes pour ceux qui ont command?.
-- rappel tous => left
select cl_nom,co_numero from cdi_client left join cdi_commande using(cl_numero);

select cli.cl_nom,com.co_numero from cdi_client cli, cdi_commande com
where cli.cl_numero = com.cl_numero(+); -- ancienne ?criture SQL1 ? ?viter

select cl_nom,nvl(co_numero,'pas command?') as co_numero from cdi_client 
left join cdi_commande using(cl_numero);
--21 r?ponses

--4.5.5 Afficher la liste de tous les articles dont le prix d'achat est
-- sup?rieur au prix d'achat de l'article "A08"
-- article est cit? 2 fois donc 2 fois dans la requ?te
select * from cdi_article where ar_pa > 
(
  select ar_pa from cdi_article where ar_numero = 'A08'
); 

select ar1.* from cdi_article ar1, cdi_article ar2
where ar1.ar_pa > ar2.ar_pa and ar2.ar_numero = 'A08';

select ar1.* from cdi_article ar1 
join cdi_article ar2 on ar1.ar_pa > ar2.ar_pa
and ar2.ar_numero = 'A08';
--1 r?ponse

-- 4.5.6  Afficher les commandes non pr?vues en livraison. 
 --Donner 3 versions (sous-requ?te, requ?te ensembliste, requ?te synchronis?e). 
 --Utiliser Execute Explain Plan pour mesurer la performance. 
 
--  n?gation => minus ou not in ou du m?me genre
select * from cdi_commande
where co_numero not in
(
  select co_numero from cdi_livraison
);

select * from cdi_commande
minus
select co.* from cdi_commande co
join cdi_livraison li on li.co_numero = co.co_numero;

select co.* from cdi_commande co where not exists
( 
  select 0 from cdi_livraison li where li.co_numero = co.co_numero
);

select co.* from cdi_commande co
left join cdi_livraison li on li.co_numero = co.co_numero
where li_numero is null;
--2 r?ponses

--4.5.7 Afficher les articles qui n'ont pas ?t? command?s
select * from cdi_article where ar_numero not in
(
  select distinct ar_numero from cdi_ligcde
);

select * from cdi_article art1 where not exists
(
  select 1 from cdi_ligcde lig where lig.ar_numero = art1.ar_numero
);

select * from cdi_article
minus
select ar.* from cdi_article ar
join cdi_ligcde lig on ar.ar_numero = lig.ar_numero;

select ar.* from cdi_article ar
left join cdi_ligcde li on li.ar_numero = ar.ar_numero
where li.ar_numero is null;
--10 r?ponses

--4.5.8 Rechercher tous les articles dont le poids est inf?rieur 
-- au poids de l'article "A02"	
-- on voit 2 fois article dans la question => 2 fois dans la requ?te

select ar1.* from cdi_article ar1, cdi_article ar2
where ar2.ar_numero = 'A02'
and ar1.ar_poids < ar2.ar_poids;

select * from cdi_article where ar_poids <
(
  select ar_poids from cdi_article where ar_numero = 'A02'
);
--15 r?ponses

--4.5.9 Rechercher les articles de m?me couleur que l'article "A10", et dont le 
--poids est sup?rieur ou ?gal au poids moyen de tous les articles
-- on voit 3 fois articles => ...
select * from cdi_article
where upper(ar_couleur) in 
(
  select upper(ar_couleur) from cdi_article where ar_numero='A10' 
)
and ar_poids >=
(  
  select avg(ar_poids) from cdi_article
);
--1 r?ponse

--4.5.10 Donner la liste des fournisseurs qui proposent au moins 
-- un article de couleur "ROUGE"
-- basique 1
select * from cdi_fournisseur where FO_NUMERO in
(
  select fo_numero from cdi_article where upper(ar_couleur) = 'ROUGE'
);
-- basique 2
select distinct fo.*  from cdi_fournisseur fo
join cdi_article ar on ar.fo_numero=fo.fo_numero
and upper(ar_couleur) = 'ROUGE';
--3 r?ponses

-- comment ferait-on avec la clause "?au moins deux articles noirs?"??
-- plus g?n?rale
select fo_numero,fo_nom  from cdi_fournisseur
join cdi_article using(fo_numero)
where upper(ar_couleur) = 'ROUGE'
group by (fo_numero,fo_nom)
having count(*) >= 1;

--4.5.11  Donner le nom des g?rants des magasins qui ont livr? 
-- au moins un article "A02"
select distinct ma_nom_gerant from cdi_magasin ma
join cdi_livraison li on ma.ma_numero = li.ma_numero
join cdi_ligliv ll on ll.li_numero = li.li_numero
where ll.ar_numero = 'A02';

select distinct ma_nom_gerant from cdi_magasin where ma_numero in
(
  select ma_numero from cdi_commande where co_numero in
  (
    select co_numero from cdi_ligcde where ar_numero = 'A02'
  )
);
--3 r?ponses

--4.5.12 Donner la liste des articles dont le prix de vente est sup?rieur au prix 
--de vente de l'article de couleur blanche le moins cher 
-- ( il est ?ventuellement possible d'utiliser l'op?rateur "ANY")
select * from cdi_article where ar_pv > any
(
  select ar_pv from cdi_article where upper(ar_couleur)='BLANC'
); ------------------------------ FAUX plus grand que n'importe lequel
--24 r?ponses

select * from cdi_article
where ar_pv >= all
(
  select ar_pv from cdi_article where upper(ar_couleur)='BLANC'
); ------------------------------plus grand que tous =  FAUX

-- grave mieux
select * from cdi_article where ar_pv >
(
  select min(ar_pv) from cdi_article where upper(ar_couleur)='BLANC'
);

--4.5.13 Projeter les clients ayant des commandes et des livraisons en utilisant
-- 3 m?thodes?: jointure, sous-requ?tes, sous-requ?tes synchronis?es
select distinct cl.cl_prenom, cl.cl_nom from cdi_client cl
join cdi_commande using(cl_numero)
join cdi_livraison using(cl_numero,co_numero,ma_numero);

select cl_prenom, cl_nom from cdi_client 
where cl_numero in
(
  select cl_numero from cdi_commande where (cl_numero,co_numero,ma_numero) in
  (
    select cl_numero,co_numero,ma_numero from cdi_livraison
  )
);

select cl_prenom, cl_nom from cdi_client cl
where cl_numero in
(
  select cl_numero from cdi_commande where (co_numero,ma_numero) in
  (
    select co_numero,ma_numero from cdi_livraison
    where cl.cl_numero = cl_numero
  )
);

--4.6 Les op?rateurs ensemblistes
--4.6.1 Afficher par ordre croissant sur le num?ro les articles "ROUGE" et ceux 
--vendus dans un magasin de "PARIS" (les valeurs "ROUGE" et "PARIS ..." seront affich?s
--dans une colonne "couleur ville")
select ar_numero,ar_couleur "couleur ville" from cdi_article
where upper(ar_couleur) = 'ROUGE'
union 
select ar.ar_numero, ma.ma_localite "couleur ville" from cdi_article ar
join cdi_ligcde lic on lic.ar_numero = ar.ar_numero
join cdi_commande co on co.co_numero = lic.co_numero
join cdi_magasin ma on ma.ma_numero = co.ma_numero
where upper(ma.ma_localite) like 'PARIS%'
order by ar_numero ;
--15 r?ponses

--4.6.2 Afficher les articles "ROUGE" vendus dans un magasin de "PARIS"
select * from cdi_article ar where exists
(
  (
    select co_numero from cdi_article 
    join cdi_ligcde lic using(ar_numero)
    where upper(ar_couleur) = 'ROUGE'
    and ar.ar_numero = ar_numero
  )
  intersect
  (
    select co_numero from cdi_commande
    join cdi_magasin ma using(ma_numero)
    where ma.ma_localite like 'PARIS%'
  )
);
--1 r?ponse

--4.6.3 Afficher les articles "ROUGE" sauf ceux vendus dans un magasin de "PARIS?"
select distinct * from cdi_article 
where upper(ar_couleur) = 'ROUGE'
minus
(
  select distinct ar.* from cdi_article ar
  join cdi_ligcde lic on lic.ar_numero = ar.ar_numero
  join cdi_commande co on co.co_numero = lic.co_numero
  join cdi_magasin ma on ma.ma_numero = co.ma_numero
  where ma.ma_localite like 'PARIS%'
);
--3 r?ponses

--4.7  Mise ? jour de donn?es
-- (Ne pas faire de commit de fa?on ? ne pas modifier durablement la base)
-- 4.7.1 ins?rer un article en remplissant toutes les colonnes
select * from cdi_article;
desc cdi_article;

insert into cdi_article values ('A103','F98',null,'Taille-Crayon',1600,'Or',30,250,720); -- pas bien

insert into cdi_article (ar_numero,fo_numero,ar_nom,ar_poids,ar_couleur,ar_stock,ar_pa,ar_pv,poi_code)  -- bien
values ('A104','F98','Taille-Crayon',1600,'Or',30,250,720,null);

-- 4.7.2 ins?rer un article en ne remplissant que ar_numero, fo_numero, ar_nom
insert into cdi_article (ar_numero,fo_numero,ar_nom) values ('A105','F05','Taille-Crayon');

-- 4.7.3 ins?rer un article du fournisseur 'RAMONAGE BDD'
insert into cdi_article (ar_numero,fo_numero,ar_nom,ar_poids) 
values 
(
  'A106',
  'F06',
  'Taille-Crayon',
  50
); -- FAUX FAUX FAUX FAUX FAUX FAUX FAUX FAUX???
-- pas F06
-- ar_numero doit ?tre calcul?

insert into cdi_article (ar_numero,fo_numero,ar_nom,ar_poids) 
values 
(
  'A106',
  (select fo_numero from cdi_fournisseur where upper(trim(fo_nom)) = 'RAMONAGE BDD'),
  'Taille-Crayon',
  50
); -- PRESQUE BON MAIS QUAND MEME FAUX

-- Comment calculer A105 qui est un texte ?
-- Pour calculer ar_numero, il faut 
-- retirer le A
-- transformer le reste en nombre
-- faire un max + 1
-- transformer en texte (pas obligatoire)
-- ajouter le A

select ar_numero from cdi_article;

select substr(ar_numero,2) from cdi_article;
select to_number(substr(ar_numero,2)) from cdi_article;
select max(to_number(substr(ar_numero,2))) from cdi_article;
select max(to_number(substr(ar_numero,2)))+1 from cdi_article;
select 'A'||(max(to_number(substr(ar_numero,2)))+1) from cdi_article;

insert into cdi_article (ar_numero,fo_numero,ar_nom,ar_poids) 
values 
(
  (select 'A'||(max(to_number(substr(ar_numero,2)))+1) from cdi_article),
  (select fo_numero from cdi_fournisseur where upper(trim(fo_nom)) = 'RAMONAGE BDD'),
  'Taille-Crayon2',
  50
);

-- 4.7.4  Supprimer les articles rouges
delete from cdi_article where upper(ar_couleur)='ROUGE';
rollback;

-- 4.7.5  Supprimer les articles du fournisseur "?Ramonage BDD?"
delete from cdi_article join cdi_fournisseur using (fo_numero) where fo_nom = 'RAMONAGE BDD'; -- FAUX
delete from (select * from cdi_article join cdi_fournisseur using (fo_numero))
where fo_nom = 'RAMONAGE BDD'; -- PARFOIS BON

delete from cdi_article where fo_numero=
(
  select fo_numero from cdi_fournisseur where upper(trim(fo_nom)) = 'RAMONAGE BDD'
);
rollback;

-- 4.7.6 Mettre ? jour la table cdi_ligcde de fa?on ? ce
-- que lic_pu des articles soit ?gale ? ar_pv-10%

-- ne fonctionnent pas ---------------------------------------
update cdi_ligcde join cdi_article using(ar_numero) 
set lic_pu=  ar_pv*0.9 ;

update cdi_ligcde
set lic_pu=  ar_pv*0.9
from  cdi_ligcde join cdi_article using(ar_numero) ;
---------------------------------------------------------------
-- PARFOIS BON
update (select * from  cdi_ligcde join cdi_article using(ar_numero) )
set lic_pu=  ar_pv*0.9;

-- BON
update cdi_ligcde lig set lic_pu=
(
  select ar_pv*0.9 from cdi_article where ar_numero = lig.ar_numero
); 
rollback;
select * from cdi_ligcde;

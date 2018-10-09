-- Une vue pour la jointure de produit et fournisseur 

CREATE VIEW produit_fournisseur
AS 
select produit_nom_court as 'ref',produit_nom as 'nom',produit_photo as 'photo',produit_qtite as 'en stock',produit_prix_HT as 'prix HT',
       produit_qtite_ale as 'quantité alerte',produit_sousrub_id as 'sous rubrique',appro_prix_achat as 'prix fournisseur',  fournisseur_nom as 'Fournisseur',
       fournisseur_rue as 'Adresse',fournisseur_cp as 'code postal',fournisseur_ville as 'ville',fournisseur_tel as 'telephone',
       fournisseur_nom_contact as 'contact',fournisseur_prenom_contact as 'prenom'
from produit 
join appro on appro_produit_id = produit_id 
join fournisseur on fournisseur_id = appro_fournisseur_id;


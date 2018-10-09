
-- procedure pou CA pour tout les produits par année
DELIMITER |
CREATE PROCEDURE CA_Annuel(annee char(4))
BEGIN
    SELECT sum(commande_prix_tot) as CA
    FROM `commande`
    WHERE commande_etat = 'soldée' AND YEAR(commande_date_reglem)=annee;
END |
DELIMITER ;

-- CA par fournisseurs 
-- //FIXME en procedure par année

SELECT fournisseur_nom as 'Fournisseur',sum(commande_prix_tot) as CA
FROM `commande`
JOIN `secomposede` ON commande_id=secomposede_commande_id
JOIN `produit`     ON produit_id = secomposede_produit_id
JOIN `appro`       ON produit_id = appro_produit_id
JOIN `fournisseur` ON fournisseur_id = appro_produit_id
WHERE commande_etat = 'soldée'
GROUP BY fournisseur_nom;


-- Produits commandés

SELECT produit_id AS 'REF interne',produit_nom_court AS 'REF fabricant',sum(secomposede_qtite_commande) AS 'qte commandé'
FROM produit 
JOIN `secomposede` ON secomposede_produit_id = produit_id
GROUP BY produit_id
ORDER BY secomposede_qtite_commande;


-- commendes `client`
DELIMITER |
CREATE PROCEDURE client_commande_liste(ref_client INT(11))
BEGIN
    SELECT commande_id AS 'REF commande', commande_date AS 'DATE', commande_client_id AS 'REF Client', round(commande_prix_tot*commande_reduc,2) AS 'Montant'
    FROM `commande` WHERE commande_client_id=ref_client;
END |
DELIMITER ;

-- CA par type de client
SELECT client_type as 'Type CLIENT',sum(commande_prix_tot) as CA
FROM `commande`
JOIN `client` ON commande_client_id=client_id
WHERE commande_etat = 'soldée'
GROUP BY client_type;
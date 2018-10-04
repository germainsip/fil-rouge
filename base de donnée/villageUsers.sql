-- Liste des utilisateurs pour Village green

-- //TODO visiteur
CREATE USER 'visit1@%' IDENTIFIED BY 'visit1';

-- droits visiteur
GRANT SELECT 
ON villagegreen.`Produit`
TO visit1
IDENTTIFIED BY 'visit1';

-- //TODO client

CREATE USER 'client1@%' IDENTIFIED BY 'client1';
-- //TODO gestion
CREATE USER 'gest1@%' IDENTIFIED BY 'gest1';
-- //TODO administrateur
CREATE USER 'admin@%' IDENTIFIED BY 'admin';


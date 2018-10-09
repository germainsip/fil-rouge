/* --------------------------------------
Liste des utilisateurs pour Village green
----------------------------------------- */

USE villagegreen;
/*--------------
--  visiteur ---
----------------*/

CREATE USER 'visit1'@'%' IDENTIFIED BY 'visit1';

/*--------------------------------------
-- droits visiteur (lecture `Produit`)--
----------------------------------------*/

GRANT SELECT 
ON villagegreen.produit
TO visit1
IDENTIFIED BY 'visit1';

/* ----------
--  client --
------------- */

CREATE USER 'client1'@'%' IDENTIFIED BY 'client1';

/* --------------------------------------------------
-- droit client (lecture dans la base) 
et (insertion mise à jour dans commande et client)---
-----------------------------------------------------*/
GRANT SELECT
ON *
TO client1
IDENTIFIED BY 'client1';

GRANT INSERT,UPDATE
ON villagegreen.commande
TO client1
IDENTIFIED BY 'client1';

GRANT INSERT,UPDATE
ON villagegreen.client
TO client1
IDENTIFIED BY 'client1';
/* -----------
--  gestion --
-------------- */

CREATE USER 'gest1'@'%' IDENTIFIED BY 'gest1';

/* -----------------------------------------------------
-- droits gestionnaire (lecture écriture dans la base)--
-------------------------------------------------------- */
GRANT SELECT,INSERT,UPDATE
ON *
TO gest1
IDENTIFIED BY 'gest1';

/* ----------------------
-- administrateur -------
------------------------- */

CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';

/* ----------------------------------------------------------
--  droits admin (tous les droits dans villagegreen)---------
------------------------------------------------------------- */

GRANT ALL PRIVILEGES ON villagegreen.*
TO admin 
IDENTIFIED BY 'admin';

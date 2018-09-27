USE villagegreen;
/* alimenter les tables dans l'ordre suivant:
client,commerciaux, suivipar
rubrique,sousrubrique,produit */

-- TABLE CLIENT --

INSERT INTO client (client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret,client_commerciaux_id)
VALUES ("George","Nolan","CP 214, 1460 Dui Avenue","Moerkerke","81313","01 29 81 29 27","et.ultrices.posuere@pharetranibh.ca","par","399412527-00000",1),
       ("Sandoval","Linda","Appartement 443-4185 Lacinia. Route","Torgnon","12512","03 45 29 89 67","Proin.dolor@sodales.net","par","382581783-00000",2),
       ("Johns","Judah","478-741 Urna. Av.","Baarle-Hertog","68356","01 47 64 91 62","nibh.Phasellus.nulla@veliteu.co.uk","pro","979188216-00001",3),
       ("Sweeney","Calista","CP 938, 319 A Av.","Wismar","65254","03 70 19 20 26","ornare@amet.ca","pro","236741799-00001",4),
       ("Pittman","Bianca","Appartement 680-4357 Eu Impasse","Yumbel","80081","04 32 28 83 80","sit@aliquamenimnec.org","pro","334401775-00005",5),
       ("Myers","Mikayla","9429 Non Route","Lafayette","27251","09 81 66 04 86","urna@malesuadaid.net","pro","605336924-00002",6),
       ("Mcintosh","Desirae","8227 Risus Rue","Jaunpur","84392","08 32 00 38 60","nulla.ante@sed.co.uk","par","880183934-00004",7),
       ("Nicholson","Zeus","3193 Aliquam Ave","Tubeke Tubize","38742","02 90 59 95 10","Sed.eget@lacusUt.net","pro","811978493-00005",8),
       ("Brock","Kaseem","Appartement 615-1490 Integer Av.","Fleurus","85736","02 87 17 50 58","Donec.sollicitudin.adipiscing@vulputaterisusa.com","pro","553039645-00005",9),
       ("Whitfield","Yoshio","577-7165 Cras Route","Geertruidenberg","40939","04 70 87 00 53","vel.mauris.Integer@gravidamauris.net","par","385036793-00003",10);
INSERT INTO client (client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret,client_commerciaux_id)
VALUES ("Maldonado","Barbara","556-6930 Amet, Route","SauveniÂ�re","85217","09 38 68 12 56","facilisis.facilisis@nuncestmollis.edu","pro","708808084-00006",1),
       ("Raymond","Dean","7882 Luctus Rue","Lonquimay","45354","07 97 96 55 59","cursus@odioEtiam.edu","pro","263853525-00008",2),
       ("Mcdonald","Colt","Appartement 911-1540 Augue, Av.","Flint","84769","03 57 86 21 66","quis.accumsan.convallis@nasceturridiculusmus.edu","par","226229953-00006",3),
       ("Woodward","William","CP 394, 7305 Risus. Route","Lunel","68624","05 90 65 53 06","posuere.at@sit.net","par","716191119-00008",4),
       ("Holder","Lareina","Appartement 473-4026 Est, Impasse","Koekelberg","62629","02 39 94 72 66","velit@nonummyac.co.uk","pro","051830867-00001",5),
       ("Gilmore","Len","226-6532 Convallis Avenue","Bhilai","62534","04 47 43 48 14","quis.diam.luctus@lectus.com","par","809769219-00001",6),
       ("Stanley","Merritt","413-5832 Curae; Chemin","Muridke","51840","02 61 19 52 74","Cras@sagittisDuis.org","par","814585865-00003",7),
       ("Sloan","Cain","3831 Eu Route","Portland","29059","05 76 83 78 57","arcu@egestas.net","par","745307504-00001",8),
       ("Davidson","Rana","Appartement 913-1930 Senectus Av.","Camaragibe","38402","07 56 06 71 04","faucibus.Morbi@Quisque.com","par","240996926-00004",9),
       ("Oneill","Nasim","9969 Aliquet Route","Coevorden","40616","06 13 28 09 27","urna.justo@at.co.uk","par","307846188-00000",10);
INSERT INTO client (client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret,client_commerciaux_id)
VALUES ("Kelley","Kelsie","Appartement 760-3173 Ullamcorper. Chemin","Sioux City","87015","04 15 43 21 10","sociis@egestas.com","par","361312200-00005",1),
       ("Faulkner","Megan","Appartement 691-6161 Non Rue","Jacksonville","94276","08 79 89 35 23","ac@erosnectellus.co.uk","pro","030486161-00000",2),
       ("Cruz","Harlan","590-7854 Scelerisque Ave","Prenzlau","63124","02 73 87 89 86","a.felis.ullamcorper@Fuscediam.co.uk","pro","814796157-00000",3),
       ("Espinoza","Anthony","175-1542 Curabitur Avenue","Yellowknife","53786","03 39 83 21 39","ut.quam@ridiculusmusAenean.edu","pro","466494945-00002",4),
       ("Dickson","Rosalyn","7975 Mauris Av.","Darwin","62818","03 45 04 22 82","nunc@enim.org","par","503399586-00000",5),
       ("Simon","Uriah","Appartement 699-5400 Proin Impasse","Saint-LÅ½ger","06939","05 88 17 45 96","volutpat.nunc.sit@in.net","pro","848415915-00000",6),
       ("Galloway","Colin","Appartement 328-4775 Donec Route","Castelvecchio Calvisio","30521","05 97 17 24 17","ante@nequevitae.org","par","037549615-00005",7),
       ("Gomez","Keaton","Appartement 277-2174 Aenean Route","Redwater","67174","09 34 86 65 54","volutpat@erat.net","pro","672184264-00006",8),
       ("Roach","Illiana","CP 502, 9629 Ultricies Av.","Pettineo","51027","07 33 45 03 46","convallis.est@magnamalesuada.net","pro","881935886-00005",9),
       ("Hyde","Simon","CP 476, 8686 Aliquam Rd.","Buckley","07660","08 81 75 69 65","id.enim@odio.edu","pro","581207537-00001",10);

-- TABLE COMMERCIAUX //FIXME régler le problème d'encodage

INSERT INTO commerciaux (commerciaux_nom,commerciaux_prenom,commerciaux_tel,commerciaux_mail)
VALUES ("Dumont","Rosalie","08 05 47 58 81","dictum@NullamnislMaecenas.net"),
       ("Guerin","Amélie","06 23 11 82 05","Cras.eu@diamnunc.edu"),
       ("Denis","Martin","02 67 41 64 98","Quisque.nonummy.ipsum@fringilla.ca"),
       ("Vasseur","Mohamed","08 56 22 35 22","pede.Praesent.eu@faucibusorciluctus.edu"),
       ("Marty","Sara","08 26 94 72 26","arcu.et.pede@non.com"),
       ("Dufour","Lilian","01 57 13 13 19","ac.mattis@malesuada.org"),
       ("Durand","Corentin","07 97 98 17 72","Morbi@dictum.co.uk"),
       ("Clement","Lutécia","07 06 48 04 45","ac@tinciduntcongue.net"),
       ("Philippe","Mehdi","04 04 93 57 07","eget@urnaNunc.com"),
       ("Dupuis","Valentine","06 72 14 95 83","lectus@egetmollislectus.com");

-- TABLE RUBRIQUE 

INSERT INTO rubrique (rubrique_nom,rubrique_desc)
VALUES ('batterie','ça tape et ça cogne'),
       ('cable','de la connection'),
       ('cases','des rangements et des rangements'),
       ('guitares','ça gratte'),
       ('studio','pour ceux qui chantes ou pas...'),
       ('claviers','pia pia piano'),
       ('instruments à vent','ça va souffler'),
       ('sono',"c'est qui le DJ");


--  TABLE SOUSRUBRIQUE

INSERT INTO sous_rubrique (sousrub_nom,sousrub_desc,sousrub_rubrique)
VALUES ('standard','le grand classique','batterie'),
       ('rock',"indémodable",'batterie'),
       ('fusion','ça déchire','batterie'),
       ('jazz','le virtuose','batterie'),
       ('junior','le pitchoune','batterie'),
       ('débutant','il faut bien commencer','batterie'),
       ('compacte','y à plus de place','batterie');


-- //TODO TABLE PRODUIT


-- //TODO TABLE APPRO

-- //TODO TABLE FOURNISSEUR

-- //TODO TABLE CONTIENT

-- //TODO TABLE LIVRAISON

-- //TODO TABLE  COMMANDE

-- //TODO TABLE  SE COMPOSE DE 


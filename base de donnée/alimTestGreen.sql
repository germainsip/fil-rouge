USE villagegreen;
/* alimenter les tables dans l'ordre suivant:
client,commerciaux, suivipar
rubrique,sousrubrique,produit */
-- table client bidule

INSERT INTO client (client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret)
VALUES ("George","Nolan","CP 214, 1460 Dui Avenue","Moerkerke","81313","01 29 81 29 27","et.ultrices.posuere@pharetranibh.ca","par","399412527-00000"),
       ("Sandoval","Linda","Appartement 443-4185 Lacinia. Route","Torgnon","12512","03 45 29 89 67","Proin.dolor@sodales.net","par","382581783-00000"),
       ("Johns","Judah","478-741 Urna. Av.","Baarle-Hertog","68356","01 47 64 91 62","nibh.Phasellus.nulla@veliteu.co.uk","pro","979188216-00001"),
       ("Sweeney","Calista","CP 938, 319 A Av.","Wismar","65254","03 70 19 20 26","ornare@amet.ca","pro","236741799-00001"),
       ("Pittman","Bianca","Appartement 680-4357 Eu Impasse","Yumbel","80081","04 32 28 83 80","sit@aliquamenimnec.org","pro","334401775-00005"),
       ("Myers","Mikayla","9429 Non Route","Lafayette","27251","09 81 66 04 86","urna@malesuadaid.net","pro","605336924-00002"),
       ("Mcintosh","Desirae","8227 Risus Rue","Jaunpur","84392","08 32 00 38 60","nulla.ante@sed.co.uk","par","880183934-00004"),
       ("Nicholson","Zeus","3193 Aliquam Ave","Tubeke Tubize","38742","02 90 59 95 10","Sed.eget@lacusUt.net","pro","811978493-00005"),
       ("Brock","Kaseem","Appartement 615-1490 Integer Av.","Fleurus","85736","02 87 17 50 58","Donec.sollicitudin.adipiscing@vulputaterisusa.com","pro","553039645-00005"),
       ("Whitfield","Yoshio","577-7165 Cras Route","Geertruidenberg","40939","04 70 87 00 53","vel.mauris.Integer@gravidamauris.net","par","385036793-00003");
INSERT INTO client (client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret)
VALUES ("Maldonado","Barbara","556-6930 Amet, Route","SauveniÂ�re","85217","09 38 68 12 56","facilisis.facilisis@nuncestmollis.edu","pro","708808084-00006"),
       ("Raymond","Dean","7882 Luctus Rue","Lonquimay","45354","07 97 96 55 59","cursus@odioEtiam.edu","pro","263853525-00008"),
       ("Mcdonald","Colt","Appartement 911-1540 Augue, Av.","Flint","84769","03 57 86 21 66","quis.accumsan.convallis@nasceturridiculusmus.edu","par","226229953-00006"),
       ("Woodward","William","CP 394, 7305 Risus. Route","Lunel","68624","05 90 65 53 06","posuere.at@sit.net","par","716191119-00008"),
       ("Holder","Lareina","Appartement 473-4026 Est, Impasse","Koekelberg","62629","02 39 94 72 66","velit@nonummyac.co.uk","pro","051830867-00001"),
       ("Gilmore","Len","226-6532 Convallis Avenue","Bhilai","62534","04 47 43 48 14","quis.diam.luctus@lectus.com","par","809769219-00001"),
       ("Stanley","Merritt","413-5832 Curae; Chemin","Muridke","51840","02 61 19 52 74","Cras@sagittisDuis.org","par","814585865-00003"),
       ("Sloan","Cain","3831 Eu Route","Portland","29059","05 76 83 78 57","arcu@egestas.net","par","745307504-00001"),
       ("Davidson","Rana","Appartement 913-1930 Senectus Av.","Camaragibe","38402","07 56 06 71 04","faucibus.Morbi@Quisque.com","par","240996926-00004"),
       ("Oneill","Nasim","9969 Aliquet Route","Coevorden","40616","06 13 28 09 27","urna.justo@at.co.uk","par","307846188-00000");
INSERT INTO client (client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret)
VALUES ("Kelley","Kelsie","Appartement 760-3173 Ullamcorper. Chemin","Sioux City","87015","04 15 43 21 10","sociis@egestas.com","par","361312200-00005"),
       ("Faulkner","Megan","Appartement 691-6161 Non Rue","Jacksonville","94276","08 79 89 35 23","ac@erosnectellus.co.uk","pro","030486161-00000"),
       ("Cruz","Harlan","590-7854 Scelerisque Ave","Prenzlau","63124","02 73 87 89 86","a.felis.ullamcorper@Fuscediam.co.uk","pro","814796157-00000"),
       ("Espinoza","Anthony","175-1542 Curabitur Avenue","Yellowknife","53786","03 39 83 21 39","ut.quam@ridiculusmusAenean.edu","pro","466494945-00002"),
       ("Dickson","Rosalyn","7975 Mauris Av.","Darwin","62818","03 45 04 22 82","nunc@enim.org","par","503399586-00000"),
       ("Simon","Uriah","Appartement 699-5400 Proin Impasse","Saint-LÅ½ger","06939","05 88 17 45 96","volutpat.nunc.sit@in.net","pro","848415915-00000"),
       ("Galloway","Colin","Appartement 328-4775 Donec Route","Castelvecchio Calvisio","30521","05 97 17 24 17","ante@nequevitae.org","par","037549615-00005"),
       ("Gomez","Keaton","Appartement 277-2174 Aenean Route","Redwater","67174","09 34 86 65 54","volutpat@erat.net","pro","672184264-00006"),
       ("Roach","Illiana","CP 502, 9629 Ultricies Av.","Pettineo","51027","07 33 45 03 46","convallis.est@magnamalesuada.net","pro","881935886-00005"),
       ("Hyde","Simon","CP 476, 8686 Aliquam Rd.","Buckley","07660","08 81 75 69 65","id.enim@odio.edu","pro","581207537-00001");
INSERT INTO client (client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret)
VALUES ("Scott","Lynn","Appartement 621-6223 Mauris Route","Flénu","69209","03 35 27 66 53","nonummy.Fusce@nec.ca","pro","102226552-00002"),
       ("Brewer","Jamal","8040 Nisi Ave","Tula","07694","09 47 38 38 38","ligula@consequat.net","pro","306256611-00006"),
       ("Perry","Maite","CP 651, 3799 Ac Av.","Brandenburg","08948","02 14 30 48 75","dui.Suspendisse.ac@risus.net","par","606135887-00002"),
       ("Mooney","Ignatius","805-9827 Lorem, Avenue","San Giovanni in Galdo","81734","05 12 51 56 50","tincidunt.nunc.ac@etmagnaPraesent.net","par","307889642-00004"),
       ("Duffy","Forrest","Appartement 160-3012 Nulla. Avenue","Springfield","42526","04 21 20 18 81","consequat.lectus@non.ca","pro","228903472-00006"),
       ("Phillips","Nadine","CP 907, 9647 Vel, Av.","MarÃ­a Pinto","14494","07 88 90 41 81","ipsum@feugiatnecdiam.edu","par","241745298-00000"),
       ("Oconnor","Theodore","9188 Risus. Avenue","Gadag Betigeri","32873","02 06 16 27 13","et.magnis@facilisis.org","pro","628083800-00001"),
       ("Dodson","Nola","CP 317, 963 Enim Chemin","Annapolis Royal","90883","09 41 89 26 40","mi.enim@porttitorinterdum.org","pro","946599636-00002"),
       ("Morgan","Elizabeth","Appartement 467-7095 Magnis Avenue","Fossato Serralta","48943","03 90 56 77 21","id.libero@anteNuncmauris.net","pro","409538204-00002"),
       ("Lyons","Ursula","921-5882 Faucibus Avenue","Zellik","82187","07 91 02 71 05","dolor.sit@egestasascelerisque.org","pro","734871247-00007");
INSERT INTO client (client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret)
VALUES ("Mercado","Heidi","CP 240, 2960 Nec, Rd.","Birmingham","94431","03 36 35 52 47","vestibulum@laoreetlectusquis.net","pro","699507703-00006"),
       ("Whitaker","Macey","Appartement 879-9356 Ultricies Impasse","Comblain-Fairon","19649","02 85 15 35 06","vitae.dolor@Naminterdumenim.edu","pro","472587153-00009"),
       ("Wood","Sydnee","CP 561, 6635 Donec Chemin","Dereham","23467","08 81 82 65 79","feugiat.Lorem.ipsum@odio.net","par","415495803-00009"), 
       ("Cotton","Cairo","8939 Id, Avenue","Wolverhampton","68201","03 65 92 15 02","turpis.nec@pharetra.org","par","198790990-00008"),
       ("Hays","Jasper","172-8024 Aliquet, Ave","Strausberg","30852","05 47 14 92 98","dui@purusDuiselementum.com","pro","201206026-00001"),
       ("Nash","Russell","4524 Quam. Rd.","Le Grand-Quevilly","65663","06 63 74 72 39","euismod.mauris.eu@felisullamcorperviverra.net","pro","657874368-00001"),
       ("Barker","Jenette","Appartement 425-3726 Sollicitudin Ave","Whitewater Region Township","07860","02 47 24 23 72","diam.dictum.sapien@Nullasempertellus.org","par","057707978-00003"),
       ("Dalton","Francis","162-8522 At, Rue","GÃ¤vle","73042","05 40 90 27 35","Nulla@ametrisusDonec.edu","pro","222936411-00008"),
       ("Kent","Breanna","252 Maecenas Ave","Cantalupo in Sabina","35040","05 77 76 45 66","risus@blandit.co.uk","par","858260235-00008"),
       ("Graves","Baxter","7906 Metus Chemin","l'Ecluse","91341","05 58 36 50 71","enim@dolorFuscemi.org","pro","426802310-00000");
INSERT INTO client (client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret)
VALUES ("Gillespie","Sasha","330-2935 Parturient Impasse","Denderbelle","34352","07 51 92 37 53","Aliquam@ut.net","par","633493333-00007"),
       ("Lindsey","Adria","CP 886, 5734 Cursus Rue","SuruÃ§","15587","03 63 73 32 25","elit.pede@sedhendrerit.edu","pro","783150774-00009"),
       ("Pratt","Octavia","6908 Fames Ave","Merzig","85978","09 62 53 24 17","pede@utsemNulla.ca","par","826602229-00005"),      
       ("Munoz","Jana","CP 529, 3267 Convallis Rd.","Yellowknife","86817","03 69 57 07 06","ut.nulla.Cras@elementumloremut.ca","pro","023786411-00001"),
       ("Lara","Wylie","CP 643, 5948 Elit, Impasse","Castelluccio Valmaggiore","91909","06 52 82 01 05","tortor@diam.com","par","067913830-00005"),
       ("Lawrence","Gabriel","368-6081 Sed Av.","Coldstream","05878","08 00 45 34 47","pellentesque@ligulatortordictum.co.uk","par","721239168-00009"),
       ("Knox","Sybil","CP 893, 917 Ante Route","Bridgeport","93344","02 66 87 27 04","turpis.egestas@mauris.co.uk","par","694154584-00007"),
       ("Powell","Whoopi","6595 Pharetra. Ave","Fortune","48183","07 73 86 11 04","neque.venenatis@eudolor.co.uk","pro","258314160-00007"),
       ("Potts","Erich","CP 934, 1122 Ac Route","ConchalÃ­","09062","03 99 50 41 84","ipsum@dignissim.co.uk","pro","800061897-00008"),
       ("Norton","Uta","Appartement 184-5671 Aenean Rd.","Pichidegua","91122","01 76 78 89 91","sociis@elementumlorem.co.uk","par","367120300-00002");
INSERT INTO client (client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret)
VALUES ("Meyer","Cullen","578-689 Nisi Ave","Campagna","76029","05 80 46 90 60","faucibus.leo.in@nonsollicitudin.edu","pro","730114972-00005"),
       ("Mcfadden","Harlan","2172 Cras Route","Joncret","27677","07 19 74 98 24","Aenean.euismod.mauris@vestibulummassarutrum.com","pro","250583812-00004"),
       ("Barnett","Stacey","2150 Diam Ave","Oswestry","87651","05 19 31 34 19","lacus.Quisque@interdumCurabitur.ca","par","519092753-00002"),
       ("Talley","Madonna","Appartement 390-6303 Interdum Av.","Gosselies","05635","06 31 26 37 23","accumsan.convallis@nislelementum.edu","pro","153633359-00002"),
       ("Page","Callum","Appartement 867-1226 Sit Impasse","Lochristi","72548","03 89 38 60 49","Sed.eu.nibh@enim.ca","pro","956351894-00004"),
       ("Pittman","Illiana","626 Quis Av.","Oyen","83797","02 93 97 51 96","Ut.sagittis@est.net","pro","004032918-00007"),
       ("Langley","Jermaine","Appartement 876-5579 Nulla Ave","La Serena","49889","04 47 32 99 41","arcu@maurisMorbi.net","par","162494967-00001"),
       ("Rowe","Seth","Appartement 619-2204 Posuere Impasse","Amsterdam","94089","09 87 99 25 81","lorem.semper@imperdiet.net","pro","576979744-00009"),
       ("Battle","Kane","698-8213 Adipiscing Impasse","New Sarepta","16030","04 12 76 67 32","elit@auctorMaurisvel.ca","pro","923209274-00003"),
       ("Cleveland","Guy","757-6491 Montes, Av.","Joinville","94702","04 61 03 90 09","arcu.imperdiet.ullamcorper@eu.net","pro","150705655-00002");
INSERT INTO client (client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret)
VALUES ("Holmes","Kadeem","2774 Etiam Rue","ConchalÃ­","39811","02 21 00 02 49","a.auctor@Pellentesqueultricies.com","pro","022295984-00003"),
       ("Brady","Phyllis","Appartement 319-9414 In Route","Salt Lake City","18615","06 74 83 40 17","nisi@Maurisvestibulum.org","par","205579394-00003"),
       ("England","Slade","CP 860, 4802 Nullam Route","Aurora","97789","09 05 64 73 87","condimentum.eget@in.co.uk","par","937696177-00008"),
       ("York","Wing","CP 665, 1515 Ut, Av.","Cles","87045","08 10 16 37 20","nisi@necenimNunc.ca","pro","335202826-00004"),
       ("Soto","Amelia","2988 Aliquam Ave","Campli","83747","09 74 77 57 71","ut.pellentesque@accumsaninterdumlibero.co.uk","pro","810299214-00009"),
       ("Ramirez","Philip","292-6902 Dis Rd.","Corroy-le-Grand","20792","05 32 09 93 07","massa.non@euismodac.org","par","091566810-00007"),
       ("Rasmussen","Maxine","526-5804 Sed Avenue","Wondelgem","71379","05 92 44 67 95","dui.nec@euismodestarcu.co.uk","par","327554952-00009"),
       ("Walls","Aladdin","686-7926 Cras Avenue","Sossano","02384","06 96 75 36 86","varius.ultrices.mauris@etipsumcursus.com","par","235032836-00001"),
       ("Ross","Kane","Appartement 994-2126 Nibh Rue","Bremen","37687","07 94 46 37 54","lectus@luctusCurabituregestas.org","pro","563597582-00003"),
       ("Stephenson","Ira","Appartement 783-2041 Non Avenue","Tilff","71939","08 69 07 24 23","in.hendrerit.consectetuer@magna.org","pro","643679715-00000");
INSERT INTO client (client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret)
VALUES ("Blevins","Ulysses","Appartement 116-2297 A Rue","Saint Louis","35403","05 74 92 33 04","volutpat.Nulla@eleifendnunc.co.uk","pro","966103103-00000"),
       ("Guerrero","Kylan","949-6508 Tellus Rue","Saint-Prime","64194","07 63 55 01 48","egestas@eleifendCras.ca","pro","932448970-00008"),
       ("Curry","Dakota","CP 533, 6188 Neque Ave","La Roche-sur-Yon","12894","06 70 51 66 88","id@Proin.edu","par","589829548-00009"),
       ("Cox","Dennis","597-6532 Sed Route","Parbhani","83060","06 94 56 87 10","dui@ridiculusmus.net","par","417432770-00002"),
       ("Petty","Serina","CP 882, 4882 Integer Rue","Kaneohe","73245","08 27 94 86 97","scelerisque.neque@et.edu","pro","870060787-00005"),
       ("Reynolds","Ulla","CP 157, 9697 Magna Impasse","Castle Douglas","20328","03 08 80 30 26","Suspendisse.aliquet.molestie@erat.com","par","385614094-00006"),
       ("Daniels","Jerry","9324 Nulla. Rd.","San Pancrazio Salentino","73336","05 29 70 41 38","Maecenas@turpisegestas.co.uk","par","303308126-00000"),
       ("Cochran","Lynn","468-4440 Phasellus Rue","Offenburg","77934","01 81 83 54 38","interdum.feugiat.Sed@vestibulumneque.ca","par","541611521-00009"),
       ("Andrews","Cailin","695-5963 Lorem Rd.","Ancaster Town","66274","01 15 05 25 31","et.netus@lectus.org","par","306653379-00009"),
       ("Mcknight","Jescie","970-5234 Mauris Av.","Prince Albert","33734","09 12 92 27 16","nulla.In@idsapien.edu","par","321435158-00001");
INSERT INTO client (client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret)
VALUES ("Hendrix","Audrey","990 Bibendum Rue","Kolkata","47784","03 07 44 52 80","sit@vulputatevelit.edu","par","568316483-00003"),
       ("Rivera","Dieter","6510 Semper Impasse","Chippenham","23624","04 59 15 65 41","est.Mauris.eu@elementumsem.org","pro","914907647-00004"),
       ("Goodwin","Herrod","547 Tellus Impasse","Laarne","87266","08 11 47 26 47","nisi.Aenean@atsem.org","pro","031990567-00005"),
       ("Newman","Owen","608-7186 Ipsum Avenue","Fallais","81272","03 10 66 52 79","tincidunt.neque@mattis.com","pro","510600364-00002"),
       ("Preston","Lester","Appartement 216-4135 Molestie. Rd.","Hattiesburg","02804","06 31 53 31 52","nisi.magna.sed@lobortis.ca","pro","973778772-00002"),
       ("Griffin","Lareina","1501 Dictum Rd.","Arsoli","79049","08 94 58 66 10","nulla.ante.iaculis@nonsapien.com","pro","356427880-00006"),
       ("Warner","Fleur","CP 929, 2826 Erat Ave","Vichte","28939","02 61 96 97 61","posuere@Duissit.co.uk","par","516690690-00008"),
       ("Foster","Clementine","9800 Elementum, Avenue","South Bend","80641","05 32 35 15 78","mus@velvenenatisvel.org","pro","181366543-00005"),
       ("Gates","Urielle","CP 856, 8374 Porttitor Ave","Chambord","72455","04 88 86 98 38","lobortis@turpisegestasFusce.co.uk","pro","364542290-00002"),
       ("Moore","Breanna","433-1169 Nec Chemin","Boulogne-sur-Mer","66038","02 31 70 81 58","pharetra.Quisque@metuseu.co.uk","par","435936562-00006");


-- TABLE COMMERCIAUX

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


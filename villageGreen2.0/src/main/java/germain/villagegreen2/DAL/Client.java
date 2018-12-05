/*
 *  ___ _                    _                   
 * |_ _| |_  __ __ _____ _ _| |__ ___  ___ _ _   
 *  | ||  _| \ V  V / _ \ '_| / /(_-< / _ \ ' \  
 * |___|\__|  \_/\_/\___/_| |_\_\/__/ \___/_||_| 
 *  _ __ _  _   _ __  __ _ __| |_ (_)_ _  ___    
 * | '  \ || | | '  \/ _` / _| ' \| | ' \/ -_)   
 * |_|_|_\_, | |_|_|_\__,_\__|_||_|_|_||_\___|   
 *       |__/                                    
 */
package germain.villagegreen2.DAL;

import javafx.beans.property.SimpleStringProperty;

/**
 * créé le 27 nov. 2018 , 10:52:49
 *
 * @author germain
 */
public class Client {

    private int id;
    private SimpleStringProperty nom;
    private SimpleStringProperty prenom;
    private SimpleStringProperty rue;
    private SimpleStringProperty ville;
    private SimpleStringProperty codepo;
    private SimpleStringProperty telephone;
    private SimpleStringProperty mail;
    private SimpleStringProperty siret;
    private int commercialID;
    private SimpleStringProperty type;

    public Client() {
    }

    
    /**
     * Constructor with paameter
     * @param id
     * @param nom
     * @param prenom
     * @param rue
     * @param ville
     * @param codepo
     * @param telephone
     * @param mail
     * @param siret
     * @param commercialID
     * @param type 
     */
    public Client(int id, String nom, String prenom, String rue, String ville,
            String codepo, String telephone, String mail, String siret,
            int commercialID, String type) {
        this.id = id;
        this.nom = new SimpleStringProperty(nom);
        this.prenom = new SimpleStringProperty(prenom);
        this.rue = new SimpleStringProperty(rue);
        this.ville = new SimpleStringProperty(ville);
        this.codepo = new SimpleStringProperty(codepo);
        this.telephone = new SimpleStringProperty(telephone);
        this.mail = new SimpleStringProperty(mail);
        this.siret = new SimpleStringProperty(siret);
        this.commercialID = commercialID;
        this.type = new SimpleStringProperty(type);
    }
/**
 * Client Id getter
 * @return int id
 */
    public int getId() {
        return id;
    }
/**
 * Client Id setter
 * 
 */
    public void setId(int id) {
        this.id = id;
    }
/**
 * Client First Name getter
 * @return String name
 */
    public String getNom() {
        return nom.get();
    }

    public void setNom(String nom) {
        this.nom = new SimpleStringProperty(nom);
    }
/**
 * Client second name getter
 * @return String second name
 */
    public String getPrenom() {
        return prenom.get();
    }

    public void setPrenom(String prenom) {
        this.prenom = new SimpleStringProperty(prenom);
    }
/**
 * Client Street getter
 * @return String street
 */
    public String getRue() {
        return rue.get();
    }

    public void setRue(String rue) {
        this.rue = new SimpleStringProperty(rue);
    }
/**
 * Client town getter
 * @return String town
 */
    public String getVille() {
        return ville.get();
    }

    public void setVille(String ville) {
        this.ville = new SimpleStringProperty(ville);
    }
/**
 * Client code postal getter
 * @return String code postal
 */
    public String getCodepo() {
        return codepo.get();
    }

    public void setCodepo(String codepo) {
        this.codepo = new SimpleStringProperty(codepo);
    }
/**
 * Client telephone getter
 * @return String telephone
 */
    public String getTelephone() {
        return telephone.get();
    }

    public void setTelephone(String telephone) {
        this.telephone =new SimpleStringProperty(telephone);
    }
/**
 * Client Mail getter
 * @return String mail
 */
    public String getMail() {
        return mail.get();
    }

    public void setMail(String mail) {
        this.mail = new SimpleStringProperty(mail);
    }
/**
 * Client Siret getter
 * @return String siret
 */
    public String getSiret() {
        return siret.get();
    }

    public void setSiret(String siret) {
        this.siret = new SimpleStringProperty(siret);
    }
/**
 * Client commercialID getter
 * @return 
 */
    public int getCommercialID() {
        return commercialID;
    }

    public void setCommercialID(int commercialID) {
        this.commercialID = commercialID;
    }
/**
 * Client type getter
 * @return String type
 */
    public String getType() {
        return type.get();
    }

    public void setType(String type) {
        this.type = new SimpleStringProperty(type);
    }

}

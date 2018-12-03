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

/**
 * créé le 27 nov. 2018 , 10:52:49
 *
 * @author germain
 */
public class Client {

    private int id;
    private String nom;
    private String prenom;
    private String rue;
    private String ville;
    private String codepo;
    private String telephone;
    private String mail;
    private String siret;
    private int commercialID;
    private String type;

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
        this.nom = nom;
        this.prenom = prenom;
        this.rue = rue;
        this.ville = ville;
        this.codepo = codepo;
        this.telephone = telephone;
        this.mail = mail;
        this.siret = siret;
        this.commercialID = commercialID;
        this.type = type;
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
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
/**
 * Client second name getter
 * @return String second name
 */
    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
/**
 * Client Street getter
 * @return String street
 */
    public String getRue() {
        return rue;
    }

    public void setRue(String rue) {
        this.rue = rue;
    }
/**
 * Client town getter
 * @return String town
 */
    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }
/**
 * Client code postal getter
 * @return String code postal
 */
    public String getCodepo() {
        return codepo;
    }

    public void setCodepo(String codepo) {
        this.codepo = codepo;
    }
/**
 * Client telephone getter
 * @return String telephone
 */
    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }
/**
 * Client Mail getter
 * @return String mail
 */
    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
/**
 * Client Siret getter
 * @return String siret
 */
    public String getSiret() {
        return siret;
    }

    public void setSiret(String siret) {
        this.siret = siret;
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
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}

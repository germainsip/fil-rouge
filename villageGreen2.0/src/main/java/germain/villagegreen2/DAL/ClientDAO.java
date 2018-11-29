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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * créé le 27 nov. 2018 , 10:49:06
 *
 * @author germain
 */
public class ClientDAO extends villageCon implements accesVillage<Client> {

    public ClientDAO() throws SQLException {
    }

    @Override
    public void Update(Client Cli) {
        this.createConnection();

        PreparedStatement pstm;
        try {
            pstm = ClientDAO.con.prepareStatement("UPDATE client SET  "
                    + "client_id = ?,"
                    + "client_nom=?,"
                    + "client_prenom=?,"
                    + "client_rue=?,"
                    + "client_ville=?,"
                    + "client_codepo=?,"
                    + "client_telephone=?,"
                    + "client_mail=?,"
                    + "client_type=?,"
                    + "client_siret=?,"
                    + "client_commerciaux_id=? ");
            pstm.setInt(1, Cli.getId());
            pstm.setString(2, Cli.getNom());
            pstm.setString(3, Cli.getPrenom());
            pstm.setString(4, Cli.getRue());
            pstm.setString(5, Cli.getVille());
            pstm.setString(6, Cli.getCodepo());
            pstm.setString(7, Cli.getTelephone());
            pstm.setString(8, Cli.getMail());
            pstm.setString(9, Cli.getSiret());
            pstm.setString(10, Cli.getCommercialID());

            pstm.execute();
            pstm.close();
        } catch (SQLException ex) {
            Logger.getLogger(ClientDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        this.closeConnection();

    }

//    @Override
//    public ResultSet Find(Client Cli) {
//        Resultset res = null;
//        
//        
//        return res;
//    }
    @Override
    public void Insert(Client Cli) {
        this.createConnection();

        PreparedStatement pstm;
        try {
            pstm = this.con.prepareStatement("INSERT INTO client "
                    + "(client_nom,"
                    + "client_prenom,"
                    + "client_rue,"
                    + "client_ville,"
                    + "client_codepo,"
                    + "client_telephone,"
                    + "client_mail,"
                    + "client_type,"
                    + "client_siret,"
                    + "client_commerciaux_id) values (?,?,?,?,?,?,?,?,?,?)");
            pstm.setString(1, Cli.getNom());
            pstm.setString(2, Cli.getPrenom());
            pstm.setString(3, Cli.getRue());
            pstm.setString(4, Cli.getVille());
            pstm.setString(5, Cli.getCodepo());
            pstm.setString(6, Cli.getTelephone());
            pstm.setString(7, Cli.getMail());
            pstm.setString(8, Cli.getType());
            pstm.setString(9, Cli.getSiret());
            pstm.setString(10, Cli.getCommercialID());

            pstm.execute();
            pstm.close();

        } catch (SQLException ex) {
            Logger.getLogger(ClientDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        this.closeConnection();
    }

    @Override
    public void Delete(Client cli) {
        this.createConnection();
        try (PreparedStatement pstm = ClientDAO.con.prepareStatement("DELETE FROM client WHERE client_id=?")) {
            pstm.setInt(1, cli.getId());
            pstm.execute();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        this.closeConnection();

    }

    @Override
    public java.util.List<Client> List() {
        List<Client> listeClient = new ArrayList();

        this.createConnection();
        //ResultSet res;
        try {
            ResultSet res = stm.executeQuery("SELECT * FROM client");
            while (res.next()) {
                int id = res.getInt("client_id");
                String nom = res.getString("client_nom");
                String prenom = res.getString("client_prenom");
                String rue = res.getString("client_rue");
                String ville = res.getString("client_ville");
                String codepo = res.getString("client_codepo");
                String telephone = res.getString("client_telephone");
                String mail = res.getString("client_mail");
                String siret = res.getString("client_siret");
                String commercialID = res.getString("client_commerciaux_id");
                String type = res.getString("client_type");

                Client c = new Client(id, nom, prenom, rue, ville, codepo, telephone, mail, siret, commercialID, type);
                listeClient.add(c);

            }
            stm.close();
        } catch (SQLException ex) {
            Logger.getLogger(ClientDAO.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("c'est dans ClientDAO que ça se passe!!!");
        }

        this.closeConnection();
        return listeClient;
    }

}

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

import static germain.villagegreen2.DAL.villageCon.stm;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * créé le 30 nov. 2018 , 11:51:34
 * @author germain
 */
public class CommercialDAO extends villageCon implements accesVillage<Commercial>{

    public CommercialDAO() throws SQLException {
    }
    
    @Override
    public void Insert(Commercial com) {
         this.createConnection();

        PreparedStatement pstm;
        try {
            pstm = this.con.prepareStatement("INSERT INTO commerciaux "
                    + "(commerciaux_nom,"
                    + "commerciaux_prenom,"
                    + "commerciaux_telephone,"
                    + "commerciaux_mail"
                    + ") VALUES (?,?,?,?)");
            pstm.setString(1, com.getNom());
            pstm.setString(2, com.getPrenom());
            pstm.setString(3, com.getTelephone());
            pstm.setString(4, com.getMail());

            pstm.execute();
            pstm.close();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        this.closeConnection();
    }

    @Override
    public void Update(Commercial com) throws SQLException{
        //TODO update
    }

    @Override
    public void Delete(Commercial com)  {
         this.createConnection();
        try (PreparedStatement pstm = ClientDAO.con.prepareStatement("DELETE FROM commerciaux WHERE commerciaux_id=?")) {
            pstm.setInt(1, com.getId());
            pstm.execute();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        this.closeConnection();
    }

    @Override
    public java.util.List<Commercial> List() {
        List<Commercial> listeCom = new ArrayList();

        this.createConnection();
        //ResultSet res;
        try {
            ResultSet res = stm.executeQuery("SELECT * FROM commerciaux");
            while (res.next()) {
                int id = res.getInt("commerciaux_id");
                String nom = res.getString("commerciaux_nom");
                String prenom = res.getString("commerciaux_prenom");
                String telephone = res.getString("commerciaux_telephone");
                String mail = res.getString("commerciaux_mail");

                Commercial c = new Commercial(id, nom, prenom, telephone, mail);
                listeCom.add(c);

            }
            stm.close();
        } catch (SQLException ex) {
            System.out.println("c'est dans CommercialDAO que ça se passe!!!");
        }

        this.closeConnection();
        return listeCom;
    }

}

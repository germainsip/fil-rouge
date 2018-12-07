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
package germain.villagegreen2.Statistics;

import germain.villagegreen2.DAL.villageCon;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * créé le 7 déc. 2018 , 09:49:48
 *
 * @author germain
 */
public class StatisticDAO extends villageCon {

    public StatisticDAO() throws SQLException {
    }

    public Statistic createStatType() {
        Statistic statType = new Statistic();
        this.createConnection();
        try {
            ResultSet res = stm.executeQuery("SELECT client_type,sum(commande_prix_tot) as CA"
                    + " FROM `commande`"
                    + " JOIN `client` ON commande_client_id=client_id"
                    + " WHERE commande_etat = 'soldée' AND client_type = 'pro';");
            while (res.next()) {
                int statPro = res.getInt("CA");
                statType.setCaPro(statPro);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        try {
            ResultSet res = stm.executeQuery("SELECT client_type ,sum(commande_prix_tot) as CA"
                    + " FROM `commande`"
                    + " JOIN `client` ON commande_client_id=client_id"
                    + " WHERE commande_etat = 'soldée' AND client_type = 'par'");
            while (res.next()) {
                int statPar = res.getInt("CA");
                statType.setCaPar(statPar);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());

        }
        return statType;
    }

}

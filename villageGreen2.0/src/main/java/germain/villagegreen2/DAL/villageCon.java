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

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * créé le 27 nov. 2018 , 10:31:56
 * @author germain
 */
public  class villageCon {
    private static final String URL_VILLAGE = "jdbc:mysql://localhost:3306/villagegreen";
    private static final String USR_VILLAGE = "root";
    private static final String PWD_VILLAGE = "Grm1";
    public  static Connection con = null;
    public static Statement stm = null;
    private final PreparedStatement pstm = null;
    
    public villageCon() throws SQLException {
        createConnection();
        stm = con.createStatement();

    }

   public  void createConnection() {
        try {
            con = DriverManager.getConnection(URL_VILLAGE, USR_VILLAGE, PWD_VILLAGE);

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public boolean closeConnection() {
        boolean flag;
        try {
            con.close();
            flag = true;
        } catch (SQLException e) {
            flag = false;
            System.out.println("con pas fermée");
        }
        return flag;
    }

}

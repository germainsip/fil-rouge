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
package TEST;

import germain.villagegreen2.DAL.Client;
import germain.villagegreen2.DAL.ClientDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.junit.Assert;
import org.junit.Test;

/**
 *
 * @author germain
 */
public class clientDaoTest {

    public clientDaoTest() {

    }

    @Test
    public void TestConnection() {
        System.out.println("=========================================");
        System.out.println("ConnectionTEST");
        ClientDAO cli2;
        try {
            cli2 = new ClientDAO();
            cli2.createConnection();

            ResultSet res = cli2.stm.executeQuery("select * from client");
            cli2.closeConnection();
            Assert.assertNotNull(cli2);
            Assert.assertNotNull(res);
        } catch (SQLException ex) {
            Logger.getLogger(clientDaoTest.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("=========================================");

    }

    @Test
    public void TestCreationList() {
        System.out.println("=========================================");

        System.out.println("CréationTEST");

        boolean test;
        List<Client> listetest = new ArrayList();
        try {
            ClientDAO clidao = new ClientDAO();

            System.out.println("liste crée");
            listetest = clidao.List();
        } catch (SQLException ex) {
            
            System.out.println(ex.getMessage());

        }

        Assert.assertTrue(listetest.size() > 0);
        System.out.println("=========================================");

    }

    @Test
    public void TestInsertion() {
        System.out.println("=========================================");
        System.out.println("InsertionTEST");
        
        Client cliTest = new Client();
        cliTest.setNom("TEST"); //1
        cliTest.setPrenom("test"); //2
        cliTest.setRue("test"); //3
        cliTest.setVille("test"); //4
        cliTest.setCodepo("80000"); //5
        cliTest.setMail("test"); //6
        cliTest.setTelephone("test"); //7
        cliTest.setSiret("test"); //8
        cliTest.setType("pro"); //9
        cliTest.setCommercialID("1"); //10
        System.out.println("objet client créé!");

        try {
            ClientDAO clidaotest = new ClientDAO();
            clidaotest.createConnection();
            clidaotest.Insert(cliTest);
            System.out.println("insertion faite");
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            System.out.println("loupé pour l'insert");
        }
        System.out.println("=========================================");

    }

}

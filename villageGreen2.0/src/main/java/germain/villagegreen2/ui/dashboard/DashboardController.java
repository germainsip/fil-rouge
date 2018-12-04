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
package germain.villagegreen2.ui.dashboard;

import com.jfoenix.controls.JFXButton;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Tab;
import javafx.scene.control.TreeTableColumn;
import javafx.scene.image.ImageView;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import org.kordamp.ikonli.javafx.FontIcon;

/**
 * FXML Controller class
 *
 * @author germain
 */
public class DashboardController implements Initializable {

    @FXML
    private HBox bandeau;
    @FXML
    private ImageView logo;
    @FXML
    private Tab ClientsTab;
    @FXML
    private TreeTableColumn<?, ?> nomCol;
    @FXML
    private TreeTableColumn<?, ?> prenomCol;
    @FXML
    private TreeTableColumn<?, ?> telcol;
    @FXML
    private TreeTableColumn<?, ?> mailCol;
    @FXML
    private TreeTableColumn<?, ?> typeCol;
    @FXML
    private Tab statTab;
    @FXML
    private FontIcon detailButton;
    @FXML
    private JFXButton ajoutButton;
    @FXML
    private JFXButton deletButton;
    @FXML
    private JFXButton closeButton;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }

    @FXML
    private void addHandler(ActionEvent event) {
        loadWindow("/fxml/ClientAdd.fxml","Ajout Client");
        System.out.println("bouton fonctionnel");
    }

    @FXML
    private void closeHandler(ActionEvent event) {
        System.out.println("bouton fonctionnel");

        System.exit(0);
    }

    void loadWindow(String loc, String title) {
        try {
            Parent parent = FXMLLoader.load(getClass().getResource(loc));
            Stage stage = new Stage(StageStyle.DECORATED);
            stage.setTitle(title);
            stage.setScene(new Scene(parent));
            stage.show();
        } catch (IOException ex) {
            Logger.getLogger(DashboardController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

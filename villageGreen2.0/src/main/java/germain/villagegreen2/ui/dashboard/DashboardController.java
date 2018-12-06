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
import com.jfoenix.controls.JFXDialog;
import germain.villagegreen2.DAL.Client;
import germain.villagegreen2.DAL.ClientDAO;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Tab;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.ImageView;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import org.controlsfx.control.table.TableFilter;

/**
 * FXML Controller class
 *
 * @author germain
 */
public class DashboardController implements Initializable {

    //  ObservableList<Client> listObsCli;
    ObservableList<Client> listObsCli = FXCollections.observableArrayList();

    @FXML
    private HBox bandeau;
    @FXML
    private ImageView logo;
    @FXML
    private TableView<Client> tableClient;
    @FXML
    private TableColumn<Client, String> nomCol;
    @FXML
    private TableColumn<Client, String> prenomCol;
    @FXML
    private Tab statTab;
    @FXML
    private JFXButton detailButton;
    @FXML
    private JFXButton ajoutButton;
    @FXML
    private JFXButton deletButton;
    @FXML
    private JFXButton closeButton;
    @FXML
    private HBox bandeau1;
    @FXML
    private Tab ClientsTab;
    @FXML
    private TableColumn<Client, String> telCol;
    @FXML
    private TableColumn<Client, String> typeCol;
    @FXML
    private JFXButton refreshButton;
    @FXML
    private JFXDialog dialog;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {

        chargement();
    }

    public void chargement() {
        listObsCli.clear();
        try {
            ClientDAO cliDAO = new ClientDAO();

            listObsCli.addAll(cliDAO.List());

            nomCol.setCellValueFactory(new PropertyValueFactory<Client, String>("nom"));
            prenomCol.setCellValueFactory(new PropertyValueFactory<Client, String>("prenom"));
            telCol.setCellValueFactory(new PropertyValueFactory<Client, String>("telephone"));
            typeCol.setCellValueFactory(new PropertyValueFactory<Client, String>("type"));

            tableClient.setItems(listObsCli);
            TableFilter filter = new TableFilter(tableClient);

        } catch (Exception e) {

            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Problème de lancement de l'application.");
            alert.setHeaderText("Erreur de connection");
            alert.setContentText(e.getMessage());
            alert.showAndWait();
            System.exit(0);

        }
    }

    @FXML
    private void addHandler(ActionEvent event) {
        loadWindow("/fxml/ClientAdd.fxml", "Ajout Client");
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

    @FXML
    private void refreshHandler(ActionEvent event) {
        
        chargement();
    }

    @FXML
    private void showdetailHandler(ActionEvent event) {
        
    }

    @FXML
    private void deleteHandler(ActionEvent event) {
        //TODO confirmation de suppression avec dialog box
        try {
            ClientDAO cliDAO = new ClientDAO();
            cliDAO.Delete(tableClient.getSelectionModel().getSelectedItem());
            chargement();
        } catch (Exception ex) {
             Alert alert = new Alert(Alert.AlertType.WARNING);
                alert.setContentText("Problème de suppression dans la base");
                alert.showAndWait();
        }

    }
}

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
import com.jfoenix.controls.JFXDialogLayout;
import germain.villagegreen2.DAL.Client;
import germain.villagegreen2.DAL.ClientDAO;
import germain.villagegreen2.Statistics.Statistic;
import germain.villagegreen2.Statistics.StatisticDAO;
import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.chart.PieChart;
import javafx.scene.control.Alert;
import javafx.scene.control.Tab;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.ImageView;
import javafx.scene.layout.HBox;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
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
    private StackPane stackDetail;
    @FXML
    private PieChart pieType;

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
        try {
            //TODO gérer les exceptions
            Statistic statType = new StatisticDAO().createStatType();
            ObservableList<PieChart.Data> Stats
                    = FXCollections.observableArrayList(new PieChart.Data("Professionnelles \n" + statType.getCaPro()+" €", statType.getCaPro()), new PieChart.Data("Particuliers \n" + statType.getCaPar()+" €", statType.getCaPar()));
            pieType.setData(Stats);
            pieType.setLegendVisible(false);
        } catch (SQLException ex) {
            Logger.getLogger(DashboardController.class.getName()).log(Level.SEVERE, null, ex);
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
        JFXDialogLayout content = new JFXDialogLayout();
        Text title = new Text("Fiche Client");
        title.setFont(Font.font("Verdana", 20));
        HBox fiche = new HBox();
        //Première colonne
        VBox col1 = new VBox();
        col1.setSpacing(10);
        Text ligne1C1 = new Text("Nom:");
        col1.getChildren().add(ligne1C1);
        Text ligne2C1 = new Text("Prénom:");
        col1.getChildren().add(ligne2C1);
        Text ligne3C1 = new Text("Mail:");
        col1.getChildren().add(ligne3C1);
        Text ligne4C1 = new Text("Téléphone:");
        col1.getChildren().add(ligne4C1);
        Text ligne5C1 = new Text("Adresse:");
        col1.getChildren().add(ligne5C1);
        Text ligne6C1 = new Text(" ");
        col1.getChildren().add(ligne6C1);

        if (tableClient.getSelectionModel().getSelectedItem().getType().equalsIgnoreCase("pro")) {
            Text ligne7C1 = new Text("Client Professionnel ");
            col1.getChildren().add(ligne7C1);
            Text ligne8C1 = new Text("Siret: ");
            col1.getChildren().add(ligne8C1);
        }
        //Deuxième colonne
        VBox col2 = new VBox();
        col2.setSpacing(10);
        Text ligne1C2 = new Text(tableClient.getSelectionModel().getSelectedItem().getNom());
        col2.getChildren().add(ligne1C2);
        Text ligne2C2 = new Text(tableClient.getSelectionModel().getSelectedItem().getPrenom());
        col2.getChildren().add(ligne2C2);
        Text ligne3C2 = new Text(tableClient.getSelectionModel().getSelectedItem().getMail());
        col2.getChildren().add(ligne3C2);
        Text ligne4C2 = new Text(tableClient.getSelectionModel().getSelectedItem().getTelephone());
        col2.getChildren().add(ligne4C2);
        Text ligne5C2 = new Text(tableClient.getSelectionModel().getSelectedItem().getRue());
        col2.getChildren().add(ligne5C2);
        Text ligne6C2 = new Text(tableClient.getSelectionModel().getSelectedItem().getCodepo() + " " + tableClient.getSelectionModel().getSelectedItem().getVille());
        col2.getChildren().add(ligne6C2);
        if (tableClient.getSelectionModel().getSelectedItem().getType().equalsIgnoreCase("pro")) {
            Text ligne7C2 = new Text(" ");
            col2.getChildren().add(ligne7C2);
            Text ligne8C2 = new Text(tableClient.getSelectionModel().getSelectedItem().getSiret());
            col2.getChildren().add(ligne8C2);
        }
        fiche.setSpacing(10);
        fiche.getChildren().add(col1);
        fiche.getChildren().add(col2);

        content.setHeading(title);
        content.setBody(fiche);
//       
        JFXButton button = new JFXButton("OK");
        button.setButtonType(JFXButton.ButtonType.RAISED);
        final JFXDialog dialog = new JFXDialog(stackDetail, content, JFXDialog.DialogTransition.BOTTOM);

        button.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                dialog.close();
            }
        });
        content.setActions(button);
        dialog.show();
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

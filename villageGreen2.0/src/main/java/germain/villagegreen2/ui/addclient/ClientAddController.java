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
package germain.villagegreen2.ui.addclient;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXCheckBox;
import com.jfoenix.controls.JFXComboBox;
import com.jfoenix.controls.JFXTextField;
import com.jfoenix.validation.RegexValidator;
import germain.villagegreen2.DAL.Client;
import germain.villagegreen2.DAL.ClientDAO;
import germain.villagegreen2.DAL.Commercial;
import germain.villagegreen2.DAL.CommercialDAO;
import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.geometry.Pos;
import javafx.scene.control.Alert;
import javafx.scene.image.ImageView;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;
import javafx.util.Duration;
import org.controlsfx.control.Notifications;

/**
 * FXML Controller class
 *
 * @author germain
 */
public class ClientAddController implements Initializable {

    boolean flagNomField, flagMailField, flagPrenomField, flagRueField, flagVilleField, flagCPField, flagTelField, formFlag = false;

    String type = "par";
    public ClientDAO cliDAO;
    public CommercialDAO com;
    ObservableList<Commercial> liste_obs;
    @FXML
    private HBox bandeau;
    @FXML
    private JFXTextField NomField;
    @FXML
    private JFXTextField PrenomField;
    @FXML
    private JFXTextField RueField;
    @FXML
    private JFXTextField VilleField;
    @FXML
    private JFXTextField CPField;
    @FXML
    private ImageView logo;
    @FXML
    private JFXTextField TelField;
    @FXML
    private JFXTextField MailField;
    @FXML
    private JFXTextField siretField;
    @FXML
    private JFXComboBox<Commercial> CommBox;
    @FXML
    private JFXCheckBox checType;
    @FXML
    private JFXButton AddButton;
    @FXML
    private JFXButton CancelButton;
    @FXML
    private AnchorPane rootPane;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        siretField.setVisible(false);

        try {
            com = new CommercialDAO();
            liste_obs = FXCollections.observableArrayList(com.List());
            CommBox.setItems(liste_obs);

        } catch (SQLException ex) {
            Logger.getLogger(ClientAddController.class.getName()).log(Level.SEVERE, null, ex);
        }
        // def des validateur regex
        RegexValidator validatorNPV = new RegexValidator("Champ non conformes");
        validatorNPV.setRegexPattern("^\\p{IsAlphabetic}+[ -]*\\p{IsAlphabetic}*$");
        RegexValidator validatorCP = new RegexValidator("Code postal non conforme");
        validatorCP.setRegexPattern("^\\d{5}$");
        RegexValidator validatorTel = new RegexValidator("XX XX XX XX XX");
        validatorTel.setRegexPattern("^\\d{2}[ ]{1}\\d{2}[ ]{1}\\d{2}[ ]{1}\\d{2}[ ]{1}\\d{2}");
        RegexValidator validatorMail = new RegexValidator("Adresse mail non valide");
        validatorMail.setRegexPattern("^\\w+[\\w-\\.]*\\@\\w+((-\\w+)|(\\w*))\\.[a-z]{2,3}$");
        RegexValidator validatorRue = new RegexValidator("Numéro et nom de rue");
        validatorRue.setRegexPattern("^\\d+[ ,]{1}[^0-9]+$");
        //affectation des validateurs

        //TODO validateur siret
        NomField.getValidators().add(validatorNPV);
        PrenomField.getValidators().add(validatorNPV);
        VilleField.getValidators().add(validatorNPV);
        CPField.getValidators().add(validatorCP);
        MailField.getValidators().add(validatorMail);
        TelField.getValidators().add(validatorTel);
        RueField.getValidators().add(validatorRue);

        //Activation des validateurs
        //TODO activer tous les validateurs
        NomField.focusedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                if (!newValue) {
                    NomField.validate();
                    if (NomField.validate()) {
                        flagNomField = true;
                    } else {
                        flagNomField = false;
                    }
                }
            }
        });

        PrenomField.focusedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                if (!newValue) {
                    PrenomField.validate();
                    if (PrenomField.validate()) {
                        flagPrenomField = true;
                    } else {
                        flagPrenomField = false;
                    }
                }
            }
        });

        VilleField.focusedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                if (!newValue) {
                    VilleField.validate();
                    if (VilleField.validate()) {
                        flagVilleField = true;
                    } else {
                        flagVilleField = false;
                    }
                }
            }
        });

        CPField.focusedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                if (!newValue) {
                    CPField.validate();
                    if (CPField.validate()) {
                        flagCPField = true;
                    } else {
                        flagCPField = false;
                    }
                }
            }
        });

        MailField.focusedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                if (!newValue) {
                    MailField.validate();
                    if (MailField.validate()) {
                        flagMailField = true;
                    } else {
                        flagMailField = false;
                    }
                }
            }
        });

        TelField.focusedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                if (!newValue) {
                    TelField.validate();
                    if (TelField.validate()) {
                        flagTelField = true;
                    } else {
                        flagTelField = false;
                    }
                }
            }
        });

        RueField.focusedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                if (!newValue) {
                    RueField.validate();
                    if (RueField.validate()) {
                        flagRueField = true;
                    } else {
                        flagRueField = false;
                    }
                }
            }
        });
    }

    @FXML
    private void typeProAction(ActionEvent event) {
        if (checType.isSelected()) {
            siretField.setVisible(true);
            type = "pro";
        } else {
            siretField.setVisible(false);
            siretField.clear();
            type = "par";
        }
    }

    @FXML
    private void AddClientHandelButton(ActionEvent event) {
        formFlag = flagNomField
                & flagPrenomField
                & flagRueField
                & flagCPField
                & flagVilleField
                & flagTelField
                & flagMailField
                & !CommBox.getSelectionModel().isEmpty();

        if (formFlag) {
//            Alert alert = new Alert(Alert.AlertType.WARNING);
//            alert.setContentText("C'est bon ça!!!!");
//            alert.showAndWait();
            Client cli = new Client();
            cli.setNom(NomField.getText());
            cli.setPrenom(PrenomField.getText());
            cli.setRue(RueField.getText());
            cli.setCodepo(CPField.getText());
            cli.setVille(VilleField.getText());
            cli.setTelephone(TelField.getText());
            cli.setMail(MailField.getText());
            cli.setType(type);
            cli.setSiret(siretField.getText());
            cli.setCommercialID(CommBox.getSelectionModel().getSelectedItem().getId());
            System.out.println(cli.getCommercialID());
            try {
                ClientDAO cliIns = new ClientDAO();
                cliIns.Insert(cli);
                //notif utilisateur
                Notifications notif = Notifications.create()
                        .darkStyle()
                        .title("Insertion Client")
                        .text("Le nouveau Client a bien été ajouté.")
                        .graphic(null)
                        .hideAfter(Duration.seconds(5))
                        .position(Pos.CENTER)
                        .onAction(new EventHandler<ActionEvent>() {
                            @Override
                            public void handle(ActionEvent event) {
                                System.out.println("C'est fait!!");
                            }
                        });
                notif.showConfirm();
                ClearFields();
                
            } catch (Exception ex) {
                Alert alert = new Alert(Alert.AlertType.WARNING);
                alert.setContentText("Problème d'insertion dans la base");
                alert.showAndWait();
            }
        } else {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setContentText("Veuillez compléter le formulaire");
            alert.showAndWait();
        }

    }

    @FXML
    private void CancelHandelButton(ActionEvent event) {
        Stage stage = (Stage) rootPane.getScene().getWindow();
        System.out.println(stage);
        stage.close();
    }
    
    private void ClearFields(){
        NomField.clear();
        PrenomField.clear();
        RueField.clear();
        VilleField.clear();
        CPField.clear();
        TelField.clear();
        MailField.clear();
        siretField.clear();
    }

}

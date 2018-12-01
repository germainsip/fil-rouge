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

import com.jfoenix.controls.JFXComboBox;
import com.jfoenix.controls.JFXTextField;
import com.jfoenix.validation.RegexValidator;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.image.ImageView;
import javafx.scene.layout.HBox;

/**
 * FXML Controller class
 *
 * @author germain
 */
public class ClientAddController implements Initializable {

    boolean flagNomField, flagMailField, flagPrenomField, flagRueField, flagVilleField, flagCPField, flagTelField;
    ObservableList<String> listeType = FXCollections.observableArrayList("Professionnel","Particulier");
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
    private JFXComboBox<String> typeBox;
    @FXML
    private JFXTextField siretField;
    @FXML
    private JFXComboBox<?> CommBox;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        siretField.setVisible(false);
        typeBox.setItems(listeType);
        
        // def des validateur regex
        RegexValidator validatorNPV = new RegexValidator("Champ non conformes");
        validatorNPV.setRegexPattern("^\\p{IsAlphabetic}+[ -]*\\p{IsAlphabetic}*$");
        RegexValidator validatorCP = new RegexValidator("Code postal non conforme");
        validatorCP.setRegexPattern("^\\d{5}$");
        RegexValidator validatorMail = new RegexValidator("Adresse mail non valide");
        validatorMail.setRegexPattern("^\\w+[\\w-\\.]*\\@\\w+((-\\w+)|(\\w*))\\.[a-z]{2,3}$");
        //affectation des validateurs
        //TODO affecter tous les validateurs
        NomField.getValidators().add(validatorNPV);
        PrenomField.getValidators().add(validatorNPV);
        VilleField.getValidators().add(validatorNPV);
        CPField.getValidators().add(validatorCP);
        MailField.getValidators().add(validatorMail);

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
    }

}

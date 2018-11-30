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

    boolean flagNomField;
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
    private JFXComboBox<?> typeBox;
    @FXML
    private JFXTextField siretField;
    @FXML
    private JFXComboBox<?> CommBox;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // def des validateur regex
        RegexValidator validatorNPV = new RegexValidator("Champ non conformes");
        validatorNPV.setRegexPattern("^\\p{IsAlphabetic}+[ -]*\\p{IsAlphabetic}*$");
        RegexValidator validatorCP = new RegexValidator("Code postal non conforme");
        validatorCP.setRegexPattern("^\\d{5}$");
        //affectation des validateurs
        NomField.getValidators().add(validatorNPV);
        PrenomField.getValidators().add(validatorNPV);
        VilleField.getValidators().add(validatorNPV);
        CPField.getValidators().add(validatorCP);

        //Activation des validateurs
        NomField.focusedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                if (!newValue) {
                    NomField.validate();
                }
            }
        });
        PrenomField.focusedProperty().addListener(new ChangeListener<Boolean>() {
            @Override
            public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                if (!newValue) {
                    PrenomField.validate();
                    if (PrenomField.validate()) {
                        flagNomField = true;
                    } else {
                        flagNomField = false;
                    }
                }
            }
        });

        VilleField.focusedProperty().addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                        if (!newValue) {
                            VilleField.validate();
                        }
                    }
                });
         CPField.focusedProperty().addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                        if (!newValue) {
                            CPField.validate();
                        }
                    }
                });
    }

}

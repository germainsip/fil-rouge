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

import com.jfoenix.controls.JFXTextField;
import com.jfoenix.validation.RequiredFieldValidator;
import java.net.URL;
import java.util.ResourceBundle;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.layout.HBox;

/**
 * FXML Controller class
 *
 * @author germain
 */
public class ClientAddController implements Initializable {

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
    private JFXTextField CPField1;
    @FXML
    private JFXTextField VilleField1;
    @FXML
    private JFXTextField PrenomField1;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
        String patternNPV = "^\\p{IsAlphabetic}+[ -]*\\p{IsAlphabetic}*$";
                Pattern pNom = Pattern.compile(patternNPV);
                Matcher mNom = pNom.matcher(NomField.getText());
        RequiredFieldValidator validator = new RequiredFieldValidator();

        NomField.getValidators().add(validator);
        validator.setMessage("Rien à insérer!!!");
        PrenomField.getValidators().add(validator);
        validator.setMessage("Rien à insérer!!!");

        //Matcher mNom = pNom.matcher(NomField.getText());
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
                }
            }

        });
    }

}

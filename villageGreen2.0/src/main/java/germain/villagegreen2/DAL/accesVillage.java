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

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author germain
 * @param <T> Object Client or Fournisseur 
 */
public interface accesVillage <T>{
    public void Insert (T obj)throws SQLException;
    
    public void Update(T obj)throws SQLException;
    
    public void Delete(T obj)throws SQLException;
    
    //public ResultSet Find(T obj);
    
    public List <T> List()throws SQLException;
}

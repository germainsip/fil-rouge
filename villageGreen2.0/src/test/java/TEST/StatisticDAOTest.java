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

import germain.villagegreen2.Statistics.Statistic;
import germain.villagegreen2.Statistics.StatisticDAO;
import java.sql.SQLException;
import org.junit.Assert;
import org.junit.Test;

/**
 * créé le 7 déc. 2018 , 10:44:13
 *
 * @author germain
 */
public class StatisticDAOTest {

    public StatisticDAOTest() {
    }

    @Test
    public void TestCreatStat() throws SQLException {
        System.out.println("=======================");
        System.out.println("Stat test");
        StatisticDAO statD = new StatisticDAO();
        Statistic stat;
        stat = statD.createStatType();
        System.out.println("Pro =" + stat.getCaPro());
        System.out.println("Par =" + stat.getCaPar());
        Assert.assertNotNull(stat);

    }
}

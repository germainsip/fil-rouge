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
package germain.villagegreen2.Statistics;

/**
 * créé le 7 déc. 2018 , 09:49:28
 *
 * @author germain
 */
public class Statistic {

    private int caPro;
    private int caPar;

    public Statistic() {

    }

    public Statistic(int caPro, int caPar) {
        this.caPro = caPro;
        this.caPar = caPar;
    }

    public int getCaPro() {
        return caPro;
    }

    public void setCaPro(int caPro) {
        this.caPro = caPro;
    }

    public int getCaPar() {
        return caPar;
    }

    public void setCaPar(int caPar) {
        this.caPar = caPar;
    }
    
    
}

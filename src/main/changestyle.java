package main;

import javax.swing.JOptionPane;
import javax.swing.UIManager;

/**
 *
 * @author Devansh
 */

public class changestyle {
    
    public void chabgelock(){
   try{
       UIManager.setLookAndFeel("com.jtattoo.plaf.aluminium.AluminiumLookAndFeel");
   }catch(Exception e){
     JOptionPane.showMessageDialog(null,e.getMessage(),"Error",2);
   }
}
}
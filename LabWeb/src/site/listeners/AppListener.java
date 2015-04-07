package site.listeners;

import java.util.Properties;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import site.dao.Dao;

/**
 * Application Lifecycle Listener implementation class AppListener
 *
 */
@WebListener
public class AppListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public AppListener() {
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0) {
    	Properties prop = new Properties();
   	 
    	try {
    		//lê o arquivo de propriedades
    		prop.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("config.properties"));
    		
    		//obtem as propriedades do arquivo e carrega no Dao
            Dao.DRIVER =  prop.getProperty("driver");
            Dao.URL =  prop.getProperty("url");
            Dao.USER =  prop.getProperty("user");
    		Dao.PASSWORD =  prop.getProperty("password");
    		
    		//carrega driver no DriverManager
    		Class.forName(Dao.DRIVER);    		
 
    	} catch (Exception ex) {
    		ex.printStackTrace();
        }
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0) {
    }
	
}

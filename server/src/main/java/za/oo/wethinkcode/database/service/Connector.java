package za.oo.wethinkcode.database.service;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {
    private final static String dbUrl = "jdbc:sqlite:codes.db";
    private Connection connection;

    public Connector(){
        connectDB();
    }

    private void setConnection(){
        try {
            System.out.println("establishing sql connection");
            //if(this.connection.isClosed()){
                this.connection = DriverManager.getConnection( dbUrl );
                System.out.println(this.connection.getMetaData());
                System.out.println("Connected to dataBase");
            //}else{
                //System.out.println("Server is live");
            //}
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void closeConnection(){
        try {
            if(this.connection.isValid(1)){
                this.connection.close();
            }else{
                System.out.println("Cant close databse");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void connectDB() {
        
        File dbFile = new File("codes.db");
        if (dbFile.exists()){
            setConnection();
        }else{
            throw new IllegalArgumentException( "Database file " + dbFile.getName() + " not found." );
        }
    }

    public Connection connection(){
        return this.connection;
    }
}

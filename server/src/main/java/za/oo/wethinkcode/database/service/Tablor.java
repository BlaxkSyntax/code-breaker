package za.oo.wethinkcode.database.service;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface Tablor {

    public ResultSet createTable(String sqlQuery) throws SQLException;  
}

package za.oo.wethinkcode.database.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Table implements Tablor {

    private Connection connection;

    public Table(Connection connection){
        this.connection = connection;
    }

    @Override
    public ResultSet createTable(String sqlQuery) throws SQLException {
        final Statement stmt = connection.createStatement();
        stmt.executeUpdate(sqlQuery);
        return stmt.getResultSet();
    }
}

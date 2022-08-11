package za.oo.wethinkcode.database.job;

import java.sql.SQLException;

import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;

public interface Memory{

    Memory INSTANCE = new Repo();

    static Memory getInstance(){
        return INSTANCE;
    }

    /**
     * gets code instance from the datastore. If the Person passed to this method already exists
     * @return list of codes.
     * @throws SQLException
     * @throws JsonProcessingException
     * @throws JsonMappingException
     */
    List<Integer> codes() throws SQLException, JsonMappingException, JsonProcessingException;
}

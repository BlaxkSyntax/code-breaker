package za.oo.wethinkcode.database.job;

import java.sql.SQLException;
import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;

import net.lemnik.eodsql.QueryTool;
import za.oo.wethinkcode.database.orm.Query;
import za.oo.wethinkcode.database.service.Connector;


public class Repo implements Memory{

    private Connector con = new Connector();
    private final Query query = QueryTool.getQuery(con.connection(), Query.class );

    /**
     * {@inheritDoc}
     * @throws SQLException
     * @throws JsonProcessingException
     * @throws JsonMappingException
     */
    @Override
    public List<Integer> codes() throws SQLException, JsonMappingException, JsonProcessingException {
        List<Integer> codesList = query.findAllCodes();
        System.out.println(codesList.toString());
        return codesList;
    }
}

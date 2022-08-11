package za.oo.wethinkcode.controller;

import java.sql.SQLException;
import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import io.javalin.http.Context;
import za.oo.wethinkcode.database.job.Repo;

public class HandleCodes {
    private final static String PATH = "/codes";

    public static void getCodes(Context context) throws SQLException, JsonMappingException, JsonProcessingException{

        List<Integer> codes = Repo.INSTANCE.codes();
        context.result(codes.toString());
    }

    public static String getPath(){
        return PATH;
    }
}
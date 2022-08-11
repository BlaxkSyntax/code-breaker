package za.oo.wethinkcode.database.orm;

import java.util.List;

/**
 * queries interface
 */

import net.lemnik.eodsql.BaseQuery;
import net.lemnik.eodsql.Select;

public interface Query extends BaseQuery {
    
    /**
     * gets all the code from levelOne db
     */
    @Select("SELECT * FROM levelOne")
    List<Integer> findAllCodes();
}

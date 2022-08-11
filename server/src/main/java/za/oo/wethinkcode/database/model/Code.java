package za.oo.wethinkcode.database.model;

import net.lemnik.eodsql.ResultColumn;

/**
 * code model
*/
public class Code {
    
    private int code;

    
    /**
     * use the velues rom the database
     * @return codes
     */
    public int getCode() {
        return code;
    }

    /**
     * set the values from the database
     * @param code
     */
    @ResultColumn( value = "codes" )
    public void setCode(int code) {
        this.code = code;
    }
    
    @Override
    public String toString(){
        return "{"+
                    "\"code\" :"+getCode()+
                "}";
    }
    
}

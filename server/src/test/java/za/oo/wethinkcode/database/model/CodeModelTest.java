package za.oo.wethinkcode.database.model;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class CodeModelTest {
    int code = 1234;

    String codein = 
    "{"
        +"\"code\" :"+ code +
    "}";
    
    private Code coder = new Code();

    @Test
    @DisplayName("Code : code")
    public void testCode(){
        coder.setCode(1234);
        assertEquals(code, coder.getCode());
    }

    @Test
    @DisplayName("Code : toString")
    public void testToString(){
        coder.setCode(1234);
        assertEquals(codein, coder.toString());
    }
}

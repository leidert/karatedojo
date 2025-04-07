package runner;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class TestRunner {

    // Método para ejecutar todas las pruebas en paralelo
    @Test
    void testParallel(){

        Results results = Runner.path("classpath:users").outputCucumberJson(true).parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

    // Método para ejecutar pruebas específicas usando la anotación @Karate

//    @Karate.Test
//    Karate testUsers() {
//        return Karate.run("users").relativeTo(getClass());
//    }
//
//    @Karate.Test
//    Karate testTags() {
//        return Karate.run("features/users").tags("@smoke").relativeTo(getClass());
//    }

}

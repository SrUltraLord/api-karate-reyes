package app.api;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class DemoBlazeApiTest {
    @Test
    void testSignup() {
        Results results = Runner.path("classpath:app/api/demoblaze/signup.feature")
                .parallel(1);

        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

    @Test
    void testLogin() {
        Results results = Runner.path("classpath:app/api/demoblaze/login.feature")
                .parallel(1);

        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}

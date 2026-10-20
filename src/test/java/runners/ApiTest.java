
package runners;

import io.karatelabs.core.Runner;
import io.karatelabs.core.SuiteResult;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class ApiTest {

    @Test
    void ejecutarPruebas() {

        SuiteResult resultado = Runner
                .path("classpath:features/consentimiento/consentimiento.feature")
                .outputHtmlReport(true)
                .parallel(1);

        assertTrue(resultado.isPassed());
    }
}

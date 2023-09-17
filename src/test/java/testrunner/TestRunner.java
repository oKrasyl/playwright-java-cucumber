package testrunner;


import org.junit.platform.suite.api.*;

@Suite
@SuiteDisplayName("Test Use Cases")
@IncludeEngines("cucumber")
@SelectClasspathResource("features")
//@ConfigurationParameter(key = GLUE_PROPERTY_NAME, value = "steps")

public class TestRunner {
}

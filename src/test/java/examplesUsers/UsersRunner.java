package examplesUsers;

import org.junit.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;

public class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("classpath:features").tags("~@ignore");
    } 
}

package co.jp.mental;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.PropertySource;

@SpringBootApplication
@PropertySource({"classPath:application_env.properties"})
public class MentalscaleApiApplication {

    public static void main(String[] args) {
        SpringApplication.run(MentalscaleApiApplication.class, args);
    }

}

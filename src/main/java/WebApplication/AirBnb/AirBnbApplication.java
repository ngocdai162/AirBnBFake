package WebApplication.AirBnb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.UserDetailsServiceAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

@SpringBootApplication(exclude= {UserDetailsServiceAutoConfiguration.class})
public class AirBnbApplication {

	public static void main(String[] args) {
		SpringApplication.run(AirBnbApplication.class, args);
	}
	
	/*
	 * @Bean(name="entityManagerFactory") public LocalSessionFactoryBean
	 * sessionFactory() { LocalSessionFactoryBean sessionFactory = new
	 * LocalSessionFactoryBean(); return sessionFactory; }
	 */
}
//new line
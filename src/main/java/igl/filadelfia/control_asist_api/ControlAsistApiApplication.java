package igl.filadelfia.control_asist_api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
public class ControlAsistApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(ControlAsistApiApplication.class, args);
	}

	@Configuration
	public static class MyConfiguration{
		@Bean
		public WebMvcConfigurer corsConfigurer(){
			return new WebMvcConfigurer() {
				@Override
				public void addCorsMappings(CorsRegistry registry) {
					WebMvcConfigurer.super.addCorsMappings(registry);
					registry.addMapping("/**")
							.allowedMethods("GET","POST","PUT","HEAD","DELETE","PATCH");
				}
			};
		}
	}
}

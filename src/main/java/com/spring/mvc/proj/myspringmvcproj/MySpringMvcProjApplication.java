package com.spring.mvc.proj.myspringmvcproj;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class MySpringMvcProjApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(MySpringMvcProjApplication.class); // Replace DemoApplication with your main class
	}

	public static void main(String[] args) {
		SpringApplication.run(MySpringMvcProjApplication.class, args);
	}

}

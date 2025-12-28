package com.project.onlinepizzaorderingsystem;

import org.hibernate.engine.internal.Collections;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

@SpringBootApplication
@EnableEurekaServer
public class Application {
	public static void main(String[] args) {
        new SpringApplicationBuilder(Application.class).run(args);

	}
	
	
}

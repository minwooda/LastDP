package kr.co.rest.config;

import javax.annotation.Resource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import kr.co.rest.beans.UserBean;

// 프로젝트의 전반적인 설정

@Configuration
// Annotation사용할수 있게 설정
@EnableWebMvc
@ComponentScan(basePackages = "kr.co.rest.controller")
@ComponentScan("kr.co.rest.dao")
@ComponentScan("kr.co.rest.service")
@PropertySource("/WEB-INF/properties/DB.properties")
public class ServletAppContext implements WebMvcConfigurer{
	
	@Value("${db.classname}")
	private String db_classname;
	
	@Value("${db.url}")
	private String db_url;
	
	@Value("${db.username}")
	private String db_username;
	
	@Value("${db.password}")
	private String db_password;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	
	// @EnableWebMvc => implements WebMvcConfigurer => registry.jsp("/WEB-INF/View/",".jsp");
	// controller의 메소드가 반환하는 결과값을 view로 보낼 때 지정되어지는 경로 구현
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/Views/",".jsp");
	}
	
	// 정적 파일의 경로 지정(예: 동영상)
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/Resources/");
	}
	
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source=new BasicDataSource();
		
		source.setDriverClassName(db_classname);
		source.setUrl(db_url);
		source.setUsername(db_username);
		source.setPassword(db_password);
		
		return source;
	}
	
	@Bean
	public SqlSessionFactory factory(BasicDataSource source) throws Exception {
		SqlSessionFactoryBean factoryBean=new SqlSessionFactoryBean();
		
		factoryBean.setDataSource(source);
		
		SqlSessionFactory factory=factoryBean.getObject();
		
		return factory;
	}
	
		
}

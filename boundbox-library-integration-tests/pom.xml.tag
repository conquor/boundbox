<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
	<modelVersion>4.0.0</modelVersion>

	<parent>
		<groupId>org.boundbox</groupId>
		<artifactId>boundbox-parent</artifactId>
		<version>1.2.0</version>
		<relativePath>..</relativePath>
	</parent>

	<artifactId>boundbox-sample-integration-tests</artifactId>
	<name>BoundBox Library Integration tests</name>
	<packaging>jar</packaging>

	<properties>
		<!-- infomation -->
		<root.basedir>${project.parent.basedir}</root.basedir>
		<maven-compiler-plugin.version>2.5.1</maven-compiler-plugin.version>
		<build-helper-maven-plugin.version>1.8</build-helper-maven-plugin.version>
		
		<!-- feature flipping -->
		<log.level>Level.OFF</log.level>
	</properties>

	<dependencies>
		<dependency>
			<groupId>org.boundbox</groupId>
			<artifactId>boundbox-library</artifactId>
			<version>${project.version}</version>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>junit</groupId>
			<artifactId>junit</artifactId>
			<version>4.11</version>
			<scope>test</scope>
		</dependency>
		<dependency>
			<groupId>org.easymock</groupId>
			<artifactId>easymock</artifactId>
			<version>3.2</version>
			<scope>test</scope>
		</dependency>
		<dependency>
			<groupId>findbugs</groupId>
			<artifactId>annotations</artifactId>
			<version>1.0.0</version>
			<scope>compile</scope>
		</dependency>
	</dependencies>

	<build>
		<plugins>
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-deploy-plugin</artifactId>
				<version>2.7</version>
				<configuration>
					<skip>true</skip>
				</configuration>
			</plugin>
			<plugin>
				<groupId>org.codehaus.mojo</groupId>
				<artifactId>build-helper-maven-plugin</artifactId>
				<executions>
					<execution>
						<id>add-source</id>
						<phase>generate-sources</phase>
						<goals>
							<goal>add-source</goal>
						</goals>
						<configuration>
							<sources>
								<source>${project.build.directory}/generated-sources/annotations/</source>
							</sources>
						</configuration>
					</execution>
				</executions>
			</plugin>
			<plugin>
				<artifactId>maven-compiler-plugin</artifactId>
				<configuration>
					<source>1.6</source>
					<target>1.6</target>
					<annotationProcessors>
						<annotationProcessor>org.boundbox.processor.BoundBoxProcessor</annotationProcessor>
					</annotationProcessors>
				</configuration>
			</plugin>
		</plugins>
	</build>
</project>

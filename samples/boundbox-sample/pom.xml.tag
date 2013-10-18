<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
	<modelVersion>4.0.0</modelVersion>

	<parent>
		<groupId>org.boundbox</groupId>
		<artifactId>boundbox-parent</artifactId>
		<version>1.2.0</version>
		<relativePath>../..</relativePath>
	</parent>

	<artifactId>boundbox-sample</artifactId>
	<name>BoundBox Sample</name>
	<packaging>jar</packaging>

	<properties>
		<!-- infomation -->
		<root.basedir>${project.parent.basedir}</root.basedir>
		<java.version>1.6</java.version>
		<easymock.version>3.2</easymock.version>
		<junit.version>4.11</junit.version>
		<findbugs.version>1.0.0</findbugs.version>
		<maven-compiler-plugin.version>2.5.1</maven-compiler-plugin.version>
		<build-helper-maven-plugin.version>1.8</build-helper-maven-plugin.version>
		<maven-deploy-plugin.version>2.7</maven-deploy-plugin.version>
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
			<version>${junit.version}</version>
			<scope>test</scope>
		</dependency>
		<dependency>
			<groupId>org.easymock</groupId>
			<artifactId>easymock</artifactId>
			<version>${easymock.version}</version>
			<scope>test</scope>
		</dependency>
		<dependency>
			<groupId>findbugs</groupId>
			<artifactId>annotations</artifactId>
			<version>${findbugs.version}</version>
			<scope>compile</scope>
		</dependency>
	</dependencies>

	<build>
		<plugins>
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-deploy-plugin</artifactId>
				<version>${maven-deploy-plugin.version}</version>
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
					<source>${java.version}</source>
					<target>${java.version}</target>
					<annotationProcessors>
						<annotationProcessor>org.boundbox.processor.BoundBoxProcessor</annotationProcessor>
					</annotationProcessors>
				</configuration>
			</plugin>
		</plugins>
	</build>
</project>

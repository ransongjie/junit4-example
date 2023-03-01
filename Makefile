.PHONY: mvnme\
runme\

mvnme: 
	mvn clean package -Dmaven.test.skip=true

jarpath:='./target/junit4-example.jar'
runme: mvnme
	java -Dfile.encoding=utf-8 -jar $(jarpath) "-Xms64m -Xmx64m -Djava.security.egd=file:/dev/./urandom"
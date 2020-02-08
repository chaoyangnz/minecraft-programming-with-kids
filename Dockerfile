FROM openjdk:7-jre-alpine

WORKDIR /minecraft

COPY spigot-1.15.2.jar ./
COPY eula.txt ./
COPY server.properties ./
COPY plugins ./plugins
RUN mkdir -p /minecraft/plugins && \
	wget https://github.com/zhuowei/RaspberryJuice/blob/master/jars/raspberryjuice-1.12.1.jar?raw=true -O /minecraft/plugins/raspberryjuice.jar 

CMD ["java", "-jar", "spigot-1.15.2.jar"]
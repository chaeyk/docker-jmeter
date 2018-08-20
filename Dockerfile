FROM openjdk:8-jre-alpine

ADD apache-jmeter-4.0.tgz /
ADD jmeter-websocket-samplers-1.2.jar /apache-jmeter-4.0/lib/ext/

ENV PATH="/apache-jmeter-4.0/bin:${PATH}"


FROM alpine:3.8 AS download

WORKDIR /download

ADD http://apache.mirror.cdnetworks.com/jmeter/binaries/apache-jmeter-4.0.tgz .
RUN tar zxvf apache-jmeter-4.0.tgz
ADD https://bitbucket.org/pjtr/jmeter-websocket-samplers/downloads/JMeterWebSocketSamplers-1.2.1.jar /download/apache-jmeter-4.0/lib/ext/

FROM openjdk:8-jre-alpine AS final

COPY --from=download /download/apache-jmeter-4.0 /apache-jmeter-4.0

ENV PATH="/apache-jmeter-4.0/bin:${PATH}"


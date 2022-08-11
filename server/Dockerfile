FROM ubuntu

RUN apt-get update
RUN apt-get install -y openjdk-11-jre curl make

ADD target/toyrobot-1.4.6-jar-with-dependencies.jar /srv/toyrobot-1.4.6.jar
ADD worlds.db /srv/worlds.db

WORKDIR /srv
EXPOSE 5000
CMD ["java", "-jar", "toyrobot-1.4.6.jar","1", "5000", "none", "none", "none","1"]

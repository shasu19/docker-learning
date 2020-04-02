#Docker base image on top of custom image to create
#FROM docker-repo.base.image.com/linux-amd64:latest

#Accept any arguments
ARG ARTIFACT_PATH

LABEL Component=Custom image helloworld creation learning

USER root

ENV ENABLE_TITLE=true \
    TITLE_START=Mr/Mrs
    
WORKDIR /opt

#Copy command
COPY build.sh ./

#Run shell commands
RUN cd /opt && \
    yum -y install npm && \
    yum -y install python-pip && \
    mkdir -p $HOME_PATH/wars
    
#Download war file
RUN cd $HOME_PATH/wars && \
    curl -o github.com/helloworld.zip -s $ARTIFACT_PATH && \
    unzip helloworldzip && \
    chmod 755 /opt/build.sh && \
	chown -R 1010:1010 $HOME_PATH/wars

#Add path to environment java path  
ENV PATH .:$HOME_PATH:$PATH

#Attach any volume
VOLUME ["$HOME_PATH/logs"]

USER 1010

#Service port
EXPOSE 8080

#Start new file to take handshake
ENTRYPOINT ["build.sh"]

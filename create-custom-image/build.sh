#!/bin/bash

#Add title in wars application properties file
if [ ! -z "$ENABLE_TITLE" ]; then
    if [ $ENABLE_TITLE == "true" ]; then
        sed -i -e 's;^title.url=.*$;title.url='$TITLE_START';g' $HOME_PATH/wars/application.properties     
    fi
else
        echo "Error:  Title is not passed"
        exit 1
fi


# Start Tomcat
cd $HOME_PATH/wars
java -jar helloworld.war


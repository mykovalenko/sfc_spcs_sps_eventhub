FROM confluentinc/cp-kafka-connect:latest
ENV CONNECT_PLUGIN_PATH="/usr/share/confluent-hub-components"

# install snowflake kafka connector
RUN confluent-hub install --no-prompt snowflakeinc/snowflake-kafka-connector:latest

# main script
WORKDIR /opt/spcs
COPY ./startup.sh /opt/spcs/

# startup script
CMD ["chmod +x /opt/spcs/startup.sh"]
ENTRYPOINT ["/opt/spcs/startup.sh"]

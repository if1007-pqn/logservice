FROM docker.elastic.co/elasticsearch/elasticsearch:6.3.0

RUN mkdir -p /var/app; cd /var/app; \
    curl -O https://artifacts.elastic.co/downloads/kibana/kibana-6.3.0-linux-x86_64.tar.gz \
    && tar -zxf kibana-6.3.0-linux-x86_64.tar.gz; \ 
    cd kibana-6.3.0-linux-x86_64/; echo -e 'server.host: "0.0.0.0"\nxpack.security.enabled: false' >> config/kibana.yml \
    && rm ../kibana-6.3.0-linux-x86_64.tar.gz

RUN echo '/usr/local/bin/docker-entrypoint.sh & sleep 10 && /var/app/kibana-6.3.0-linux-x86_64/bin/kibana' > /var/app/start.sh

# kibana exec
CMD [ "bash" , "/var/app/start.sh" ]
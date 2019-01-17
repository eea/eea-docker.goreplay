# eea.docker.goreplay

Usage example - docker.compose:

```yaml:docker-compose.yml

  tomcat:
    image: tomcat
    networks:
        - mynetwork
    environment:
      CATALINA_OPTS: |-
        "-Xmx4096m"
      TZ: UTC
    depends_on:
    - other_container
    ports:
    - 5678:8080
    volumes:
    - myvolume-tmp:/var/tmp

  goreplay-to-stdout:
    image: eeacms/goreplay
    network_mode: "host"
    command: /opt/goreplay --input-raw :5678 --output-stdout --input-raw-track-response

  goreplay-to-staging:
    image: eeacms/goreplay
    network_mode: "host"
    command: /opt/goreplay --input-raw :5678 --output-http http://staging

  goreplay-to-development:
    image: eeacms/goreplay
    network_mode: "host"
    command: /opt/goreplay --input-raw :5678 --output-http http://development
```


# eea-docker.goreplay

usage (snip):

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

  goreplay:
    image: eeacms/goreplay
    network_mode: "host"
    command: /opt/goreplay --input-raw :5678 --output-stdout --input-raw-track-response

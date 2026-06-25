FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    xfce4 xfce4-goodies \
    x11vnc xvfb novnc websockify

CMD ["bash", "-c", "echo 'Render container running' && sleep infinity"]

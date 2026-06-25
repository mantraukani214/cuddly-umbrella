services:
  windows:
    image: dockurr/windows
    container_name: windows10
    environment:
      VERSION: "10"
      RAM_SIZE: "32G"
      CPU_CORES: "16"
      DISK_SIZE: "300G"
    devices:
      - /dev/kvm
    cap_add:
      - NET_ADMIN
    ports:
      - "8006:8006"
      - "3389:3389/tcp"
      - "3389:3389/udp"
    restart: unless-stopped

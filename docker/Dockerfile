# Dockerfile for created an image with ansible
#
# TriOS-SecurityAutomator
# Principal Developer: Renato Kopke
#
# 1. Create image:
#       docker build -t ansible-docker .
#
# 2. Execute the ansible:
#       docker run -it --rm -v $(pwd):/app ansible-docker ansible-playbook [options of playbook]
#       docker run -it --rm -v $(pwd):/app ansible-docker ansible-vault [options of vault]
#       docker run -it --rm -v $(pwd):/app ansible-docker ansible [options of vault]
#
FROM python:3.9-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ssh \
    vim \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir ansible pywinrm

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
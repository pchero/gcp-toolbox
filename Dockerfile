FROM google/cloud-sdk:282.0.0

LABEL maintainer="Sungtae Kim <pchero@gmail.com>"

# install ansible
RUN apt-get install -y \
  software-properties-common \
  python3 \
  python3-pip \
  python3-apt
RUN pip3 install \
  google-auth \
  requests \
  ansible

# install terraform
RUN apt-get install -y \
  wget \
  unzip
RUN wget https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip -P /tmp
RUN unzip /tmp/terraform_0.12.20_linux_amd64.zip -d /tmp
RUN mv /tmp/terraform /usr/local/bin

FROM amazonlinux:latest
MAINTAINER John Majernik <jdmajernik@gmail.com>

#The Name of the downloaded file. Might cause build issues, as this may change. Could just extract manually and host on github...
ARG gamelift_file_name=GameLift_09_17_2020
ARG gamelift_download=https://gamelift-release.s3-us-west-2.amazonaws.com/${gamelift_file_name}.zip
ARG gamelift_ver=1.0.5

ARG aws_cli_file=aws_cli_v2.zip

# install dependencies
RUN yum install unzip groff -y

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o ~/"${aws_cli_file}"
RUN cd ~ && unzip ${aws_cli_file}
RUN ~/aws/install

#Download and unzip GameLift Local
#RUN wget -O ~/${gamelift_file_name}.zip ${gamelift_download}
#RUN unzip ${gamelift_file_name}

#
#RUN cd ${gamelift_file_name} 

#Running bash so the container doesn't close
#RUN bash
ENTRYPOINT ["bash"]

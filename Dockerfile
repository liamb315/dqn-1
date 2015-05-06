FROM ubuntu:14.04.2
MAINTAINER Ryan Sepassi <rsepassi@gmail.com>

# DeepMind dependencies
ADD https://raw.githubusercontent.com/rsepassi/dqn/original/install_dependencies.sh /
RUN chmod a+x install_dependencies.sh
RUN /install_dependencies.sh

# websocketd
RUN curl -L https://github.com/joewalnes/websocketd/releases/download/v0.2.10/websocketd-0.2.10-linux_amd64.zip > websocketd.zip
RUN mkdir websocketd
RUN unzip websocketd.zip -d websocketd
RUN mv websocketd/websocketd /bin/websocketd
RUN rm websocketd.zip
RUN rm -rf websocketd


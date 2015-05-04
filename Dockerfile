FROM ubuntu:14.04.2
MAINTAINER Ryan Sepassi <rsepassi@gmail.com>
ADD https://raw.githubusercontent.com/rsepassi/dqn/original/install_dependencies.sh /
RUN chmod a+x install_dependencies.sh
RUN /install_dependencies.sh


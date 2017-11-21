FROM fjctp/armhf-ros-kinetic-core

RUN apt-get update
RUN apt-get install ros-kinetic-rosserial -y
RUN apt-get install ros-kinetic-rosbridge-suite -y
RUN apt-get install ros-kinetic-turtlebot3-bringup ros-kinetic-turtlebot3-teleop -y
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD /bin/bash

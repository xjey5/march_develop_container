xhost +"local:docker@"
systemctl start docker.service
docker build . -t ros:melodic-march
docker run -ti --rm -e DISPLAY=$DISPLAY -v /home/jeffrey/Documenten/Projects/MARCH/workspace:/home/jeffrey:Z -v /tmp/.X11-unix:/tmp/.X11-unix:rw --ipc=host ros:melodic-march

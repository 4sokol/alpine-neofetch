# alpine-neofetch
A simple Dockerfile with latest Alpine image and additional software (bash, neofetch), which saves neofetch output into '/neofetch'

Howto:
1. Clone the repo to the local
2. from the local directory with the Dockerfile, build the image:
docker build -t <image_name:tag> .
3. check that the image exists:
docker images
4. run the container using the image which was created (in interractive mode and as a daemon):
docker run -it -d <image_name:tag>
5. check that the container exists and up and running:
docker ps
6. to access the container and check the /neofetch file run:
docker exec -it <container_id_which_could_be_found_via_docker_ps_cmd> /bin/bash
7. the container shell session should be opened in the terminal. Files and directories list should consist this:
ls -al
![image](https://github.com/4sokol/alpine-neofetch/assets/72856789/45ac4f03-3cf9-4d8b-b4c2-af1449e556ea)

cat /neofetch
![image](https://github.com/4sokol/alpine-neofetch/assets/72856789/74b2b624-ce5c-485e-9ab5-8e9595846039)
8. to exit the container Shell Environment type 'exit'


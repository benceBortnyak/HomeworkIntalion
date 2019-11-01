# HomeworkIntalion
You can start the docker container with the command



      Build it with:
      sudo docker build -t intalion:latest .
          
          
      Run the container with:
      sudo docker run -it -p 90:80 -v /home/bence/Documents/Codecool/Intalion/config:/home/config/ intalion
         
         
If you done everything right you should be able to acces the web app via https://localhost:90
The site will be insecure due to a self singed certificate

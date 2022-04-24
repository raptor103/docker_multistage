This mini project tests the difference  
between a normal docker image with simple Flask app  
versus the same app build with a multi stage docker build approach.

The result is a reduction in size from 1.01GB to 157MB.

All installed packages from first stage are copied  
to /usr/local/lib/python3.6/site-packages (location of Flask).

Use "docker exec -it <image_id> /bin/sh" to inspect the image.  
Use "docker history <image_id>" to see the progress of building  
steps and their size.

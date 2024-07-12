## FastAPI with Docker

Build the image
```
docker build -t <IMAGE_NAME> .
```

The above command will create the image. 

Check the list of the images using,
```
docker images
```

Build a container using the image with port mapping
```
docker run -p <PORT_NAME>:<PORT_NAME> <IMAGE_NAME>
```
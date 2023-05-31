# For create a docker image use a command:

#### `docker build . -t <name_of_image>`

#### Example: `docker build . -t my-image`

# For run a docker container use a command:

#### `docker run -d -p <your_port>:8000 <name_of_image>`

#### Example: `docker run -d -p 8000:8000 my-image`

## If you want to add a volume for to keep the database so you need to use this command:

#### `docker run -d -p <your_port>:8000 -v <your_folder_path>:/app/database <name_of_image>`

#### Example: `docker run -d -p 8000:8000 -v ./database:/app/database my-image`

### Pay attention:
- The server will not be available immediately because it will load fixtures
- After load all fixtures the server will be available on localhost:8000 or 127.0.0.1:8000

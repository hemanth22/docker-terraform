# Configure the Docker provider

provider "docker" {}

# Create a container
resource "docker_container" "fakemail" {
  name  = "fakemail"
  image = docker_image.fakemail.latest
}

# Find the latest mailhog image.
resource "docker_image" "fakemail" {
  name = "mailhog/mailhog:latest"
}

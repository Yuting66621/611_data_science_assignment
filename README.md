# README for NUFORC UFO Sightings Analysis

## Instructions to Reproduce

1. **Set Up Environment**:
   - Build the Docker container using the provided `Dockerfile`:
     ```bash
     docker build --no-cache -t ufo-r-studio .  
     
2. **Create a container**:
    docker run -d -p 8787:8787 -e PASSWORD=**** -v $(pwd):/home/rstudio/project --name ufo-container ufo-r-studio# 611_data_science_assignment

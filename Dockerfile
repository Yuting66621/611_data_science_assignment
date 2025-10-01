FROM rocker/tidyverse:latest

# Install system dependencies for additional packages
RUN apt-get update && apt-get install -y \
    libfontconfig1-dev \
    && rm -rf /var/lib/apt/lists/*

# Install additional packages
RUN install2.r --error \
    stopwords \
    wordcloud \
    FactoMineR \
    factoextra

# Verify all packages
RUN R -e "pkgs <- c('tidyverse', 'stopwords', 'wordcloud', 'FactoMineR', 'factoextra'); \
    sapply(pkgs, function(p) { \
        if (!require(p, character.only=TRUE)) stop(paste('Failed to load', p)); \
    }); \
    cat('✓ All packages verified!\n')"





WORKDIR /home/rstudio/project
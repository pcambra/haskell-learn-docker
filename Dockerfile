FROM haskell:8.2
VOLUME /app
# RUN apt-get update & apt-get install zip unzip & cabal update
WORKDIR /app
CMD ["ghci"]

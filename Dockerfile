FROM openjdk:8-jdk

# Install node 6.x
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - 
RUN apt-get install -y nodejs

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - 
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list 
RUN apt-get update
RUN apt-get install -y yarn

# Install chromium
RUN apt-get install -y chromium chromedriver

RUN apt-get upgrade -y


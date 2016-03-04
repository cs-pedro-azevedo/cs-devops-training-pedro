FROM ubuntu:trusty
MAINTAINER "Pedro Cesar" <pedro.azevedo@concretesolutions.com.br>
EXPOSE 4567

# INSTALL BASE TOOLS
WORKDIR /root
RUN apt-get update
RUN apt-get install -yq git wget curl autoconf bison libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev 
RUN git clone git://github.com/sstephenson/rbenv.git .rbenv
RUN eval "$(/root/.rbenv/bin/rbenv init -)"
RUN git clone git://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build
RUN /root/.rbenv/bin/rbenv install 2.1.0
RUN /root/.rbenv/bin/rbenv global 2.1.0
RUN /root/.rbenv/bin/rbenv rehash
#RUN gem install --no-ri --no-rdoc bundler


# CONFIGURE BASE APPLICATION
RUN mkdir -p /app/
ADD slate/ /app/slate/
RUN cd /app/slate/; bundle install

# BOOTSTRAP
ONBUILD ADD . /app/source/slate
CMD ["bundle", "exec", "middleman", "server"]

FROM node

RUN echo deb http://ftp.fr.debian.org/debian/ jessie main contrib non-free > /etc/apt/source.list

RUN apt-get update -y

RUN apt-get install -y \
    python2.7 python-pip \
    libfreetype6 libfontconfig

RUN git clone https://github.com/fuww/prerender.git /prerender
RUN cd /prerender; npm install

EXPOSE  3000
CMD ["node", "/prerender/server.js"]

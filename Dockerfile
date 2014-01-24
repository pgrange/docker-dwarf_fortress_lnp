FROM tianon/debian:latest

ADD files /

#prepare 32 bits dependencies
RUN dpkg --add-architecture i386

RUN apt-get update
RUN apt-get -y dist-upgrade

#Dwarf dependencies 
RUN apt-get -y install default-jre libsdl1.2debian:i386 libsdl-image1.2:i386 libsdl-ttf2.0-0:i386 libglu1-mesa:i386 libgtk2.0-0:i386 libopenal1:i386 libjpeg62:i386 git mercurial libqt4-dev qt4-qmake wget coreutils tar unzip make g++ gcc patch xterm sed python bzip2 unrar

#graphic dependencies
RUN apt-get install -y x11vnc xvfb

#install dwarf
RUN cd /df-lnp-installer-master/ ; ./df-lnp-installer.sh

#clean image
RUN apt-get clean

EXPOSE 5900

CMD ["/start_df_lnp.sh"]

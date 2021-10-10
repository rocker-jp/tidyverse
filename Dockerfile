FROM rocker/tidyverse:latest@sha256:ce3b344564b5d58bfba6244b8773a16a593552bb0ee6fbe491ab4fa9fd729e94

# Change environment to Japanese(Character and DateTime)
ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
RUN sed -i '$d' /etc/locale.gen \
  && echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen \
	&& locale-gen ja_JP.UTF-8 \
	&& /usr/sbin/update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
RUN /bin/bash -c "source /etc/default/locale"
RUN ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# Install ipaexfont
RUN apt-get update && apt-get install -y \
  fonts-ipaexfont

# Install packages
RUN Rscript -e "install.packages(c('githubinstall', 'ranger'))"

CMD ["/init"]

FROM nimmis/spigot

ENV EULA=true
RUN mkdir -p /minecraft/plugins && \
	wget https://github.com/zhuowei/RaspberryJuice/blob/master/jars/raspberryjuice-1.12.1.jar?raw=true -O /minecraft/plugins/raspberryjuice.jar 
COPY 95_turn_off_online_mode /etc/my_runalways/95_turn_off_online_mode


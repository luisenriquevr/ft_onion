FROM	nginx:latest
COPY	index.html /usr/share/nginx/html/index.html
RUN		apt-get update && \
		apt-get install -y openssh-server
COPY	sshd_config /etc/ssh/sshd_config
RUN	 	service ssh restart
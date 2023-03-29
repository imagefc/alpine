ARG version
FROM imagefc/alpine:${version}

RUN apk add --no-cache bash && \
    ln -sf /bin/bash /bin/sh && \
    sed -i '1s#/bin/ash#/bin/bash#g' /etc/passwd

# ubuntu-style PS1
ENV PS1="\u@\h:\w\$ "

# set default shell
ENV SHELL="/bin/bash"

CMD [ "/bin/bash" ]
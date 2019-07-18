FROM alpine:3.8

RUN apk add --no-cache bash curl
ADD godaddy-ddns.sh /godaddy-ddns.sh
RUN chmod 0755 /godaddy-ddns.sh
RUN chmod o+rwx /tmp
CMD /godaddy-ddns.sh

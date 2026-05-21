FROM pmacct/nfacctd:bleeding-edge

RUN apt-get update && \
    apt-get install -y logrotate && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY logrotate-pmacct.conf /etc/logrotate.d/pmacct

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

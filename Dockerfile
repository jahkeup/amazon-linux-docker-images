FROM scratch
ADD amzn2-container-raw-2.0.20190218-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-444d8c6710a3027a6c520d9ce5108f0f2570052a15d712f13454c6c6d2d232f9.tar.gz" \
 && echo "63aba32ac76cee05220b1ef7ebdb8e451e8b12bb8712896883f511ee625b8b45  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -

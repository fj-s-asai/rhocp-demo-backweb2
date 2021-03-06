FROM image-registry.openshift-image-registry.svc:5000/demo/basenode:latest

RUN git clone https://github.com/fj-s-asai/rhocp-demo-backweb2.git
RUN mv rhocp-demo-backweb2/* ./
RUN chgrp -R 0 /root/app &&  chmod -R g=u /root/app
USER 1001
EXPOSE 8080
ENTRYPOINT ["node","app.js"]

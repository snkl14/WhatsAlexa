FROM fusuf/whatsasena:latest

RUN git clone https://github.com/shefinkl14/WhatsAlexa /root/WhatsAlexa
WORKDIR /root/WhatsAlexa/
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "alexa.js"]

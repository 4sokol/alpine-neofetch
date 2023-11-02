# ------------------------------
# Simple Script which installs 'Neofetch' app inside Alpine Linux latest,
# updates current packages, installs bash and neofetch and put the output 
# of the 'neofetch' command in /neofetch
# ------------------------------

FROM alpine

LABEL maintainer="vladimir@sokolenko.org"

RUN apk update
RUN apk upgrade
RUN apk cache clean
RUN apk add bash
RUN apk add neofetch
RUN neofetch > /neofetch


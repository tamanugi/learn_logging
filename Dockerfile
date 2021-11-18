FROM elixir:1.12.3-alpine
WORKDIR /opt/app
RUN apk update
RUN apk --no-cache --update add git make g++ wget curl inotify-tools
RUN mix local.rebar --force
RUN mix local.hex --force

COPY . .

RUN mix deps.get
RUN mix deps.compile
RUN mix compile

EXPOSE 4000
CMD mix phx.server

# FROM --platform=amd64 alpine:3.9
# FROM alpine:3.9
# RUN apk update && apk --no-cache --update add bash ca-certificates libressl-dev zlib-dev
# RUN apk add --no-cache --virtual=build-deps make tar curl gcc g++
# RUN apk add openssh libstdc++

# ENV MIX_ENV=prod REPLACE_OS_VARS=true
# WORKDIR /opt/app
# EXPOSE 4000
# COPY --from=0 /opt/release .
# CMD /opt/app/bin/learn_logging start

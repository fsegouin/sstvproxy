# sstvproxy
YAP Proxy Docker Image for armhf

## What is this image for?
If you don't know what this is for, then you don't need it. Based on [vorghahn's](https://github.com/vorghahn/sstvProxy) hard work.
Mine is slightly different than [stokkes'](https://github.com/stokkes/docker-sstvproxy) as it works on Raspberry Pi (armhf architecture).

## How-to
1. Copy `.proxysettings.json` in `/defaults/` to `proxysettings.json` and fill in with your config.
2. Build your image with `docker build -t sstvproxy .`.
2. Run with `docker run --name sstvproxy -p <EXTERNAL PORT>:<PORT IN CONFIG FILE> -e PUID=<PUID HERE> -e PGID=<PGID HERE> -e TZ=<TIMEZONE HERE> sstvproxy`.

## Need help?
Refer to [vorghahn/sstvProxy](https://github.com/vorghahn/sstvProxy) for anything else.

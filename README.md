# Application

[Radarr](https://github.com/Radarr/Radarr)

## Description

This fork of Sonarr aims to turn it into something like Couchpotato.

## Build notes

Latest stable Radarr release from Arch Linux AUR.

## Usage

```bash
docker run -d \
    -p 7878:7878 \
    --name=<container name> \
    -v <path for media files>:/media \
    -v <path for data files>:/data \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e HEALTHCHECK_COMMAND=<command> \
    -e HEALTHCHECK_ACTION=<action> \
    -e UMASK=<umask for created files> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \
    binhex/arch-radarr
```

Please replace all user variables in the above command defined by <> with the
correct values.

## Access application

`http://<host ip>:7878`

## Example

```bash
docker run -d \
    -p 7878:7878 \
    --name=radarr \
    -v /media/movies:/media \
    -v /apps/docker/sabnzbd/watched:/data \
    -v /apps/docker/radarr:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \
    binhex/arch-radarr
```

## Notes

User ID (PUID) and Group ID (PGID) can be found by issuing the following command
for the user you want to run the container as:-

```bash
id <username>
```

___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Documentation](https://github.com/binhex/documentation) | [Support forum](http://forums.unraid.net/index.php?topic=55549.0)

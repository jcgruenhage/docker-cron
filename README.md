# docker-cron

This is a docker image based on [jcgruenhage/baseimage-alpine](https://github.com/jcgruenhage/docker-baseimage-alpine)
with [alpine-cron-schedular](https://git.jcg.re/jcgruenhage/alpine-cron-scheduler) installed.

## Cronjob auto-generation

The container will automatically try to generate cron-jobs from `/config/cron.yaml` (for an example of the syntax
see [exampleConfig/cron.yaml](exampleConfig/cron.yaml). If the file cannot be found, the generation is skipped.

## Manual creation of cronjobs

To manually create a cron job, place your job's script file into `/etc/periodic/[15min|hourly|daily|weekly|monthly]/`
and make sure the executable flag is set (`chmod a+x _filename_` to add execute-rights for everyone). Make sure that
your job's script also has no file-extension (f.ex. `backup_web` instead of `backup_web.sh`) and the script begins
with `#!/bin/sh`.

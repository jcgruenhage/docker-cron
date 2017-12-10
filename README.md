# docker-cron

This is a docker image based on (jcgruenhage/baseimage-alpine)[https://github.com/jcgruenhage/docker-baseimage-alpine]
with (alpine-cron-schedular)[https://git.jcg.re/jcgruenhage/alpine-cron-scheduler] installed.

## Cronjob auto-generation

The container will automatically try to generate cron-jobs from `/config/cron.yaml` (for an example of the syntax
see (exampleConfig/cron.yaml)[exampleConfig/cron.yaml]. If the file cannot be found, the generation is skipped.

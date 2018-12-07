# grafana-repo-docker

This is a POC for how to setup an apt repository for Grafana.

## Usage of the deployed repo

*/etc/apt/sources.list.d/grafana.list*
```
deb https://grafana-deb.storage.googleapis.com/oss/apt/debian stretch main
```

*add gpg signature*
```
curl https://grafana-deb.storage.googleapis.com/gpg.key | sudo apt-key add -
```


## Missing features

- rework it for CircleCI
- GPG sign the files


# grafana-repo-docker

This is a POC for how to setup an apt repository for Grafana.

## Usage of the deployed repo

*Create /etc/apt/sources.list.d/grafana.list*
```
deb https://grafana-deb.storage.googleapis.com/oss/apt/debian stretch main
```

*Add gpg signature*
```
curl https://grafana-deb.storage.googleapis.com/gpg.key | sudo apt-key add -
```

*Then run*
```
apt update
apt install grafana
```

## Missing features

- rework it for CircleCI
- GPG sign the files


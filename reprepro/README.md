# grafana-repo-docker

This is a POC for how to setup an apt repository for Grafana.

## How to generate a repo

Run `./generate-repo.sh`

My gpg key is not added to the repo but linked in distribution and will have to replaced with your own. You need to export its private key as `leo-grafana.asc` unless you modify `run.sh`.

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


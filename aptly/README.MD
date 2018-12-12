# aptly setup


Creating the repo: `aptly repo create -distribution=squeeze -component=main grafana`

Adding one or more deb(s): `aptly repo add grafana <filer or folder>`


Syncing db with gcp `gsutil -m rsync -r /repo-db gs://grafana-aptly-db/repo-db`

Publish repo to /repo 

`aptly publish repo -gpg-provider="gpg2" grafana filesystem:repo:grafana`

Drop published repo: `aptly publish drop squeeze filesystem:repo:squeeze`

create `/etc/apt/sources.list.d/grafana.list` with this content:
```
deb https://grafana-deb.storage.googleapis.com/oss/grafana/squeeze squeeze main
```

apt-key add this key : https://grafana-deb.storage.googleapis.com/gpg.key
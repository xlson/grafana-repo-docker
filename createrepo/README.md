# how to create a rpm repo for Grafana

1. sync all rpm:s to the repo folder `/yum-repo`
2. `cd /yum-repo && createrepo .`
3. `gpg --detach-sign --armor /yum-repo/repodata/repomd.xml`
4. push to gcp `gsutil -m rsync -r /yum-repo gs://grafana-deb/oss/grafana/yum`

# practical

add `grafana.repo` as `/etc/yum.repos.d/grafana.repo`
Install grafana: `yum install grafana`
Install specific version `yum install grafana-5.3.4`

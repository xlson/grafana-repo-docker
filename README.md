# POCs for creating a Grafana Labs deb/rpm repo

## Ideas for Paths to the repos

- Base `https://repo.grafana.com/`
- Deb `https://repo.grafana.com/<product>/<oss|enterprise>/deb`
- Rpm `https://repo.grafana.com/<product>/<oss|enterprise>/rpm`

- Gpg for all repos `https://repo.grafana.com/gpg.key` (if we want to have the same for all repos)
- Or, per product `https://repo.grafana.com/<product>/gpg.key`

With above, adding a deb repo would look like this:
```
deb https://repo.grafana.com/grafana/oss/deb squeeze main
```

Alternatively, if we do one big repo for all products we'd do
```
deb https://repo.grafana.com/oss/deb squeeze main
```


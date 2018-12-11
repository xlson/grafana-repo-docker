FROM circleci/golang:1.11

RUN git clone https://github.com/aptly-dev/aptly $GOPATH/src/github.com/aptly-dev/aptly && \
    cd $GOPATH/src/github.com/aptly-dev/aptly && \
    # pin aptly to a specific commit after 1.3.0 that contains gpg2 support
    git reset --hard a64807efdaf5e380bfa878c71bc88eae10d62be1 && \
    make install


FROM grafana/grafana-ci-deploy:1.0.0

COPY --from=0 /go/bin/aptly /usr/local/bin/aptly
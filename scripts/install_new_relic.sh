#!/bin/bash -ex

rpm -Uvh http://yum.newrelic.com/pub/newrelic/el5/x86_64/newrelic-repo-5-3.noarch.rpm || true
yum install -y newrelic-php5 || true

export NR_INSTALL_SILENT=true
export NR_INSTALL_KEY=057f0112d969fbdfa8ac98ed72e007e4e6e4b0a2
newrelic-install install

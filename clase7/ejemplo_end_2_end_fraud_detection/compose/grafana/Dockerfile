FROM grafana/grafana:7.0.0-beta3

ENV GF_SERVER_ENABLE_GZIP true
ENV GF_ALERTING_ENABLED true
ENV GF_USERS_LOGIN_HINT admin
ENV GF_USERS_PASSWORD_HINT admin
ENV GF_AUTH_ANONYMOUS_ENABLED true
ENV GF_PATHS_PLUGINS /plugins
ENV GF_PANELS_DISABLE_SANITIZE_HTML true

ENV GF_DASHBOARDS_MIN_REFRESH_INTERVAL 1s

#ENV GF_INSTALL_PLUGINS grafana-clock-panel,grafana-simple-json-datasource,ryantxu-ajax-panel,novalabs-annotations-panel,briangann-datatable-panel,agenty-flowcharting-panel,aidanmountford-html-panel,natel-influx-admin-panel,pierosavi-imageit-panel,mtanda-histogram-panel,btplc-status-dot-panel, mxswat-separator-panel,scadavis-synoptic-panel,natel-plotly-panel,innius-video-panel

ADD --chown=grafana:grafana datasources/ /etc/grafana/provisioning/datasources/
ADD --chown=grafana:grafana dashboards.yml /etc/grafana/provisioning/dashboards/

USER root
RUN set -xe ; \
    mkdir $GF_PATHS_PLUGINS ; \
    chown grafana:grafana $GF_PATHS_PLUGINS ; \
    chmod 755 $GF_PATHS_PLUGINS   
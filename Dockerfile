FROM google/cloud-sdk:431.0.0-alpine

ENV KEEP=10
ENV PROJECT_ID=""
COPY ./delete-bucket-objects /delete-bucket-objects

VOLUME [ "/root/.config/gcloud" ]

ENTRYPOINT [ "/delete-bucket-objects" ]

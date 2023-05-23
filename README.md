
# GCS delete objects

Clean storage objects and keep last objects.

Based on https://hub.docker.com/r/google/cloud-sdk/

```sh
docker pull fridus/gcs-clean-objects:latest
```

## Env

- `PROJECT_ID`
- `BUCKET`
- `KEEP`: default last 10
- `CREDENTIALS_KEYFILE`: string encoded in base64

## Mount keyfile

```
docker run --rm ... \
  -v my-key-file.json:/root/.config/gcloud/application_default_credentials.json
```

## Usage

```sh
docker run --rm -it \
  -e CREDENTIALS_KEYFILE=$KEYFILE \
  -e PROJECT_ID=my-project \
  -e BUCKET=my-bucket \
  fridus/gcs-clean-objects:latest
```

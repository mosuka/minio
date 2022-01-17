# MinIO for GitHub Actions Service Container

## How to use

```yml
    services:
      minio:
        image: mosuka/minio:latest
        env:
          MINIO_ROOT_USER: ${{ secrets.MINIO_ROOT_USER }}
          MINIO_ROOT_PASSWORD: ${{ secrets.MINIO_ROOT_PASSWORD }}
        ports:
          - 9000:9000
```

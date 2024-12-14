# Prometheus and Grafana

## Download all images

```bash
docker compose pull
```
## Start services

The **-d** flag can be used on the following command to run in detached mode and free your terminal.

Just Run:

```bash
docker compose up
```

## Validation

To see if went well:

```bash
docker container ls
```

There must be exactly two containers named **prometheus** and **grafana**.

## Login

|Tool | Location | Credentials | 
| --- | --- | --- |
| Prometheus | [http://localhost:9090/query](http://localhost:9090/query) | - | 
| Grafana | [http://localhost:3000](http://localhost:3000) | admin/admin |
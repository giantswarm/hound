# Helm chart for 'hound'

## Configuration

The configuration of the repositories to scrape is mounted in a secret due it can contain credentials.

```bash
$ helm template ./helm/hound-chart --name hound --namespace hound --set repositories.giantswarm.username=XXXX --set repositories.giantswarm.token=XXXX --set domain=cs.giantswarm.io | kubectl apply -f -
```
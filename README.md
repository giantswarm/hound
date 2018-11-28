# GiantSwarm Hound

It can be installed using helm template and passing the token for the private repositories

```bash
$ helm template ./helm/hound-chart --name hound --namespace hound --set repositories.giantswarm.username=XXXX --set repositories.giantswarm.token=XXXX | kubectl apply -f -
```

This is a fork of [Etsy hound project](https://github.com/etsy/hound). Dockerfile has been modified to not take config json from local. Instead, the configuration is injected via secret (could have sensible data). Also we introduced a helm chart to deploy to Kubernetes seamlessly.

By default it contains `giantswarm` private repo, but modifying the helm values you can add repositories easily:

```yaml
repositories:
  ...
  my-repo:
    token: TOKEN
    owner: my-github-username
    username: USERNAME
  ...
```

## Get in Touch

Created at [Etsy](https://www.etsy.com) by:

* [Kelly Norton](https://github.com/kellegous)
* [Jonathan Klein](https://github.com/jklein)

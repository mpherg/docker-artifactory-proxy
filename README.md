# docker-artifactory-proxy

Layers an HTTP proxy (TCP port 80) onto [JFrog's Artifactory Docker
container][jfrog]. Also rewrites the URL so you don't have to go to
`http://<hostname>/artifactory`; instead you can just go to `http://<hostname>`.

## Usage

    docker build -t artifactory-pro-proxy .
    docker run -p 0.0.0.0:80:80 artifactory-pro-proxy

## License

[MIT][license]



[jfrog]:   https://bintray.com/jfrog/product/artifactory/download
[license]: /LICENSE

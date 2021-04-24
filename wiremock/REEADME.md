# we-channel-wiremock

### Setup

- Install `brew`

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- Install `go`

```bash
brew install go
```

- Install `wiremock`

```
go get -u github.com/prongbang/wiremock
go install github.com/prongbang/wiremock
```

### Run

- Binary

```bash
cd we-channel-wiremock
wiremock -port 9000
```

or

- Docker

```bash
docker-compose up
```

### API

```bash
curl -X GET          http://localhost:9000/api/v1/channel
curl -X GET          http://localhost:9000/api/v1/channel/1
curl -X POST -d '{}' http://localhost:9000/api/v1/channel
curl -X PUT -d '{}'  http://localhost:9000/api/v1/channel/1
curl -X DELETE       http://localhost:9000/api/v1/channel/1
```
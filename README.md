# dr-demo-fulfilment-worker

Queue worker that drives warehouse fulfilment jobs.

## Overview

`dr-demo-fulfilment-worker` is a Go service in the logistics domain. It runs as an internal worker
with a small HTTP control surface.

## Build

```bash
go build ./...
go test ./...
```

## Layout

- `main.go` — HTTP control surface
- `internal/store/store.go` — database access
- `internal/ops/ops.go` — operational helpers
- `internal/ops/ops_test.go` — fixtures

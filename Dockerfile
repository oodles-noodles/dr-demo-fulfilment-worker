FROM golang:1.22-alpine AS build
WORKDIR /src
COPY . .
RUN go build -o /out/dr-demo-fulfilment-worker .

FROM alpine:3.19
COPY --from=build /out/dr-demo-fulfilment-worker /usr/local/bin/dr-demo-fulfilment-worker
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/dr-demo-fulfilment-worker"]

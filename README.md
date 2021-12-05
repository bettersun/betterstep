# betterstep

A step counter tool

## Getting Started

1.
```
cd server
```

```
go run main.go
```

2. 
run the flutter app.

## gppc command

```
protoc -I proto/ proto/step.proto --dart_out=grpc:lib/rpc
```

```
protoc --go_out=. --go_opt=paths=source_relative  --go-grpc_out=. --go-grpc_opt=paths=source_relative proto/step.proto 
```

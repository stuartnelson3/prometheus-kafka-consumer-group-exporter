VERSION ?= $(shell cat VERSION)
BIN ?= kafka_consumer_group_exporter

$(BIN): cmd/prometheus-kafka-consumer-group-exporter/main.go kafka/*.go prometheus/*.go metrics.go sync/*.go
	go build -ldflags "-X main.version=$(VERSION)" -o $@ $<

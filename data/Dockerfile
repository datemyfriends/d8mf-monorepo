FROM golang:latest as build-env
RUN mkdir /schema
WORKDIR /schema
COPY schema/go.mod . 
COPY schema/go.sum .
COPY schema/main.go .

# Get dependancies - will also be cached if we won't change mod/sum
RUN go mod download
# COPY the source code as the last step

# Build the binary
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-w -s" -a -installsuffix cgo -o /go/bin/schema .
RUN chmod +x /go/bin/schema 


CMD ["/go/bin/schema"]
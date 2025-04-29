FROM golang:1.23.4

WORKDIR /usr/local/app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /FINAL-MAIN

CMD ["/FINAL-MAIN"]

FROM alpine:latest

RUN apk update
RUN apk add --no-cache gcc musl-dev
# Copie os scripts necessários
CMD ["sh", "-c", "cd project && ./darwin.out build darwinconf.lua build_linux"]

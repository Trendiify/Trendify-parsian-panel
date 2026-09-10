# syntax=docker/dockerfile:1

ARG PYTHON_VERSION=3.14
FROM ghcr.io/astral-sh/uv:python$PYTHON_VERSION-bookworm-slim AS builder

ENV UV_COMPILE_BYTECODE=1 UV_LINK_MODE=copy UV_PYTHON_DOWNLOADS=0

RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc python3-dev libc6-dev git curl unzip \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://bun.sh/install | bash

ENV PATH="/root/.bun/bin:$PATH"

WORKDIR /build

RUN git clone --depth 1 https://github.com/PasarGuard/panel.git .

RUN cd dashboard && bun install --frozen-lockfile && cd .. && bash build_dashboard.sh

RUN sed -i 's/except ValueError, socket.gaierror:/except (ValueError, socket.gaierror):/' main.py

RUN sed -i 's/bind_args\["host"\] = ip/bind_args["host"] = server_settings.host/' main.py

RUN uv sync --frozen --no-dev

FROM python:$PYTHON_VERSION-slim-bookworm

COPY --from=builder /build /code

WORKDIR /code

ENV PATH="/code/.venv/bin:$PATH"

RUN apt-get update && apt-get install -y --no-install-recommends curl \
    && rm -rf /var/lib/apt/lists/*

COPY start-railway.sh /start-railway.sh

RUN chmod +x /start-railway.sh /code/start.sh

EXPOSE 8000

ENTRYPOINT ["/bin/sh", "/start-railway.sh"]

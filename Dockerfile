FROM node:20.18.0 AS build

ARG PNPM_VERSION=9.12.1
RUN npm install -g pnpm@${PNPM_VERSION}

WORKDIR /app
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

COPY . .
RUN pnpm build

FROM nginx:1.27-alpine-slim AS production

COPY --chown=nginx:nginx --from=build /app/build /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80

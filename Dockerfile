# =========================
# Stage 1: Build
# =========================
FROM node:18-alpine AS build

WORKDIR /app

# System deps for sharp + sqlite
RUN apk add --no-cache \
  build-base \
  gcc \
  autoconf \
  automake \
  zlib-dev \
  libpng-dev \
  nasm \
  bash \
  vips-dev \
  git

# Copy only package files first
COPY package.json package-lock.json ./

# Install deps INSIDE container
RUN npm install

# Copy rest of the source (WITHOUT node_modules)
COPY . .

# Build admin panel
RUN npm run build


# =========================
# Stage 2: Runtime
# =========================
FROM node:18-alpine

WORKDIR /app

RUN apk add --no-cache vips-dev

# Copy built app
COPY --from=build /app /app

ENV NODE_ENV=development

EXPOSE 1337

CMD ["npm", "run", "develop"]

# Dockerfile — روافد / Rawafid
# Multi-stage build for production-ready image

# ──────────────────────────────────────────
# Stage 1: Dependencies
# ──────────────────────────────────────────
FROM node:20-alpine AS deps
WORKDIR /app

# Install dependencies only when needed
COPY package*.json ./
RUN npm ci --only=production && \
    # Cache clean to reduce image size
    npm cache clean --force

# ──────────────────────────────────────────
# Stage 2: Builder
# ──────────────────────────────────────────
FROM node:20-alpine AS builder
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

# Build the application
RUN npm run build

# ──────────────────────────────────────────
# Stage 3: Production Runner
# ──────────────────────────────────────────
FROM node:20-alpine AS runner
WORKDIR /app

# Security: run as non-root user
RUN addgroup --system --gid 1001 nodejs && \
    adduser --system --uid 1001 rawafid

# Copy only necessary files
COPY --from=deps /app/node_modules ./node_modules
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/package.json ./package.json

# Set ownership
RUN chown -R rawafid:nodejs /app

USER rawafid

# Expose the application port
EXPOSE 3000

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD wget -qO- http://localhost:3000/health || exit 1

# Start the application
CMD ["node", "dist/server.js"]

FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy prisma
COPY database/prisma ./database/prisma

# Generate Prisma client
RUN npx prisma generate --schema=./database/prisma/schema.prisma

# Copy source code
COPY . ./

# Create uploads directory
RUN mkdir -p public/uploads/articles

# Environment variables
ENV PORT=3001
ENV HOST=0.0.0.0
ENV NODE_ENV=production

EXPOSE 3001

# Run migrations and start the server
CMD ["sh", "-c", "npx prisma migrate deploy --schema=./database/prisma/schema.prisma && npm start"]

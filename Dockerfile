FROM node:18-alpine

WORKDIR /app

# Copy package files and prisma schema first (needed for install)
COPY package*.json ./
COPY database/prisma ./database/prisma

# Install dependencies
RUN npm install

# Copy the rest of the source code
COPY . ./

# Create uploads directory
RUN mkdir -p ./public/uploads/articles

# Environment variables
ENV PORT=3001
ENV HOST=0.0.0.0
ENV NODE_ENV=production

EXPOSE 3001

# Run migrations and start the server
CMD ["sh", "-c", "npx prisma migrate deploy --schema=./database/prisma/schema.prisma && npm start"]

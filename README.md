# WasteWise Backend

This is the backend service for the WasteWise application. It provides APIs for waste classification, user management, payments, and more.

## Tech Stack
- Hapi.js - Web server framework
- PostgreSQL - Database
- Prisma - ORM
- Midtrans - Payment gateway integration

## Getting Started

### Prerequisites
- Node.js (v16 or later)
- PostgreSQL
- npm

### Installation

1. Clone the repository
```bash
git clone https://github.com/your-username/wastewise-backend.git
cd wastewise-backend/backend
```

2. Install dependencies
```bash
npm install
```

3. Set up environment variables
```bash
cp .env.example .env
```
Then edit the `.env` file with your actual configuration.

4. Run database migrations
```bash
npx prisma migrate deploy --schema=database/prisma/schema.prisma
```

5. Start the server
```bash
npm start
```

For development:
```bash
npm run dev
```

## Deployment

This backend is ready to be deployed to Railway.

### Deploying to Railway

1. Push your code to GitHub
2. In Railway, create a new project and select "Deploy from GitHub repo"
3. Connect your GitHub repository
4. Add the necessary environment variables in Railway
5. Railway will automatically deploy your application

## API Documentation

The API documentation can be accessed at `/documentation` when the server is running.

## Database Schema

The database schema is defined in `database/prisma/schema.prisma`.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

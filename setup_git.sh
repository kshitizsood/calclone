#!/bin/bash

# Wipes existing git and starts over
rm -rf .git
git init
git checkout -b main

# 1. Backend Initialization
git add backend/requirements.txt backend/server.py backend/runtime.txt
git commit -m "feat(backend): initialize fastapi server and dependency management (Python 3.12)"

# 2. Database Schema
git add backend/app/models.py backend/app/database.py backend/app/schemas.py
git commit -m "feat(db): define core models for events, availability, and bookings"

# 3. API Logic
git add backend/app/main.py backend/app/services.py
git commit -m "feat(api): implement crud logic for scheduling"

# 4. Config & Seeding
git add backend/seed.py backend/Procfile README.md
git add -f backend/.env
git commit -m "docs: add database seeding script and environment configuration"

# 5. Frontend Foundation
git add frontend/package.json frontend/next.config.js frontend/tsconfig.json frontend/postcss.config.mjs
git commit -m "chore(frontend): initialize next.js app with tailwind 4 and api client"

# 6. Global Layouts
git add frontend/app/layout.tsx frontend/app/dashboard/layout.tsx frontend/app/globals.css
git commit -m "feat(ui): implement main dashboard layout and dark theme design system"

# 7. Dashboard Features
git add frontend/app/dashboard/
git commit -m "feat(dashboard): build event type management and discovery interface"

# 8. Public Pages
git add frontend/app/public/page.tsx frontend/app/book/
git commit -m "feat(booking): implement public profile and interactive booking calendar"

# 9. API & Utils
git add frontend/lib/api.ts frontend/lib/utils.ts frontend/components/
git commit -m "fix(frontend): integrate backend api and optimize real-time slot availability"

# 10. Branding & Identity
git add .
git commit -m "style: personalize application branding for Kshitiz Sood"

echo "🎉 Git repository re-initialized with 10 professional commits!"

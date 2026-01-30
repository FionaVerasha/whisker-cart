#!/bin/bash

# Run migrations
php artisan migrate --force

# Caching for production
php artisan config:cache
php artisan route:cache
php artisan view:cache

# Start Apache in the foreground
apache2-foreground

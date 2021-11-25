chmod -R 777 storage
chmod -R 777 bootstrap
docker-compose up -d --force-recreate --build
sudo docker-compose exec app php artisan key:generate
docker-compose exec app php artisan config:cache
docker-compose exec app php artisan migrate
docker-compose exec app php artisan db:seed

# django-htmx-tailwind
A Django + HTMX + AlpineJS + TailwindCSS/DaisyUI boilerplate to kickstart your project and start shipping

![demo screenshot](https://raw.githubusercontent.com/rayonx/django-htmx-tailwind/master/static/img/demo.jpg)

### Quickstart
```sh
docker-compose build
docker-compose up

# you should now see the demo running at localhost:8000
```


### In a separate terminal, run the following to compile tailwind
```sh
# Install packages
bun install

# Add tailwindcss to global scope
bun add -g tailwindcss

# (optional) Create tailwind.config
tailwindcss init 

# Run this during development
tailwindcss -i ./src/input.css -o ./static/css/style.css --watch
```

### Using docker-compose
```sh
# Make django migration files
docker-compose run web manage makemigrations

# Create superuser
docker-compose run web manage createsuperuser

# Run tests
docker-compose run web test
```
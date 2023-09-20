# django-htmx-tailwind
A Django + HTMX + AlpineJS + TailwindCSS/DaisyUI boilerplate to kickstart your project and start shipping


### Quickstart
```sh
docker-compose build
docker-compose up
```

In a separate terminal, run the following to compile tailwind
```sh
tailwindcss -i ./src/input.css -o ./static/css/style.css --watch
```

### Using Bun and Tailwind
```sh
# Install packages
bun install

# Add tailwindcss to global scope
bun add -g tailwindcss

# (optional) Create tailwind.config
tailwindcss init 
```
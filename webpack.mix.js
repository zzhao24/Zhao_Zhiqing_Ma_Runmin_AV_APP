const mix = require('laravel-mix');

mix.options({
    processCssUrls: false
});

mix.sass('sass/master.scss', 'css/main.css');
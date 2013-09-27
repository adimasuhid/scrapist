scrAPIst
========

Simple API for Scraping HTML via Sinatra and Wombat

Access it at [http://scrapist.herokuapp.com]

[http://scrapist.herokuapp.com]: http://scrapist.herokuapp.com

Usage:

Scrape via URL:
```sh
/scrape/:base_url/:path/:css
```

Scrape via passing parameters in a GET request
```sh
/scrape?base_url=some_url.com&path=some_path&css=some_css
```

Some rules:
URLs prohibit the use of / and # as parameter. Substitute @ for each instead.
```sh
/scrape/some_url/some_long_path@that_has@slashes/@id
```
It returns a json object with a status 200 if success. Error with status 404 if
missing parameters.

Feel free to use and reuse!

License
======
MIT


text
# PHP + Perl CGI + Apache 2 Web Framework

This repository provides a basic code framework to run a **PHP** and **Perl CGI** environment using **Apache 2** inside Docker, with front-end support from **Bootstrap** and **Tabulator** for responsive UI and interactive data tables.

## Features
- **Dockerfile** configured with:
  - PHP runtime for server-side scripting
  - Perl CGI support for legacy or specialized scripts
  - Apache 2 web server configuration for both PHP and CGI execution
- **Bootstrap** integration for mobile-first, responsive layout
- **Tabulator** library for creating interactive, sortable, and filterable tables

## Directory Structure

```
.
├── Dockerfile
├── src/
│ ├── index.php
│ ├── cgi-bin/
│ │ └── example.pl
│ └── assets/
│ ├── css/
│ └── js/
└── README.md
```

## Getting Started

### 1. Build the Docker Image
docker build -t php-perl-apache .

### 2. Run the Container
docker run -d -p 8080:80 php-perl-apache

Access the site at: [http://localhost:8080](http://localhost:8080)

### 3. File Locations
- **PHP files** → Place inside `/var/www/html`
- **Perl CGI scripts** → Place inside `/usr/lib/cgi-bin` (ensure executable permissions)
- **Static resources** → Place in `/var/www/html/assets`

## Front-End Setup
Bootstrap and Tabulator are included via CDN in `index.php`:
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"> <link rel="stylesheet" href="https://unpkg.com/tabulator-tables@5.5.0/dist/css/tabulator.min.css"> <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script> <script src="https://unpkg.com/tabulator-tables@5.5.0/dist/js/tabulator.min.js"></script>
text

## Example Components

### PHP: `index.php`

```php
<?php echo "<h1>PHP + Bootstrap + Tabulator</h1>"; ?> <div id="example-table"></div> <script> var table = new Tabulator("#example-table", { data: [ {id:1, name:"Alice", age:25}, {id:2, name:"Bob", age:30} ], columns:[ {title:"ID", field:"id"}, {title:"Name", field:"name"}, {title:"Age", field:"age"} ] }); </script>
```

Perl CGI: example.pl
```text
#!/usr/bin/perl
print "Content-type: text/html\n\n";
print "<h1>Hello from Perl CGI!</h1>";
```

License
This project is licensed under the MIT License.

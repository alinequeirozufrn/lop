![Logo](https://res.cloudinary.com/incubatech/image/upload/v1626057998/faceponto-site/mini-logo_ljppkr.svg)

    
# Incubatech REST API Project

This is a REST API project developed by [@Faceponto](https://www.instagram.com/faceponto) traineers using [Lumem 8.0.0 Framework](https://lumen.laravel.com) and [PostgreSQL 13.4 Database](https://www.postgresql.org).


## Authors

- [@vini1lol](https://github.com/vini1lol)
- [@otavioacb](https://github.com/otavioacb)
- [@alinequeirozufrn](https://github.com/alinequeirozufrn)

  
## Installation

Your first step as a API user is to initiate a new Lumen project with Composer. Initializing a new project it load all configuration files required what is not present in this repository.
``` 
composer create-project --prefer-dist laravel/lumen ProjectName
```
After this step you have to clone our repository or download as a zip file and replace some folders. This step must be done by your preference. Now with all files loaded you have to install all packages using the command below.
``` 
composer install
```
Last but not least, you need to generate a JWT key and an APP key. The JWT its necessary to encrypt some informations and help to create the token. APP key its to support the criptografy of the some data.

``` 
php artisan jwt:secret

php artisan key:generate
```
    
## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`API_KEY`

`JWT_SECRET`

`ADMIN_NAME`

`ADMIN_EMAIL`

  ## API Reference

[![Run in Insomnia}](https://insomnia.rest/images/run.svg)](https://insomnia.rest/run/?label=Incubaproject&uri=https%3A%2F%2Fgithub.com%2Falinequeirozufrn%2Flop%2Fblob%2Fmain%2FInsomnia_2021-08-18.json)

### Register

#### Create a new user

```http
  POST /auth/register
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `user_name` | `string` | **Required**. Register an user name |
| `password` | `string` | **Required**. Register a password |
| `email` | `string` | **Required (Unique)**. Register an e-mail |
| `cpf` | `string` | **Required (Unique)**. Register a cpf |
| `zip_code` | `string` | **Required**. Register a zip code |
| `number_addr` | `integer` | **Required**. Register a house number |

### Login

#### Log and authenticate an user

```http
  POST /auth/login
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `email` | `string` | **Required (Unique)**. Set a e-mail |
| `password` | `string` | **Required**. Set a password |

### Logout

#### Logout an authenticated user

```http
  GET /auth/logout
```

This method required a Bearer Token. 

### Clients

#### Soft delete an user

```http
    DEL /user
```

The user will receive an unactive status.
This method required a Bearer Token. 

#### Edit Specifics Columns

```http
    PUT /user/edit
```

This method required a Bearer Token.

#### Get Some Informations About an User

```http
    GET /user
```

This method required a Bearer Token.

### Sales

#### Update Status Column

```http
    PATCH /sales/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `status` | `string` |  The current sales status. |

This method required a Bearer Token. 

#### Create a New Sale as Client

```http
    POST /sale
```
| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `description` | `json(array)` |  List of all itens brought by the cliente. |


This method required a Bearer Token.

#### Get All Sales as Admin

```http
    GET /sales
```

This method required a Bearer Token.

### Products

#### Get All Products

```http
    GET /products
```

This method required a Bearer Token. 

#### Create a New Product

```http
    POST /products
```
| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `name` | `string` |  Name of the product. |
| `price` | `float` |  Price of the product. |
| `unit` | `integer` |  Units of the productavailable on stock. |
| `description` | `string` |  Description of the product. |


This method required a Bearer Token.

#### Get a Specific Product

```http
    GET /products/${id}
```

This method required a Bearer Token.

#### Delete a Product

```http
    DEL /products/${id}
```

The product will receive an unactive status.
This method required a Bearer Token. 

#### Edit a Product

```http
    PUT /products/${id}
```
| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `name` | `string` |  Name of the product. |
| `price` | `float` |  Price of the product. |
| `unit` | `integer` |  Units of the productavailable on stock. |
| `description` | `string` |  Description of the product. |

This method required a Bearer Token. 

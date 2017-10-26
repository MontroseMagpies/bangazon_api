# **Bangazon API - Montrose-Magpies Edition:**

Created an API using Ruby 2.4.2 and Rails 5. The purpose of the API is to allow access
to the Bangazon customer and employee database.

## Table of Contents:

- [**Bangazon API - Montrose-Magpies Edition:**](#--bangazon-api---montrose-magpies-edition---)
  * [Getting Started](#--getting-started---)
  * [Prerequisites](#--prerequisites--)
  * [Installing](#--installing--)
  * [Running the tests](#running-the-tests)
    + [CORS testing for issue #__](#cors-testing-for-issue----)
  * [Built With](#built-with)
  * [Authors](#authors)
  * [Acknowledgments](#acknowledgments)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>



## **Getting Started:**
- CLI commands:
1. Clone repo.
```
git clone https://github.com/MontroseMagpies/bangazon_api.git
```
2. Install gems from gem file to local machine.
```
bundle install
```
3. Migrate files to data browser.
```
rails db:migrate
```

## **Prerequisites**
1. Text editor such as Sublime, Atom, or VSC [https://code.visualstudio.com/](url)
2. Postman: [https://www.getpostman.com/](url)
3. A sql browser such as: [http://sqlitebrowser.org/](url)

## **Installing**

1. Follow getting started steps
2. run rails server
3. test using postman with following endpoints: (may sub numbers 1-3 for endpoints with id's)
- Postman testing note: Test Post, Get, Put, Patch, and/or Delete in accordance with requirements for database table.
_________________
_________________
- /customers
        - /customers/1
```
{
  "customer": {
    "name_first": "Montrose",
    "name_last": "Magpies",
    "address_street": "123 NSS Rd",
    "address_email": "nssstudents@nss.com",
    "city":  "Nashville",
    "state": "TN",
    "zip_code": "37221",
    "boolean": "true",
    "last_date_active": "Oct 23, 2017"
    }
}
```
_________________
_________________
    
- /products
        - /products/1

```
{
  "product": {
    "product_price": "12.12",
    "product_description": "1234",
    "customer_id": "2",
    "product_type_id": "1"
    }
}
```
_________________
_________________
- /product_types
        - /payment_types/1

```
{
  "product_type": {
    "product_type": "hmmm"
    }
}
```
_________________
_________________
- /orders
        - /orders/1

```
{
  "order": {
    "payment_type_id": "12.12",
    "fulfilled": "true",
    "payment_type": "1",
    "customer_id": "1"
    }
}
```
_________________
_________________
- /product_order
        - /product_order/1

```
{
  "product_order": {
    "product_order_id": "hmmeeem",
    "product_id": "1",
    "order_id": "1"
    }
}
```
_________________
_________________
- /payment_types
        - /payment_types/1

```
{
  "payment_type": {
    "payment_type": "hmmm",
    "account_number": "1234",
    "customer_id": "1"
    }
}
```
_________________
_________________
- /employees
        - /employees/1

```
{
  "employee": {
    "name_last": "White",
    "name_first": "Adam",
    "job_title": "Junior Dev",
    "employee_hire_date": "2016-04-20",
    "Department_id":  2
}
}
```
_________________
_________________
- /departments
        - /departments/1

```
{
  "department": {
    "department_id": "1",
    "department_name": "coolest department",
    "expense_budget": "12,000.00"
    }
}
```
_________________
_________________
- /computers
        - /computers/1

```
{
  "computer": {
    "computer_id": "1",
    "purchase_date": "2016-04-20",
    "decommission_date": "2016-04-20"
    }
}
```
_________________
_________________
- /employee_computers
        - /employee_computers/1

```
{
  "employee_computer": {
    "computer_id": "1",
    "employee_id": "1"
    }
}
```
_________________
_________________
- /employee_training_programs
        - /employee_training_programs/1

```
{
  "employee_training_program": {
    "employee_training_program_id": "12",
    "training_program_id": "1",
    "program_id": "1",
    "employee": "1"
    }
}
```
_________________
_________________
- /training_programs
        - /training_programs/1

```
{
  "training_program": {
    "training_program_id": "1",
    "start_date": "2017-10-24",
    "end_date:": "2017-10-24",
    "subject": "Safety",
    "instructor": "Darth Jisie",
    "max_occupancy": "15"
    }
}
```

## Running the tests

### CORS testing for issue #__

1. Create a _test_folder_ **outside of repository folder**

2. In _test_folder_ create a simple index.html

    Paste the following in:

```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Bangazon</title>
</head>
<body>
    <h1>test</h1>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="main.js"></script>
</body>
</html>
```
    
3. Also create a main.js with one ajax call to bangazon API inside _test_folder_

    Paste the following:
```
    $.get( "http://localhost:3000/orders", function( data ) {
    console.log('test if we got stuff', data);
  });
```

4. $sudo vim /etc/host to run host file on mac
5. enter [www.bangazon.com:8080](url) in browser to test access

## Built With

 - Rails - The framework used
 - Ruby - Language used
 - SQL - database

## Authors

- Clayton Massie- Team Lead -  [https://github.com/clmassie1](url)
- Daniel Babcock - Member -  [https://github.com/DanielBabcock](url)
- Jasmine Quach - Member -  [https://github.com/jasmineq](url)
- Edward Rutz - Member -  [https://github.com/edwardrutz](url)


## Acknowledgments

We would like to thank our fearless leader Darth Jisie, her sidekicks Hannah and Casey, and our fellow students who helped troubleshoot, especially Brooke and the Puddlemere-United team.


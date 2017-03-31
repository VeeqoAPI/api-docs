# Group Customers

Resources related to the customers in the API.

## Customer Collection [/customers{?page_size,page}]

### List All Customers [GET]

+ Parameters
    + page_size: `25` (integer, optional) - Amount of results
        + Default: `12`
    + page: `1` (integer, optional) - Page to show
        + Default: `1`

+ Request (application/json)

    + Headers

            x-api-key: 123

+ Response 200 (application/json)

    + Attributes (array)
        + (Customer)

    + Body

        [{"id":123,"email":"customer@example.com","phone":"01792 720740","mobile":"07329023903","created_by_id":1602,"billing_address":{"id":142,"first_name":"John","last_name":"Doe","company":"","address1":"221 High Street Lane","address2":"Braithwell","city":"Swansea","country":"GB","state":"","zip":"SA1 1NW","phone":"","email":"customer@example.com"},"shipping_addresses":[{"id":11731634,"first_name":"John","last_name":"Doe","company":"","address1":"224 West Lane","address2":"Braithwell","city":"Swansea","country":"GB","state":"","zip":"SA1 1DP", "phone":""}]}]

### Create a Customer [POST]

+ Attributes (Customer Base)

+ Request (application/json)

            {
                "customer": {
                    "id": 123,
                    "email": "customer@example.com",
                    "phone": "01792 720740",
                    "mobile": "07329023903",
                    "billing_address_attributes": {
                        "first_name": "John",
                        "last_name": "Doe",
                        "company": "FooBar Ltd",
                        "address1": "221 High Street Lane",
                        "address2": "",
                        "city": "Swansea",
                        "country": "GB",
                        "zip": "SA1 1NW"
                    }
                }
            }

+ Response 201 (application/json)

    + Attributes (Customer)

    + Body

            {
                "id": 123,
                "email": "customer@example.com",
                "phone": "01792 720740",
                "mobile": "07329023903",
                "billing_address_attributes": {
                    "first_name": "Foo",
                    "last_name": "Bar",
                    "address1": "FooBar Lane",
                    "address2": "",
                    "city": "Swansea",
                    "country": "GB",
                    "zip": "SA1 1NW"
                }
            }

## Customer [/customers/{id}]

+ Attributes (Customer Base)
    + id: `1` (number) - Customer ID

+ Parameters
    + id (integer)

### View Customer Detail [GET]

+ Response 200 (application/json)

        { "id":123, "email": "customer@example.com" }

### Update Customer Detail [PUT]

+ Request (application/json)

    + Attributes (Customer)

    + Body

            {
                "customer": {
                    "email": "customer@example.com"
                }
            }

+ Response 204 (application/json)

    + Attributes (Customer)

    + Body

        {}

### Delete [DELETE]

+ Response 204

## Data Structures

## Customer Base (object, required)
+ email: `customer@example.com` (string, required)

    Email address

+ phone: `01792 720740` (string, optional)

    Phone number

+ email: `07329023903` (string, optional)

    Mobile number

+ billing_address_attributes (object, optional)

    + address1: `294 Queenstown Road` (string, optional)

        Address line 1

    + address2: `Borough` (string, optional)

        Address line 2

    + city: `London` (string, optional)

            City

    + company: `Fashion Co` (string, optional)

        Company

    + country: `GB` (string, optional)

        Country (ISO-3 code)

    + first_name: `Sky` (string, optional)

        First name

    + last_name: `Schonhuber` (string, optional)

        Last name

    + phone: `07734450718` (string, optional)

        Phone number

    + state: `London` (string, optional)

        State

    + zip: `S8 4LT` (string, optional)

        ZIP code

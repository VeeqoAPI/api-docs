# Group Customers

Resources related to the customers in the API.

## Customer Collection [/customers{?page_size,page,query}]

### List All Customers [GET]

+ Parameters
    + page_size: `25` (integer, optional) - Amount of results
        + Default: `12`
    + page: `1` (integer, optional) - Page to show
        + Default: `1`
    + query: `joebloggs@example.com` (string, optional) - Free text search

+ Request (application/json)

    + Headers

            x-api-key: 123

+ Response 200 (application/json)

        [{"id":123,"email":"customer@example.com","phone":"01792 720740","mobile":"07329023903","created_by_id":1602,"billing_address":{"id":142,"first_name":"John","last_name":"Doe","company":"","address1":"221 High Street Lane","address2":"Braithwell","city":"Swansea","country":"GB","state":"","zip":"SA1 1NW","phone":"","email":"customer@example.com"},"shipping_addresses":[{"id":11731634,"first_name":"John","last_name":"Doe","company":"","address1":"224 West Lane","address2":"Braithwell","city":"Swansea","country":"GB","state":"","zip":"SA1 1DP", "phone":""}]}]

### Create a Customer [POST]

+ Attributes
    + email: `customer@example.com` (string, required)
    + phone: `01792 720740` (string)
    + mobile: `07329023903` (string)
    + billing_address_attributes:
        + first_name: `John` (string)
        + last_name: `Doe` (string)
        + company: `FooBar Ltd` (string)
        + address1: `221 High Street Lane` (string)
        + address2: `2nd Address` (string)
        + city: `Swansea` (string)
        + country: `GB` (string)
        + zip: `SA1 1NW` (string)

+ Request (application/json)
    + Headers

            x-api-key: 123
            
    + Body

            {
                "customer": { 
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

+ Parameters
    + id (integer)

### View Customer Detail [GET]

+ Response 200 (application/json)

        { "id":123, "email": "customer@example.com" }

### Update Customer Detail [PUT]

+ Attributes
    + email: `customer@example.com` (string, required)
    + phone: `01792 720740` (string)
    + mobile: `07329023903` (string)
    + billing_address_attributes:
        + first_name: `John` (string)
        + last_name: `Doe` (string)
        + company: `FooBar Ltd` (string)
        + address1: `221 High Street Lane` (string)
        + address2: `2nd Address` (string)
        + city: `Swansea` (string)
        + country: `GB` (string)
        + zip: `SA1 1NW` (string)

+ Request (application/json)

            {
                "customer": {
                    "email": "customer@example.com"
                }
            }

+ Response 204 (application/json)


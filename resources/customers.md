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

        [{"id": 123}]

### Create a Customer [POST]

+ Attributes
    + email: `customer@example.com` (string, required)

+ Request (application/json)

        { "email": "customer@example.com" }

+ Response 201 (application/json)

    + Body

            {
                "id": 123
                "email": "customer@example.com"
            }

## Customer [/customers/{id}]

+ Parameters
    + id (integer)

### View Customer Detail [GET]

+ Response 200 (application/json)

        { "email": "customer@example.com" }

### Update Customer Detail [PUT]

+ Request (application/json)

        { "email": "customer@example.com" }

+ Response 204 (application/json)

### Delete [DELETE]

+ Response 204

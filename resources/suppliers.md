# Group Suppliers

Resources related to the suppliers in the API.

## Supplier Collection [/suppliers{?page_size,page}]

### List All Suppliers [GET]

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

### Create a New Supplier [POST]

+ Attributes
    + name: `ACME` (string, required)

+ Request (application/json)

        { "name": "ACME" }

+ Response 201 (application/json)

    + Body

            {
                "id": 123,
                "name": "ACME"
            }

## Supplier [/suppliers/{id}]

+ Parameters
    + id (integer) - ID of the Supplier

### View a Supplier Detail [GET]

+ Response 200 (application/json)

        { "name": "ACME" }

### Update Supplier Detail [PUT]

+ Request (application/json)

        { "name": "ACME" }

+ Response 204 (application/json)

### Delete [DELETE]

+ Response 204

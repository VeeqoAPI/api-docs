# Group Warehouses

Resources related to the warehouses in the API.

## Warehouse Collection [/warehouses{?page_size,page}]

### List All Warehouses [GET]

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

### Create a Warehouse [POST]

+ Attributes
    + name: `My Warehouse` (string, required)

+ Request (application/json)

        { "name": "My Warehouse" }

+ Response 201 (application/json)

    + Body

            {
                "id": 123
                "name": "My Warehouse"
            }

## Warehouse [/warehouses/{id}]

+ Parameters
    + id (integer) - ID of the Warehouse

### View Warehouse Detail [GET]

+ Response 200 (application/json)

        { "name": "My Warehouse" }

### Update Warehouse Detail [PUT]

+ Request (application/json)

        { "name": "My Warehouse" }

+ Response 204 (application/json)

### Delete [DELETE]

+ Response 204

# Group Delivery Methods

Resources related to the delivery methods in the API.

## Delivery Methods Collection [/delivery_methods{?page_size,page}]

### List All Delivery Methods [GET]

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

### Create a Delivery Method [POST]

+ Attributes
    + name: `Next Day Delivery` (string, required)
    + cost: `3.0` (number, optional)

+ Request (application/json)

        { "name": "Next Day Delivery" }

+ Response 201 (application/json)

    + Body

            {
                "id": 123
                "name": "Next Day Delivery"
            }

## Delivery Method [/delivery_methods/{id}]

+ Parameters
    + id (integer)

### View Delivery Method Detail [GET]

+ Response 200 (application/json)

        { "name": "Next Day Delivery" }

### Update Delivery Method Detail [PUT]

+ Request (application/json)

        { "name": "Next Day Delivery" }

+ Response 204 (application/json)

### Delete [DELETE]

+ Response 204

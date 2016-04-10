# Group Purchase Orders

Resources related to the purchase orders in the API.

## Purchase Order Collection [/purchase_orders{?page_size,page,show_complete}]

### List All Purchase Orders [GET]

+ Parameters
    + page_size: `25` (integer, optional) - Amount of results
        + Default: `12`
    + page: `1` (integer, optional) - Page to show
        + Default: `1`
    + show_complete: `false` (boolean, optional)
        + Default: `false`

+ Request (application/json)

    + Headers

            x-api-key: 123

+ Response 200 (application/json)

        [{"id": 123}]

### Create a New Purchase Order [POST]

+ Attributes
    + number: `PO #123` (string, required) - Humarn readable number of the Order

+ Request (application/json)

        { "number": "PO #123" }

+ Response 201 (application/json)

    + Body

            {
                "id": 123
                "number": "PO #123"
            }

## Purchase Order [/purchase_orders/{id}]

+ Parameters
    + id (integer) - ID of the Order

### View a Purchase Order Detail [GET]

+ Response 200 (application/json)

        { "number": "PO #123" }

### Update Purchase Order Detail [PUT]

+ Request (application/json)

        { "number": "PO #123" }

+ Response 204 (application/json)

### Delete [DELETE]

+ Response 204

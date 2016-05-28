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

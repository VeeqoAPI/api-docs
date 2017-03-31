# Group Warehouses

Resources related to the warehouses in the API.

## Warehouse Collection [/warehouses{?page_size,page}]

### List All Warehouses [GET]

+ Parameters
    + page_size: `25` (number, optional) - Amount of results
        + Default: `12`
    + page: `1` (number, optional) - Page to show
        + Default: `1`

+ Request (application/json)

    + Headers

            x-api-key: 123

+ Response 200 (application/json)

    + Attributes
        + (array)
            + (Warehouse)

    + Body

        [{"id": 123}]

### Create a Warehouse [POST]

+ Attributes
    + warehouse: (Warehouse Base, required)

+ Request (application/json)

    + Body

        { "name": "My Warehouse" }

+ Response 201 (application/json)

    + Attributes (Warehouse)

    + Body

            {
                "id": 123,
                "name": "My Warehouse"
            }

## Warehouse [/warehouses/{id}]

+ Parameters
    + id (number) - ID of the Warehouse

+ Attributes (Warehouse Base)
    + id: `1` (number) - ID of the warehouse

### View Warehouse Detail [GET]

+ Response 200 (application/json)

    + Attributes (Warehouse)

    + Body

        { "name": "My Warehouse" }

### Update Warehouse Detail [PUT]

+ Request (application/json)

    + Attributes
        + warehouse: (Warehouse Base, required)

    + Body

        { "name": "My Warehouse" }

+ Response 204 (application/json)

    + Attributes (Warehouse)

### Delete [DELETE]

+ Response 204

# Data Structures

## Warehouse Base (object, required)
+ name: `My Warehouse` (string, required)

    Warehouse name

+ address_line_1: `294 Queenstown Road` (string, optional)

    Address line 1

+  address_line_2: `Borough` (string, optional)

    Address line 2

+ city: `London` (string, optional)

    City

+ region: `London` (string, optional)

    Region

+ country: `GB` (string, optional)

    Country - ISO3 Code

+ post_code: `S8 4LT` (string, optional)

    ZIP/Post Code

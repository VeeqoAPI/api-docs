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

    + Attributes
        + (array)
            + (Delivery Method)

    + Body

        [{"id": 123}]

### Create a Delivery Method [POST]

+ Attributes
    + delivery_method (object)
        + name: `Next Day Delivery` (string, required) - Name of the delivery method
        + cost: `3.0` (number, optional) - Cost of the delivery to be assigned when added to an order

+ Request (application/json)

        { "name": "Next Day Delivery" }

+ Response 201 (application/json)

    + Attributes (Delivery Method)

    + Body

        {
            "id": 123,
            "name": "Next Day Delivery"
        }

## Delivery Method [/delivery_methods/{id}]

+ Attributes (DeliveryMethod Base)
    + id: `1` (number, required) - Delivery Method ID

+ Parameters
    + id (integer)

### View Delivery Method Detail [GET]

+ Response 200 (application/json)

        { "name": "Next Day Delivery" }

### Update Delivery Method Detail [PUT]

+ Request (application/json)

    + Body

        { "name": "Next Day Delivery" }

+ Response 204 (application/json)

    + Attributes (Delivery Method)

    + Body

        { "name": "Next Day Delivery" }

### Delete [DELETE]

+ Response 204

# Data Structures

## DeliveryMethod Base (object, required)
+ name: `Next Day Delivery` (string, required)

    Delivery method name

+ cost: `3.0` (number, optional)

    Cost of the delivery method to be applied to the order

# Group Allocations

Resources related to the allocations in the API. This allocates a set stock item to a specific order.

To allocate stock to an order, the item must be added as a line item within that order and not be allocated already.

## Allocation Collection [/orders/{order_id}/allocations]

### Create a New Allocation [POST]

+ Parameters
    + order_id: `323498` (integer, required) - Order ID

+ Attributes
    + allocation:
        + warehouse_id: `5` (number, required) - Warehouse ID
        + line_items_attributes (array, required)
            + sellable_id: `1226615` (number, required) - Sellable ID
            + quantity: `1` (number, required) - Amount allocated to that order

+ Request (application/json)

    + Headers

            x-api-key: 123

    + Body

            {
                "allocation": {
                    "warehouse_id": 5,
                    "line_items_attributes": [
                        {
                            "sellable_id": 1226615,
                            "quantity": 1
                        }
                    ]
                }
            }


+ Response 201 (application/json)

    + Headers

            Location:http://app.veeqo.dev/orders/447452

    + Body

         :[Response](responses/allocations/create.json)

## Allocation [/orders/{order_id}/allocations/{allocation_id}]

+ Parameters
    + order_id (integer) - ID of the Order
    + allocation_id (integer) - ID of the Allocation

### Update Allocation Detail [PUT]

+ Request (application/json)

        {
            "warehouse_id": 5,
            "line_items_attributes": [
                {
                    "sellable_id": 1226615,
                    "quantity": 2
                }
            ]
        }

+ Response 200 (application/json)

    +Body
        :[Response](responses/allocations/update.json)

### Delete [DELETE]

+ Request NOTE: DELETE removes all allocations from order. (application/json)

    + Headers

        x-api-key: 123

+ Response 200 (application/json)

    +Body
        :[Response](responses/allocations/delete.json)

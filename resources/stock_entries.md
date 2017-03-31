# Group Stock Entries

Information about creating/updating stock entries in the API. The stock entries data can be retrieved by the /products endpoint.

## Stock Entry [/sellables/{sellable_id}/warehouses/{warehouse_id}/stock_entry]

### Update a Stock Entry [PUT]

+ Parameters
    + sellable_id: `8276918` (number, required) - Sellable ID
    + warehouse_id: `5104` (number, required) - Warehouse ID

+ Attributes
    + stock_entry: (Stock Entry Base, required)

+ Request (application/json)

    + Body

        {
            "stock_entry": {
                "physical_stock_level":  200,
                "infinite": false,
                "location": "Shelf 2B",
            }
        }

+ Response 201 (application/json)

    + Attributes (Stock Entry Response Base)

    + Body

        {
            "allocated_stock_level": 0,
            "available_stock_level": 200,
            "id": 8168819,
            "incoming_stock_level": 0,
            "infinite": false,
            "location": "Shelf 2B",
            "physical_stock_level": 200,
            "sellable_id": 8276918,
            "sellable_on_hand_value": 40000.0,
            "stock_running_low": false,
            "updated_at": "2017-02-28T09:43:22.740Z",
            "warehouse": {
                "address_line_1": "11 New York Street",
                "address_line_2": "",
                "city": "New York",
                "click_and_collect_days": "",
                "click_and_collect_enabled": false,
                "country": "US",
                "created_at": "2016-02-18T13:35:07.042Z",
                "created_by_id": 1602,
                "default_min_reorder": 0,
                "deleted_at": null,
                "deleted_by_id": null,
                "id": 5104,
                "inventory_type_code": "wavg",
                "name": "New York Warehouse",
                "phone": "",
                "post_code": "1223423",
                "region": "NY",
                "requested_carrier_account": null,
                "updated_at": "2016-02-18T13:35:07.042Z",
                "updated_by_id": null,
                "user_id": null
            },
            "warehouse_id": 5104
        }

# Data Structures

## Stock Entry Base (object, required)
+ physical_stock_level: `200` (number, required)

    New stock level

+ infinite: `false` (boolean, required)

    Whether the stock level should be set to infinite

+ location: `Shelf 2B` (string, optional)

    The custom specified location in the warehouse of this stock entry

## Stock Entry Response Base (object)
+ allocated_stock_level: `2` (number)

    Currently allocated amount to orders

+ available_stock_level: `3` (number)

    Current available amount of stock (physical - allocated)

+ incoming_stock_level: `7` (number)

    Current amount that are incoming from Purchase Orders for this Warehouse

+ infinite: `false` (boolean)

    Whether the stock level is infinite

+ location: `Shelf 2B` (string)

    The custom specified location in the warehouse of this stock entry

+ physical_stock_level: `5` (number)

    Current total amount of stock

+ sellable_id: `8276918` (number)

    Sellable ID that the stock entry is of

+ sellable_on_hand_value: `8276918` (number)

    Total on hand value of the sellable that the stock entry is of (cost price multiplied by the total amount)

+ stock_running_low: `false` (boolean)

    Whether the stock is running low for the sellable the stock entry is of (if the stock level is lower than the sellable minimum reorder level)

+ updated_at: `2017-02-28T09:43:22.740Z` (string)

    Last updated date of the stock entry

+ warehouse (Warehouse)

+ warehouse_id: `5104` (number)

    Warehouse ID the stock entry belongs to

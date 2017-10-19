# Group Stock Entries

Information about creating/updating stock entries in the API. The stock entries data can be retrieved by the /products endpoint.

## Stock Entry [/sellables/{sellable_id}/warehouses/{warehouse_id}/stock_entry]

### Show a Stock Entry [GET]

+ Parameters
    + sellable_id: `8276918` (number, required) - Sellable ID
    + warehouse_id: `5104` (number, required) - Warehouse ID
    
+ Request (application/json)

    + Headers

            x-api-key: 123
            
+ Response 200 (application/json)

    + Headers

            Transfer-Encoding: chunked
            X-Runtime: 0.0123

    + Body
    
        :[Response](responses/stock_entries/show.json)

### Update a Stock Entry [PUT]

+ Parameters
    + sellable_id: `8276918` (number, required) - Sellable ID
    + warehouse_id: `5104` (number, required) - Warehouse ID

+ Attributes
    + stock_entry:
        + physical_stock_level: `200` (number, required) - New stock level
        + infinite: `false` (boolean, required) - Whether the stock level should be set to infinite
        + location: `Shelf 2B` (string) - The location in the warehouse of this stock entry

+ Request (application/json)

            {
                "stock_entry": {
                    "physical_stock_level":  200,
                    "infinite": false,
                    "location": "Shelf 2B",
                }
            }

+ Response 200 (application/json)

    + Headers
    
            Transfer-Encoding: chunked
            X-Runtime: 0.0123
    + Body

        :[Response](responses/stock_entries/update.json)


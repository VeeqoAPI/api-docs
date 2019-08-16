# Group Returns

Resources related to the returns in the API. 


## Returns [/orders/{id}/returns]

### Show Returns on Order [GET]

+ Parameters
    + sellable_id: `8276918` (number, required) - Sellable ID

+ Request (application/json)

    + Headers

        x-api-key: 123

+ Response 200 (application/json)

    + Headers

        Transfer-Encoding: chunked
        X-Runtime: 0.0123

    + Body
    
        :[Response](responses/returns/show.json)
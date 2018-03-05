# Group Stores

Resources related to the stores in the API. 

"Stores" are synonymous with "Channels" in Veeqo. A store is an outlet where a user sells their goods. For example; Amazon UK, Ebay UK, Shopify and Amazon DE are all different stores.

## Store Collection [/channels{?page_size,page}]

### List All Stores [GET]

+ Parameters
    + page_size: `25` (integer, optional) - Amount of results
        + Default: `12`
    + page: `1` (integer, optional) - Page to show
        + Default: `1`

+ Request (application/json)

    + Headers

        x-api-key: 123

+ Response 200 (application/json)

    + Headers
    
        X-Runtime: 0.0123      
    
    + Body
    
       :[Response](responses/stores/index.json)

### Create a Store [POST]

+ Attributes
    + name: `Phone` (string, required)
    + type_code: `direct` (enum[string], required)
        + Members
            + `direct`
            + `retail`

+ Request (application/json)

    + Headers

        x-api-key: 123
        
    + Body

        {
            "name": "Phone",
            "type_code": "direct"
        }

+ Response 201 (application/json)

    + Headers
    
        X-Runtime: 0.0123      
    
    + Body
    
        :[Response](responses/stores/show.json)

## Store [/channels/{id}]

+ Parameters
    + id (integer)

### View Store Detail [GET]

+ Response 201 (application/json)

    + Headers
    
        X-Runtime: 0.0123      
    
    + Body
    
        :[Response](responses/stores/show.json)

### Update Store Detail [PUT]

+ Request (application/json)

    + Headers

        x-api-key: 123
        
    + Body
    
       { "name": "Phone" }

+ Response 204 (application/json)

    + Headers
    
        X-Runtime: 0.0123      
    
    + Body
    
        :[Response](responses/stores/show.json)

### Delete [DELETE]

+ Response 204

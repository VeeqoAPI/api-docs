# Group Customers

Resources related to the customers in the API.

## Customer Collection [/customers{?page_size,page,query}]

### List All Customers [GET]

+ Parameters
    + page_size: `25` (integer, optional) - Amount of results
        + Default: `12`
    + page: `1` (integer, optional) - Page to show
        + Default: `1`
    + query: `joebloggs@example.com` (string, optional) - Free text search

+ Request (application/json)

    + Headers

        x-api-key: 123

+ Response 200 (application/json)

    + Headers
    
            Transfer-Encoding: chunked
            X-Total-Count: 123
            X-Total-Pages-Count: 12
            X-Page-Index: 1
            X-Per-Page: 10
            X-Runtime: 0.0123
            
    + Body
        
        :[Response](responses/customers/show.json)

### Create a Customer [POST]

+ Attributes
    + email: `customer@example.com` (string, required)
    + phone: `01792 720740` (string)
    + mobile: `07329023903` (string)
    + notes: `This is some extra info about the customer. 255 Character Limit` (String)
    + billing_address_attributes:
        + first_name: `John` (string)
        + last_name: `Doe` (string)
        + company: `FooBar Ltd` (string)
        + address1: `221 High Street Lane` (string)
        + address2: `2nd Address` (string)
        + city: `Swansea` (string)
        + country: `GB` (string)
        + zip: `SA1 1NW` (string)

+ Request (application/json)
    
    + Headers

        x-api-key: 123
            
    + Body

        :[Request](requests/customers/create.json)

+ Response 201 (application/json)

    + Body

        :[Response](responses/customers/show.json)

## Customer [/customers/{id}]

+ Parameters
    + id (integer)

### View Customer Detail [GET]

+ Request (application/json)

    + Headers

        x-api-key: 123
            

+ Response 200 (application/json)

    + Body
    
        :[Response](responses/customers/show.json)

### Update Customer Detail [PUT]

+ Attributes
    + email: `customer@example.com` (string, required)
    + phone: `01792 720740` (string)
    + mobile: `07329023903` (string)
    + billing_address_attributes:
        + first_name: `John` (string)
        + last_name: `Doe` (string)
        + company: `FooBar Ltd` (string)
        + address1: `221 High Street Lane` (string)
        + address2: `2nd Address` (string)
        + city: `Swansea` (string)
        + country: `GB` (string)
        + zip: `SA1 1NW` (string)

+ Request (application/json)

    + Headers

        x-api-key: 123
            
    + Body
    
        :[Request](requests/customers/create.json)

+ Response 200 (application/json)

    + Body
        
        :[Response](responses/customers/show.json)


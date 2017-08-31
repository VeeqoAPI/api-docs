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

        [
            {
                "id": 123456,
                "cost": "0.0",
                "name": "Default delivery method",
                "user_id": 23005,
                "created_at": "2017-07-04T09:40:37.535Z",
                "updated_at": "2017-07-04T09:40:37.535Z"
            },
            {
                "id": 123457,
                "cost": "2.0",
                "name": "Delivery Method #2",
                "user_id": 23005,
                "created_at": "2017-08-24T12:32:51.118Z",
                "updated_at": "2017-08-24T12:32:51.118Z"
            },
            {
                "id": 123457,
                "cost": "3.0",
                "name": "Delivery Method #3",
                "user_id": 23005,
                "created_at": "2017-08-24T12:33:04.763Z",
                "updated_at": "2017-08-24T12:33:04.763Z"
            }
        ]

### Create a Delivery Method [POST]

+ Attributes
    + name: `Next Day Delivery` (string, required)
    + cost: `3.0` (number, optional)

+ Request (application/json)

    + Headers
    
            x-api-key: 123
            
    + Body
            
            { 
              "name": "Delivery Method #3",
              "cost": "3.0"
            }

+ Response 201 (application/json)

    + Body

            {
                "id": 123458,
                "cost": "3.0",
                "name": "Delivery Method #3",
                "user_id": 23005,
                "created_at": "2017-08-24T12:36:33.934Z",
                "updated_at": "2017-08-24T12:36:33.934Z"
            }

## Delivery Method [/delivery_methods/{id}]

+ Parameters
    + id (integer)

### View Delivery Method Detail [GET]

+ Request (application/json)

    + Headers
    
            x-api-key: 123

+ Response 200 (application/json)

        {
            "id": 123458,
            "cost": "3.0",
            "name": "Delivery Method #3",
            "user_id": 23005,
            "created_at": "2017-08-24T12:33:04.763Z",
            "updated_at": "2017-08-24T12:33:04.763Z"
        }

### Update Delivery Method Detail [PUT]

+ Request (application/json)
    + Headers
        
            x-api-key: 123
                
    + Body

            { 
              "name": "Delivery Method #4",
              "cost": "50.0"
            }

+ Response 200 (application/json)

        {
            "id": 171785,
            "cost": "30.0",
            "name": "Delivery Method #3",
            "user_id": 23005,
            "created_at": "2017-08-24T12:36:33.934Z",
            "updated_at": "2017-08-24T12:38:36.851Z"
        }

### Delete [DELETE]

+ Response 200

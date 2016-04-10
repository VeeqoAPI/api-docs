# Group Stores

Resources related to the stores in the API.

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

        [{"id": 123}]

### Create a Store [POST]

+ Attributes
    + name: `Phone` (string, required)
    + type_code: `direct` (enum[string], required)
        + Members
            + `direct`
            + `retail`

+ Request (application/json)

        {
            "name": "Phone",
            "type_code": "direct"
        }

+ Response 201 (application/json)

    + Body

            {
                "id": 123
                "name": "Phone"
            }

## Store [/channels/{id}]

+ Parameters
    + id (integer)

### View Store Detail [GET]

+ Response 200 (application/json)

        { "name": "Phone" }

### Update Store Detail [PUT]

+ Request (application/json)

        { "name": "Phone" }

+ Response 204 (application/json)

### Delete [DELETE]

+ Response 204

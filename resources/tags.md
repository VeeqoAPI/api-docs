# Group Tags

Resources related to the order tags in the API.

## Tag Collection [/tags]

### List All Tags [GET]

+ Request (application/json)

    + Headers

            x-api-key: 123

+ Response 200 (application/json)

        [
            {
                "colour": "#300084",
                "company_id": 1422,
                "id": 4405,
                "name": "Need Stock",
                "taggings_count": 1
            },
            {
                "colour": "#333399",
                "company_id": 1422,
                "id": 11159,
                "name": "Give me a name",
                "taggings_count": 0
            }
        ]


### Create a New Tag [POST]

+ Attributes
    + colour (string, required) - Hex color code of the tag
    + name (string, required) - Name of the tag

+ Request (application/json)

    + Headers

            x-api-key: 123

    + Body

        {
            "colour": "#993366",
            "name": "Give me a name"
        }

+ Response 201 (application/json)

    + Headers

            X-Request-Id:315d4b059982c66ba9150a552cca8ddc

    + Body

        {
            "colour": "#993366",
            "company_id": 1422,
            "id": 11159,
            "name": "Give me a name",
            "taggings_count": 0
        }

## Tag [/tags/{tag_id}]

+ Parameters
    + tag_id (integer, required) - ID of the Tag

### View an Tag Detail [GET]

+ Response 200 (application/json)

        {
            "colour": "#993366",
            "company_id": 1422,
            "id": 11159,
            "name": "Give me a name",
            "taggings_count": 0
        }

### Delete [DELETE]

+ Response 204

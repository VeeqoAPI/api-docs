# Group Tags

Resources related to the order tags in the API.

## Tag Collection [/tags]

### List All Tags [GET]

+ Request (application/json)

    + Headers
        x-api-key: 123

+ Response 200 (application/json)

    + Attributes
        + (array)
            + (Tag)

    + Body

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
    + tag: (Tag Base, required)

+ Request (application/json)

    + Headers

        x-api-key: 123

    + Body

        {
            "colour": "#993366",
            "name": "Give me a name"
        }

+ Response 201 (application/json)

    + Attributes (Tag)

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

+ Attributes (Tag Base)
    + id: `11159` (number) - Tag ID
    + company_id: `1422` (number) - Company ID tag belongs to
    + taggings_count: `0` (number) - Number of orders the tag is attached to

### View an Tag Detail [GET]

+ Response 200 (application/json)

    + Attributes (Tag)

    + Body

        {
            "colour": "#993366",
            "company_id": 1422,
            "id": 11159,
            "name": "Give me a name",
            "taggings_count": 0
        }

### Delete [DELETE]

+ Response 204

# Data Structures

## Tag Base (object)
+ colour: `#993366` (string)

    Hex code of the color

+ name: `Give me a name` (string)

    Name of the tag

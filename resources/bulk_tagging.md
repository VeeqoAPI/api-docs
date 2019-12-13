# Group Bulk Tagging

Resources related to the bulk tagging of orders and products though the API.

## Bulk Tagging [/bulk_tagging]

### Tagging Orders [POST]

+ Attributes
    + order_ids: 11665891, 11665111  (array[number], required) - Order IDs to tag
    + tag_ids: 144441 (array[number], required) - Tags to apply

+ Request (application/json)

    + Headers

            x-api-key: 123

    + Body

        {
          "order_ids": [
            11665891,
            11665111
          ],
          "tag_ids": [
            144441
          ]
        }

+ Response 200 (application/json)

### Untagging Orders [DELETE]

+ Attributes
    + order_ids: 11665891, 11665111  (array[number], required) - Order IDs to untag
    + tag_ids: 144441 (array[number], required) - Tags to remove from the selected orders

+ Request (application/json)

    + Headers

            x-api-key: 123

    + Body

        {
          "order_ids": [
            11665891,
            11665111
          ],
          "tag_ids": [
            144441
          ]
        }

+ Response 200 (application/json)

### Tagging Products [POST]

+ Attributes
    + product_ids: 12355418, 12355419  (array[number], required) - Product IDs to tag
    + tag_ids: 144441 (array[number], required) - Tags to apply

+ Request (application/json)

    + Headers

            x-api-key: 123

    + Body

        {
          "product_ids": [
            12355418,
            12355419
          ],
          "tag_ids": [
            144441
          ]
        }

+ Response 200 (application/json)

# Group Bulk Tagging

Resources related to the bulk tagging of orders though the API.

## Bulk Tagging [/bulk_tagging]

### Tagging Orders [POST]

+ Attributes
    + order_ids: 11665891, 11665111  (array[number], required) - Orders to tag
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
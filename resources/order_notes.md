# Group Order Notes

Resources related to the updating of order employee notes in the API.

## Order Note Collection [/orders/{order_id}/notes]

### Create a New Order Note [POST]

+ Parameters
    + order_id: `323498` (integer, required) - Order ID

+ Attributes
    + note:
        + text: `Customer wants it very soon` (string, required) - Text to add as the note

+ Request (application/json)

    + Headers

            x-api-key: 123

    + Body

            {
                "note": {
                    "text":  "Customer wants it very soon"
                }
            }


+ Response 201 (application/json)

    + Headers

            X-Request-Id:315d4b059982c66ba9150a552cca8ddc

    + Body

        {
            "created_at": "2017-03-02T13:47:22.026Z",
            "created_by": {
                "email": "john.doe@veeqo.com",
                "id": 1602,
                "login": "John Doe"
            },
            "id": 287170,
            "order_id": 323498,
            "text": "Customer wants it very soon"
        }

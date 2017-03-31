# Group Order Notes

Resources related to the updating of order employee notes in the API.

## Order Note Collection [/orders/{order_id}/notes]

### Create a New Order Note [POST]

+ Parameters
    + order_id: `323498` (integer, required) - Order ID

+ Request (application/json)

    + Attributes (OrderNote Base)

    + Headers

            x-api-key: 123

    + Body

            {
                "note": {
                    "text":  "Customer wants it very soon"
                }
            }


+ Response 201 (application/json)

    + Attributes (OrderNote Base)
        + created_at: `2017-03-02T13:47:22.026Z` (string) - Creation date
        + created_by (object) - Creator object
            + email: `john.doe@veeqo.com` (string) - Creator email address
            + id: `1602` (number) - Creator user ID
            + login: `John Doe` (string) - Creator login name
        + id: `287170` (number) - Order note ID
        + order_id: `323498` (number) - Order ID
        + text: `Customer wants it very soon` (string) - Text content of the note

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

## Data Structures

## OrderNote Base (required)
+ note (object, required)

    + text: `Customer wants it very soon` (string, required)

        Text content of the note

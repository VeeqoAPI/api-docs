# Group Suppliers

Resources related to the suppliers in the API.

## Supplier Collection [/suppliers{?page_size,page}]

### List All Suppliers [GET]

+ Parameters
    + page_size: `25` (integer, optional) - Amount of results
        + Default: `12`
    + page: `1` (integer, optional) - Page to show
        + Default: `1`

+ Request (application/json)

    + Headers

            x-api-key: 123

+ Response 200 (application/json)

    + Attributes
        + (array)
            + (Supplier)

    + Body

        [{"id": 123}]

### Create a New Supplier [POST]

+ Attributes
    + supplier: (Supplier Base, required)

+ Request (application/json)

    + Body

        { "name": "ACME" }

+ Response 201 (application/json)

    + Attributes (Supplier)

    + Body

        {
            "id": 123,
            "name": "ACME"
        }

## Supplier [/suppliers/{id}]

+ Parameters
    + id (integer) - ID of the Supplier

+ Attributes (Supplier Base)
    + id: `11159` (number) - Suppler ID

### View a Supplier Detail [GET]

+ Response 200 (application/json)

    + Attributes (Supplier)

    + Body

        { "name": "ACME" }

### Update Supplier Detail [PUT]

+ Attributes
    + supplier: (Supplier Base, required)

+ Request (application/json)

    + Attributes (Supplier)

    + Body

        { "name": "ACME" }

+ Response 204 (application/json)

### Delete [DELETE]

+ Response 204

# Data Structures

## Supplier Base (object, required)
+ name: `ACME` (number, required)

    Supplier name

+ address_line_1: `294 Queenstown Road` (string, optional)

    Address line 1

+ address_line_2: `Borough` (string, optional) - Address line 2

+ city: `London` (string, optional)

    City

+ region: `London` (string, optional)

    Region

+ country: `GB` (string, optional)

    Country (ISO3 code)

+ post_code: `S8 4LT` (string, optional)

    ZIP/Post Code

+ sales_contact_name: `Mr. Whisker` (string, optional)

    Sales contact name

+ sales_contact_email: `mr.whisker@test.com` (string, optional)

    Sales contact email

+ sales_phone_number: `01792720740` (string, optional)

    Sales phone number

+ accounting_contact_name: `Mr. Bone` (string, optional)

    Accounting contact name

+ accounting_contact_email: `mr.bone@test.com` (string, optional)

    Accounting contact email

+ accounting_phone_number: `01792720740` (string, optional)

    Accounting phone number

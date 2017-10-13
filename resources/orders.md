# Group Orders

Resources related to the orders in the API.

## Order Collection [/orders{?since_id,created_at_min,updated_at_min,page_size,page,query,status,tags,allocated_at}]

### List All Orders [GET]

+ Parameters
    + since_id: `12345` (integer, optional) - Restrict results to after specified ID
    + created_at_min: `2016-03-01 11:10:01` (string, optional) - Show entities created after date (format: YYYY-MM-DD HH:MM:SS)
    + updated_at_min: `2016-03-01 11:10:01` (string, optional) - Show entities updated after date (format: YYYY-MM-DD HH:MM:SS)
    + page_size: `25` (integer, optional) - Amount of results
        + Default: `12`
    + page: `1` (integer, optional) - Page to show
        + Default: `1`
    + query (string, optional) - Free text search
    + status: `awaiting_fulfillment` (enum[string], optional) - Order Status
        + Members
            + `awaiting_payment`
            + `awaiting_stock`
            + `awaiting_fulfillment`
            + `shipped`
            + `on_hold`
            + `cancelled`
            + `refunded`
    + tags: `Give+your+tag+a+name` (string, optional) - Restrict results to orders with a tag of the name provided
    + allocated_at: `3` (integer, optional) - Restrict results to orders allocated at a specific warehouse

+ Request (application/json)

    + Headers

            x-api-key: 123

+ Response 200 (application/json)

    + Body
    
        :[Response](responses/orders/show.json)


### Create a New Order [POST]


+ Attributes

    + order: (Order Base)
        
        + employee_notes_attributes (object, optional) - Internal notes attributes
        
            + note: `Order has been received` (string, optional) - Text for the note
            
        + customer_note_attributes (object, optional) - DETAILS COMING SOON
        
            
    

+ Request Example create order. Everything with an ID must be created before this request. (application/json)

    + Headers

            x-api-key: 123

    + Body

            {
                "order": {
                    "channel_id": "3525",
                    "customer_id": "516208",                
                    "deliver_to_id": "1086864",
                    "delivery_method_id": "92298",
                    "due_date": "",
                    "line_items_attributes": [
                        {
                            "price_per_unit": 13.99,
                            "quantity": "1",
                            "sellable_id": 1226615,
                            "tax_rate": 0,
                            "additional_options": "Free Text"
                        }
                    ],
                    "payment_attributes": {
                        "payment_type": "bank_transfer",
                        "reference_number": "123456789"
                    },
                    "employee_notes_attributes": [
                        {
                            "note": "Order has been received"
                        }
                    ],
                    "customer_note_attributes": {
                        "text": "Ring my doorbell"
                    },
                           
                    "send_notification_email": false,
                    "total_discounts": 0,
                    "total_tax": 0
                }
            }


+ Response 201 (application/json)

    + Headers

            Location:http://app.veeqo.dev/orders/447452
            X-Request-Id:315d4b059982c66ba9150a552cca8ddc

    + Body
    
        :[Response](responses/orders/show.json)

## Order [/orders/{order_id}]

+ Parameters
    + order_id (integer) - ID of the Order
    

### View an Order Detail [GET]

+ Attributes
    + order: (Order Response Base)
        + id: `323498` (number) - Order ID

+ Response 200 (application/json)
    
    + Body
    
        :[Response](responses/orders/show.json)

### Update Order Detail [PUT]

+ Attributes
    + order: (Order Base)
    
    

+ Request To update additional_options in line_item_attributes (application/json)

    + Headers

        x-api-key: 123

    + Body

        {
          "order": {
            "line_items_attributes": [
              {
                "sellable_id": 11022902,
                "quantity": 1,
                "additional_options": "www.veeqo.com"
              }
            ]
          }
        }
         
        
+ Request To add a second item to the order, presuming initial request as above. (application/json)

    + Headers

        x-api-key: 123

    + Body

        {
          "order": {
            "line_items_attributes": [
              {
                "sellable_id": 11022902
              },
              {
                "sellable_id": 11022899,
                "price_per_unit": 1.1,
                "quantity": 99,
                "tax_rate": 0.01,
                "additional_options": "99 bottles sitting on the wall"
              }
            ]
          }
        }
        
+ Request Update customer note, escape characters and punctuation are supported. This overwrites the previous note. (application/json)

    + Headers

        x-api-key: 123

    + Body
    
        {
          "order": {
            "customer_note_attributes": { 
              "text": "To Phil \n\n Have a great week ?! \n\n From Phil" 
            }
          }
        }

+ Response 200 

    + Body
    
        :[Response](responses/orders/show.json)


## Order Notes [/orders/{order_id}/notes]
               
Resources related to the updating of order employee notes in the API.

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

## Data Structures

### Order Base
+ channel_id: `3525` (number, required)

    Store ID - See Store Resource

+ deliver_to_id: `1086864` (number, optional) - **Required if** *deliver_to_attributes* are not included.

    Customer's Shipping Address ID - See Customer Resource

+ delivery_method_id: `92298` (number, required)

    Delivery Method ID - See Delivery Method Resource

+ due_date: `02/03/2017` (string, optional)

    Expected delivery date, appears in the order interface

+ total_discounts: `0` (number, optional)

    Total discounts price for the overall order

+ deliver_to_attributes (object, optional) - Delivery Address Attributes. **Required if** *deliver_to_id* is not included.

    + address1: `294 Queenstown Road` (string, optional)

        Address line 1

    + address2: `Borough` (string, optional)

        Address line 2

    + city: `London` (string, optional)

        City

    + company: `Fashion Co` (string, optional)

        Company

    + country: `GB` (string, optional)

        Country (ISO-3 code)

    + customer_id: `516208` (number, required)

        Customer's ID - See Customer Resource

    + first_name: `Sky` (string, optional)

        First name

    + last_name: `Schonhuber` (string, optional)

        Last name

    + phone: `07734450718` (string, optional)

        Phone number

    + state: `London` (string, optional)

        State

    + zip: `S8 4LT` (string, optional)

        ZIP code

+ line_items_attributes (array, required) - Line item attributes for the line items of the order

    + (object)

        + sellable_id: `1226615` (number, required)

            Sellable ID of the line item - See Product Resource

        + price_per_unit: `13.99` (number, required)

            Price per each unit of the line item in company's local currency

        + quantity: `1` (number, required)

            Quantity of the line item

        + tax_rate: `0.2` (number, optional)

            Tax rate of the line item
            
        + additional_options: `freetext` (string, optional)
            
            Custom field for any additional options

+ payment_attributes (object, optional) - Payment attributes, if the order has a payment

    + payment_type: `cash` (string, required)

        Type of payment

    + reference_number: `123456789` (string, optional)

        A reference string to refer to that payment
        

### Order Response Base

+ allocated_completely: `true` (boolean)

    Whether the order has been allocated fully

+ allocations (array) - Allocations of the order - MORE COMING SOON

    + `(Allocation)` 

+ created_at: `2016-04-06T12:25:40Z` (string)

    Creation date

+ line_items (array) - Line items of the order

    + created_at: `2016-04-06T12:25:40Z` (string)

        Creation Date

    + id: `486254` (number)

        Line Item ID

    + quantity: `1` (number)

        Quantity of line

    + sellable (object) - Sellable of line item

        + active_channels: `REPLACE THIS WITH STORES MODEL` (string)

        + allocated_stock_level_at_all_warehouses: `2` (number)

            Stock amount allocated to all warehouses

        + available_stock_level_at_all_warehouses: `4` (number)

            Stock amount available at all warehouses

        + channel_sellables: `REPLACE THIS WITH CHANNEL SELLABLES MODEL` (string)

        + cost_price: `4` (number)

            Cost price amount

        + created_at: `2016-03-21T11:42:56Z` (string)

            Creation date

        + created_by_id: `1923` (number)

            Creator user ID

        + full_title: `MEN'S SUPERMAN SHORT SLEEVE T-SHIRT [TEST] MEDIUM` (string)

            Full title of the product and sellable combined

        + id: `1226615` (number)

            Sellable ID
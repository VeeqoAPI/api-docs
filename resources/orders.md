# Group Orders

Resources related to the orders in the API. 
Few important things to note. When sending a create order POST request, everything with an ID must be created before the request.

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

    + Headers

        Transfer-Encoding: chunked
        X-Total-Count: 123
        X-Total-Pages-Count: 12
        X-Page-Index: 1
        X-Per-Page: 10
        X-Runtime: 0.0123

    + Body
    
        :[Response](responses/orders/show.json)


### Create a New Order [POST]

+ Attributes

    + order - Note: required IDs must be fetched before the order is created.
    
        + channel_id: `3525` (number, required)
                
            Store ID - See **Stores** Resource
                
        + deliver_to_id: `1086864` (number, required) - **Optional if** *deliver_to_attributes* are included.
        
            Customer's Shipping Address ID - See **Customers** Resource
        
        + delivery_method_id: `92298` (number, required)
        
            Delivery Method ID - See **Delivery Methods** Resource
        
        + due_date: `02/03/2017` (string, optional)
        
            Expected delivery date, appears in the order interface
            
        + number: `123456abc` (string, optional) 
        
            External order number
        
        + total_discounts: `0` (number, optional)
        
            Total discounts price for the overall order
            
        + deliver_to_attributes (deliver_to_attributes) - Delivery Address Attributes. **Optional if** *deliver_to_id* is included. 
            
        + line_items_attributes (array, required) - Line item attributes for the line items of the order
        
            + (line_items_attributes)
            
        + payment_attributes (object, optional) - Payment attributes, if the order has a payment
                        
            + payment_type: `cash` (string, required)
        
                Type of payment - required if order has a payment
        
            + reference_number: `123456789` (string, optional)
        
                A reference string to refer to that payment
            
        + customer_note_attributes (object, optional) - Notes from customer
        
            + text: `Ring the doorbell the leave in secure location` (string, optional) - Text for the note
        
        + employee_note_attributes (array, optional) - Notes from employee
                
            + text: `Order from special customer` (string, optional) - Text for the note
                                 

           
    
+ Request Everything with an ID must be created before this request. (application/json)

    + Headers

        x-api-key: 123

    + Body

        :[Request](requests/orders/create_full.json)
        
+ Request Minimum number of IDs required to created order. Customer is created at the same time as order. (application/json) 

    + Headers

        x-api-key: 123

    + Body

        :[Request](requests/orders/create_full_with_new_customer.json)
        
+ Request Minimum data to send on create order request. (application/json)

    + Headers

        x-api-key: 123

    + Body

        :[Request](requests/orders/create_minimum.json)
        
+ Request Minimum data to create order and new customer (application/json)

    + Headers

        x-api-key: 123

    + Body

        :[Request](requests/orders/create_minimum_with_new_customer.json)


+ Response 201 (application/json)

    + Headers

        Location:http://app.veeqo.dev/orders/:orderID
        X-Runtime: 0.0123

    + Body
    
        :[Response](responses/orders/show.json)

## Order [/orders/{order_id}]

+ Parameters
    + order_id (integer, required) - ID of the Order
    

### View an Order Detail [GET]

+ Attributes
    + order: (Order Response Base)
        + id: `323498` (number) - Order ID

+ Response 200 (application/json)
    
    + Body
    
        :[Response](responses/orders/show.json)

### Update Order Detail [PUT]

+ Attributes

    + order: 
    
        + channel_id: `3525` (number)
                
            Store ID - See **Stores** Resource
                
        + deliver_to_id: `1086864` (number) - **Optional if** *deliver_to_attributes* are included.
        
            Customer's Shipping Address ID - See **Customers** Resource
        
        + delivery_method_id: `92298` (number)
        
            Delivery Method ID - See **Delivery Methods** Resource
        
        + due_date: `02/03/2017` (string, optional)
        
            Expected delivery date, appears in the order interface
        
        + total_discounts: `0` (number, optional)
        
            Total discounts price for the overall order
            
        + deliver_to_attributes (deliver_to_attributes) - Delivery Address Attributes. **Optional if** *deliver_to_id* is included. 
            
        + line_items_attributes (array) - Line item attributes for the line items of the order
        
            + (line_items_attributes)
            
        + customer_note_attributes (object, optional) - Notes from customer
        
            + note: `Ring the doorbell the leave in secure location` (string, optional) - Text for the note
            
        + payment_attributes (object, optional) - Payment attributes, if the order has a payment
                
            + payment_type: `cash` (string)
        
                Type of payment
        
            + reference_number: `123456789` (string, optional)
        
                A reference string to refer to that payment
    
    

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

### Order Base (object)

### deliver_to_attributes (object, required)

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

    Customer's ID - See **Customers** Resource

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

### line_items_attributes

+ sellable_id: `1226615` (number, required)

    Sellable ID of the line item - See **Products** Resource

+ price_per_unit: `13.99` (number, required)

    Price per each unit of the line item in company's local currency

+ quantity: `1` (number, required)

    Quantity of the line item

+ tax_rate: `0.2` (number, optional)

    Tax rate of the line item
    
+ 
    
+ additional_options: `freetext` (string, optional)
    
    Custom field for any additional options
        
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
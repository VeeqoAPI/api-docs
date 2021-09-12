# Group Products

Resources related to the products in the API.

## Product Collection [/products{?since_id,warehouse_id,created_at_min,updated_at_min,page_size,page,query}]

### List All Products [GET]

+ Parameters
    + since_id: `12345` (integer, optional) - Restrict results to after specified ID
    + warehouse_id: `12345` (integer, optional) - Restrict results to products with stock in specific warehouse
    + created_at_min: `2016-03-01 11:10:01` (string, optional) - Show entities created after date (format: YYYY-MM-DD HH:MM:SS)
    + updated_at_min: `2016-03-01 11:10:01` (string, optional) - Show entities updated after date (format: YYYY-MM-DD HH:MM:SS)
    + page_size: `25` (integer, optional) - Amount of results per page
        + Default: `12`
    + page: `1` (integer, optional) - Page to show
        + Default: `1`
    + query (string, optional) - Free text search

+ Request (application/json)

    + Headers

            x-api-key: 123

+ Response 200 (application/json)
    
    + Headers
    
                Transfer-Encoding: chunked
                X-Total-Count: 7
                X-Runtime: 0.123
                
    + Body

        :[Response](responses/products/index.json)
        
### Create a New Product [POST]

+ Attributes
    + title: `T-Shirt` (string, required)
    + description: `In many different sizes` (string)
    + estimated_delivery: `3` (string)
    + notes: `Delivered within 3 days` (string)
    + product_brand_id (string) - ID of the Product Brand it belongs to
    + product_variants_attributes
        + title: `Medium` (string, required)
        + price: `23.0` (number, required)
        + sku_code: `MED` (string, required)
        + weight_grams: `150` (number)
        + upc_code: `23092390` (string)
        + min_reorder_level: `2` (number)
        + quantity_to_reorder: `5` (number)
        + tax_rate: `0.2` (string)
    + images_attributes
        + src: `http://veeqo.com/t-shirt.jpg` (string) - URL to the image of the product
        + display_position: `1` (number)

+ Request (application/json)

    + Headers

            x-api-key: 123

    + Body

        :[Request](requests/products/create.json)

+ Response 201 (application/json)

    + Headers
    
            X-Runtime: 0.0123
                
    + Body
    
        :[Response](responses/products/show.json)

## Product [/products/{product_id}]

+ Parameters
    + product_id: `574316` (integer) - ID of the Product

### View Product Detail [GET]

+ Response 200 (application/json)

    + Body
    
        :[Response](responses/products/show.json)

### Update Product Detail [PUT]

+ Request To update product title (application/json)

    + Headers

        x-api-key: 123

    + Body

         {
           "product": {
             "title": "Golden Retriever Dog - TitleUpdate"
           }
         }
    
    
+ Request To update product variant titles and other attributes. If you get a 500 error, you are submitting an unaccepted attribute. Try making the request more simple. (application/json)

    + Headers

        x-api-key: 123

    + Body
    
        {
          "product": {
            "title": "Golden Retriever Dog - TitleUpdate",
            "description": "Golden Retriever Dog - DescriptionUpdate",
            "notes": "Golden Retriever Dog - NotesUpdate",
            "product_variants_attributes": [
              {
                "id": 14144702,
                "title": "Dog - ProdVariantTitleUpdate",
                "sku_code": "g-dog-1u",
                "cost_price": "100",
                "price": "150"
              },
              {
                "id": 14144703,
                "sku_code": "g-dog-2u",
                "title": "Puppy - ProdVariantTitleUpdate2"
              }
            ]
          }
        }

+ Response 200 (application/json)
    
    + Body
    
        :[Response](responses/products/update.json)

### Delete [DELETE]

+ Response 204

## Product Properties [/products/{product_id}/product_property_specifics/{property_id}]

+ Parameters
    + product_id: `132663` (integer, required) - ID of the Product
    + property_id: `24352077` (integer, optional) - ID of the Property

### View Properties [GET]

+ Response 200 (application/json)

    + Body
    
        {
            "id": 24352077,
            "product_property_id": 132663,
            "product_property_name": "Colour",
            "value": "Blue"
        }

### Update Property Detail [PUT]

+ Request To update product properties. `property_id` will be required. If updates don't take effect, this is because the `product_property_name` does not exist. (application/json)

    + Headers

        x-api-key: 123

    + Body

        {
            "product_property_name": "Size",
            "value": "13"
        }

+ Response 200 (application/json)
    
    + Body
    
        {
            "product_property_name": "Size",
            "value": "13"
        }

### Remove Property From Product [DELETE]

+ Response 204

## Create Properties [/product_properties]

### Create a New Property [POST]

+ Attributes
    + name: `Some Awesome Property` (string, required)

+ Request (application/json)

    + Headers

            x-api-key: 123

    + Body

        {
            "name": "Some Awesome Property"
        }
    
    + Response 201 (application/json)

    + Headers
    
            X-Runtime: 0.0123
                
    + Body
    
        {
            "id": 135498,
            "name": "Some Awesome Property"
        }
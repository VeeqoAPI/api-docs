# Group Products

Resources related to the products in the API.

## Product Collection [/products{?since_id,created_at_min,updated_at_min,page_size,page,query}]

### List All Products [GET]

+ Parameters
    + since_id: `12345` (integer, optional) - Restrict results to after specified ID
    + created_at_min: `2016-03-01 11:10:01` (string, optional) - Show entities created after date (format: YYYY-MM-DD HH:MM:SS)
    + updated_at_min: `2016-03-01 11:10:01` (string, optional) - Show entities updated after date (format: YYYY-MM-DD HH:MM:SS)
    + page_size: `25` (integer, optional) - Amount of results
        + Default: `12`
    + page: `1` (integer, optional) - Page to show
        + Default: `1`
    + query (string, optional) - Free text search

+ Request (application/json)

    + Headers

            x-api-key: 123

+ Response 200 (application/json)

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

            {
              "product": {
                "title": "Golden Retriever Dog - Title",
                "description": "Golden Retriever Dog - Description",
                "estimated_delivery": "",
                "notes": "Golden Retriever Dog - Notes",
                "product_brand_id": null,
                "product_variants_attributes": [
                  {
                    "title": "Dog - ProdVariantTitle",
                    "sku_code": "g-dog-1",
                    "cost_price": "100",
                    "price": "150",
                    "min_reorder_level": "0",
                    "quantity_to_reorder": "0",
                    "tax_rate": "0",
                    "upc_code": "",
                    "model_number": "",
                    "weight_grams": 10.0,
                    "weight_unit": "kg"
                  },
                  {
                    "cost_price": "100",
                    "min_reorder_level": "0",
                    "price": "150",
                    "quantity_to_reorder": "0",
                    "sku_code": "g-dog-2",
                    "tax_rate": "0",
                    "title": "Puppy - ProdVariantTitle",
                    "upc_code": ""
                  }
                ],
                "images_attributes": [
                  {
                    "src": "http://pluspng.com/img-png/dog-png-dog-png-image-267.png",
                    "display_position": "1"
                  },
                  {
                    "src": "http://www.pngmart.com/files/4/Golden-Retriever-Puppy-PNG-Image.png",
                    "display_position": "2"
                  }
                ]
              }
            }

+ Response 201 (application/json)

    + Body
    
        :[Response](responses/products/show.json)

## Product [/products/{product_id}]

+ Parameters
    + product_id: `574316` (integer) - ID of the Product

### View Product Detail [GET]

+ Response 200 (application/json)

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

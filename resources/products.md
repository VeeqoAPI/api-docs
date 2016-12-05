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

        [{"id": 123}]

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
                    "description": "",
                    "estimated_delivery": "",
                    "notes": "",
                    "product_brand_id": null,
                    "product_variants_attributes": [
                        {
                            "cost_price": "10",
                            "min_reorder_level": "0",
                            "price": "15",
                            "quantity_to_reorder": "0",
                            "sku_code": "t-shirt-large",
                            "tax_rate": "0",
                            "title": "Large",
                            "upc_code": ""
                        },
                        {
                            "cost_price": "10",
                            "min_reorder_level": "0",
                            "price": "15",
                            "quantity_to_reorder": "0",
                            "sku_code": "t-shirt-small",
                            "tax_rate": "0",
                            "title": "Small",
                            "upc_code": ""
                        }
                    ],
                    "images_attributes": [
                        {
                            "src": "http://veeqo.com/t-shirt.jpg",
                            "display_position": "1"
                        },
                        {
                            "src": "http://veeqo.com/t-shirt-2.jpg",
                            "display_position": "2"
                        }
                    ]
                }
            }

+ Response 201 (application/json)

    + Body

            {
                "active_channels": [],
                "brand": null,
                "channel_products": [],
                "created_at": "2016-04-06T12:54:15Z",
                "created_by_id": 1923,
                "deleted_at": null,
                "deleted_by_id": null,
                "description": "",
                "estimated_delivery": null,
                "hs_tariff_number": null,
                "id": 574316,
                "image": null,
                "inventory": {
                    "infinite": false
                },
                "main_image": null,
                "main_image_src": null,
                "notes": "",
                "on_hand_value": 0.0,
                "origin_country": null,
                "product_tax_rate_id": null,
                "sellables": [
                    {
                        "active_channels": [],
                        "allocated_stock_level_at_all_warehouses": 0,
                        "available_stock_level_at_all_warehouses": 0,
                        "channel_sellables": [],
                        "cost_price": 10.0,
                        "created_at": "2016-04-06T12:54:16Z",
                        "created_by_id": 1923,
                        "full_title": "T-Shirt Large",
                        "id": 1226620,
                        "images": [],
                        "inventory": {
                            "allocated_stock_level_at_all_warehouses": 0,
                            "available_stock_level_at_all_warehouses": 0,
                            "incoming_stock_level_at_all_warehouses": 0,
                            "infinite": false,
                            "physical_stock_level_at_all_warehouses": 0
                        },
                        "margin": 33.33,
                        "measurement_attributes": {
                            "depth": 0.0,
                            "dimensions_unit": "cm",
                            "height": 0.0,
                            "id": 622137,
                            "width": 0.0
                        },
                        "min_reorder_level": 0,
                        "model_number": "",
                        "on_hand_value": 0.0,
                        "price": 15.0,
                        "profit": 5.0,
                        "quantity_to_reorder": 0,
                        "sellable_title": "Large",
                        "sku_code": "t-shirt-large",
                        "stock_entries": [],
                        "stock_level_at_all_warehouses": 0,
                        "tax_rate": 0.0,
                        "title": "Large",
                        "total_quantity_sold": 0,
                        "type": "ProductVariant",
                        "upc_code": "",
                        "updated_at": "2016-04-06T12:54:16Z",
                        "variant_option_specifics": [],
                        "variant_property_specifics": [],
                        "weight": 0.0
                    },
                    {
                        "active_channels": [],
                        "allocated_stock_level_at_all_warehouses": 0,
                        "available_stock_level_at_all_warehouses": 0,
                        "channel_sellables": [],
                        "cost_price": 10.0,
                        "created_at": "2016-04-06T12:54:16Z",
                        "created_by_id": 1923,
                        "full_title": "T-Shirt Small",
                        "id": 1226621,
                        "images": [],
                        "inventory": {
                            "allocated_stock_level_at_all_warehouses": 0,
                            "available_stock_level_at_all_warehouses": 0,
                            "incoming_stock_level_at_all_warehouses": 0,
                            "infinite": false,
                            "physical_stock_level_at_all_warehouses": 0
                        },
                        "margin": 33.33,
                        "measurement_attributes": {
                            "depth": 0.0,
                            "dimensions_unit": "cm",
                            "height": 0.0,
                            "id": 622138,
                            "width": 0.0
                        },
                        "min_reorder_level": 0,
                        "model_number": "",
                        "on_hand_value": 0.0,
                        "price": 15.0,
                        "profit": 5.0,
                        "quantity_to_reorder": 0,
                        "sellable_title": "Small",
                        "sku_code": "t-shirt-small",
                        "stock_entries": [],
                        "stock_level_at_all_warehouses": 0,
                        "tax_rate": 0.0,
                        "title": "Small",
                        "total_quantity_sold": 0,
                        "type": "ProductVariant",
                        "upc_code": "",
                        "updated_at": "2016-04-06T12:54:16Z",
                        "variant_option_specifics": [],
                        "variant_property_specifics": [],
                        "weight": 0.0
                    }
                ],
                "stock_level_sync_status": {
                    "all_subordinate_entities_synced": null,
                    "last_change_at": null,
                    "last_sync_at": null
                },
                "tags": "",
                "tax_rate": 0,
                "title": "T-Shirt",
                "total_allocated_stock_level": 0,
                "total_available_stock_level": 0,
                "total_quantity_sold": 0,
                "total_stock_level": 0,
                "updated_at": "2016-04-06T12:54:15Z",
                "updated_by_id": null,
                "web_meta_description": "",
                "web_meta_keywords": "",
                "web_meta_title": "",
                "web_page_title": "",
                "web_page_url": "",
                "weight": 0
            }

## Product [/products/{product_id}]

+ Parameters
    + product_id: `574316` (integer) - ID of the Product

### View Product Detail [GET]

+ Response 200 (application/json)

        {
            "id": 123,
            "title": "T-Shirt"
        }

### Update Product Detail [PUT]

+ Request (application/json)

        {
            "product": {
                "product_variants_attributes": [
                    {
                        "id": 1226623,
                        "title": "New SKU Value"
                    }
                ],
            }
        }

+ Response 204 (application/json)

### Delete [DELETE]

+ Response 204

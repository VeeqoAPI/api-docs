# Group Purchase Orders

Resources related to the purchase orders in the API.

## Purchase Order Collection [/purchase_orders{?page_size,page,show_complete}]

### List All Purchase Orders [GET]

+ Parameters
    + page_size: `25` (integer, optional) - Amount of results
        + Default: `12`
    + page: `1` (integer, optional) - Page to show
        + Default: `1`
    + show_complete: `false` (boolean, optional)
        + Default: `false`

+ Request (application/json)

    + Headers

            x-api-key: 123

+ Response 200 (application/json)
    + Headers

            X-Total-Count:1
            ETag:"c6a388fa621b95cd066935db11a4932b"
            X-Request-Id:c740aea2086218d3852a347fbf8b114d

    + Body

            [
                {
                    "actual_delivery_days": null,
                    "actual_return_days": null,
                    "arrival_at_calc": null,
                    "completed_at": null,
                    "created_at": "2016-05-28T21:34:51Z",
                    "created_by_id": 1923,
                    "destination_warehouse_id": 1784,
                    "estimated_delivery_days": 1,
                    "estimated_return_days": null,
                    "id": 491,
                    "line_items": [
                        {
                            "cost": 10.0,
                            "id": 1575,
                            "product_variant": {
                                "active_channels": [],
                                "allocated_stock_level_at_all_warehouses": 1,
                                "available_stock_level_at_all_warehouses": 4,
                                "channel_sellables": [],
                                "cost_price": 0.0,
                                "created_at": "2016-03-21T11:42:56Z",
                                "created_by_id": 1923,
                                "full_title": "APPLE MAGIC MOUSE [TEST]",
                                "id": 1226617,
                                "images": [],
                                "inventory": {
                                    "allocated_stock_level_at_all_warehouses": 1,
                                    "available_stock_level_at_all_warehouses": 4,
                                    "incoming_stock_level_at_all_warehouses": 0,
                                    "infinite": false,
                                    "physical_stock_level_at_all_warehouses": 5
                                },
                                "margin": 100.0,
                                "measurement_attributes": {
                                    "depth": 0.0,
                                    "dimensions_unit": "cm",
                                    "height": 0.0,
                                    "id": 622146,
                                    "width": 0.0
                                },
                                "min_reorder_level": 5,
                                "model_number": "",
                                "on_hand_value": 0.0,
                                "price": 25.99,
                                "product": {
                                    "description": "",
                                    "estimated_delivery": null,
                                    "hs_tariff_number": null,
                                    "id": 574314,
                                    "main_image": {
                                        "binary_data": null,
                                        "content_type": null,
                                        "created_at": "2016-03-21T11:42:57Z",
                                        "created_by_id": null,
                                        "deleted_at": null,
                                        "deleted_by_id": null,
                                        "display_position": null,
                                        "id": 795409,
                                        "picture_content_type": null,
                                        "picture_file_name": null,
                                        "picture_file_size": null,
                                        "picture_order": 9999,
                                        "picture_updated_at": null,
                                        "product_id": 574314,
                                        "src": "https://veeqo-production-storage.s3.amazonaws.com/images/1943652/212ke3aqQ1L_original.jpg",
                                        "updated_at": "2016-03-21T11:42:57Z",
                                        "updated_by_id": null
                                    },
                                    "main_image_src": "https://veeqo-production-storage.s3.amazonaws.com/images/1943652/212ke3aqQ1L_original.jpg",
                                    "origin_country": null,
                                    "tax_rate": 0,
                                    "title": "APPLE MAGIC MOUSE [TEST]",
                                    "weight": 0
                                },
                                "product_title": "APPLE MAGIC MOUSE [TEST]",
                                "profit": 25.99,
                                "quantity_to_reorder": 0,
                                "sellable_title": "",
                                "sku_code": "MB829Z/A",
                                "stock_entries": [
                                    {
                                        "allocated_stock_level": 1,
                                        "available_stock_level": 4,
                                        "id": 1209224,
                                        "incoming_stock_level": 0,
                                        "infinite": false,
                                        "location": null,
                                        "physical_stock_level": 5,
                                        "sellable_id": 1226617,
                                        "sellable_on_hand_value": 0.0,
                                        "stock_running_low": true,
                                        "updated_at": "2016-03-21T11:42:58Z",
                                        "warehouse": {
                                            "address_line_1": "",
                                            "address_line_2": "",
                                            "city": "",
                                            "click_and_collect_days": null,
                                            "click_and_collect_enabled": false,
                                            "country": null,
                                            "created_at": "2016-03-21T11:42:55Z",
                                            "created_by_id": 1923,
                                            "default_min_reorder": 0,
                                            "deleted_at": null,
                                            "deleted_by_id": null,
                                            "id": 1784,
                                            "inventory_type_code": "wavg",
                                            "name": "My Warehouse",
                                            "phone": null,
                                            "post_code": "",
                                            "region": "",
                                            "requested_carrier_account": null,
                                            "updated_at": "2016-03-21T11:42:55Z",
                                            "updated_by_id": null,
                                            "user_id": null
                                        },
                                        "warehouse_id": 1784
                                    }
                                ],
                                "stock_level_at_all_warehouses": 5,
                                "tax_rate": 0.0,
                                "title": "Default",
                                "total_quantity_sold": 1,
                                "type": "ProductVariant",
                                "upc_code": "",
                                "updated_at": "2016-04-26T17:30:12Z",
                                "variant_option_specifics": [],
                                "variant_property_specifics": [],
                                "weight": 0.0
                            },
                            "quantity": 1,
                            "received": null,
                            "received_at": null
                        }
                    ],
                    "number": "PO-0000001",
                    "received_at": null,
                    "returned_at": null,
                    "send_to_supplier": false,
                    "started_at": null,
                    "started_or_returned_at_calc": null,
                    "state": "pending",
                    "supplier": {
                        "accounting_contact_email": "",
                        "accounting_contact_name": "",
                        "accounting_phone_number": null,
                        "address_line_1": "",
                        "address_line_2": "",
                        "bank_account_number": null,
                        "bank_name": null,
                        "bank_sort_code": null,
                        "city": "",
                        "country": "",
                        "created_at": "2016-03-21T11:42:55Z",
                        "created_by_id": 1923,
                        "credit_limit": 0.0,
                        "currency_code": "gbp",
                        "deleted_at": null,
                        "deleted_by_id": null,
                        "id": 1748,
                        "name": "Default supplier",
                        "post_code": "",
                        "region": "",
                        "sales_contact_email": "",
                        "sales_contact_name": "",
                        "sales_phone_number": null,
                        "updated_at": "2016-03-21T11:42:55Z",
                        "updated_by_id": null
                    },
                    "supplier_id": 1748,
                    "total_calc": 10.0,
                    "updated_at": "2016-05-28T21:34:51Z",
                    "updated_by_id": null,
                    "user_id": 1923
                }
            ]

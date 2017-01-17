# Group Orders

Resources related to the orders in the API.

## Order Collection [/orders{?since_id,created_at_min,updated_at_min,page_size,page,query,status}]

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
    + allocated_at: `3` (integer, optional) - Restrict results to orders allocated at a specific warehouse

+ Request (application/json)

    + Headers

            x-api-key: 123

+ Response 200 (application/json)

        [{"id": 123}]

### Create a New Order [POST]

+ Attributes
    + channel_id (number, required) - Store ID
    + deliver_to_id (number, required) - Customer's Shipping Address ID
    + delivery_method_id (number, required) - See Delivery Method Resource

+ Request (application/json)

    + Headers

            x-api-key: 123

    + Body

            {
                "order": {
                    "channel_id": "3525",
                    "customer_id": "516208",
                    "deliver_to_attributes": {
                        "address1": "294 queenstown road",
                        "address2": "",
                        "city": "london",
                        "company": "",
                        "country": "GB",
                        "customer_id": "516208",
                        "first_name": "Sky",
                        "last_name": "Schonhuber",
                        "phone": "07734450718",
                        "state": "london",
                        "zip": "sw8 4lt"
                    },
                    "deliver_to_id": "1086864",
                    "delivery_method_id": "92298",
                    "due_date": "",
                    "line_items_attributes": [
                        {
                            "price_per_unit": 13.99,
                            "quantity": "1",
                            "sellable_id": 1226615,
                            "tax_rate": 0
                        }
                    ],
                    "payment_attributes": {
                        "payment_type": "bank_transfer",
                        "reference_number": "123456789"
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

            {
                "allocated_completely": true,
                "allocations": [
                    {
                        "allocated_by": {
                            "account_owner_user_id": null,
                            "activated_at": null,
                            "activation_code": null,
                            "api_key": "b2d62a6d9dd6c5fff4b2d125214b088f",
                            "company_id": 1717,
                            "created_at": "2016-03-21T11:42:55Z",
                            "created_by_id": null,
                            "default_till_id": null,
                            "deleted_at": null,
                            "deleted_by_id": null,
                            "email": "dev01@bdhr.co",
                            "guide_completed_message_viewed": null,
                            "guide_progress": null,
                            "id": 1923,
                            "location": null,
                            "login": "Dev01",
                            "orders_walkthrough_viewed": false,
                            "password_reset_token": null,
                            "state": "passive",
                            "updated_at": "2016-04-01T09:46:12Z",
                            "updated_by_id": null
                        },
                        "created_at": "2016-04-06T12:25:40Z",
                        "id": 323498,
                        "line_items": [
                            {
                                "created_at": "2016-04-06T12:25:40Z",
                                "id": 486254,
                                "quantity": 1,
                                "sellable": {
                                    "active_channels": [],
                                    "allocated_stock_level_at_all_warehouses": 2,
                                    "available_stock_level_at_all_warehouses": 4,
                                    "channel_sellables": [],
                                    "cost_price": 0.0,
                                    "created_at": "2016-03-21T11:42:56Z",
                                    "created_by_id": 1923,
                                    "full_title": "MEN'S SUPERMAN SHORT SLEEVE T-SHIRT [TEST] MEDIUM",
                                    "id": 1226615,
                                    "images": [],
                                    "inventory": {
                                        "allocated_stock_level_at_all_warehouses": 2,
                                        "available_stock_level_at_all_warehouses": 4,
                                        "incoming_stock_level_at_all_warehouses": 0,
                                        "infinite": false,
                                        "physical_stock_level_at_all_warehouses": 6
                                    },
                                    "margin": 100.0,
                                    "measurement_attributes": {
                                        "depth": 0.0,
                                        "dimensions_unit": "cm",
                                        "height": 0.0,
                                        "id": 622133,
                                        "width": 0.0
                                    },
                                    "min_reorder_level": 0,
                                    "model_number": "",
                                    "on_hand_value": 0.0,
                                    "price": 13.99,
                                    "product": {
                                        "description": "",
                                        "estimated_delivery": null,
                                        "hs_tariff_number": null,
                                        "id": 574313,
                                        "main_image": {
                                            "binary_data": null,
                                            "content_type": null,
                                            "created_at": "2016-03-21T11:42:56Z",
                                            "created_by_id": null,
                                            "deleted_at": null,
                                            "deleted_by_id": null,
                                            "display_position": null,
                                            "id": 795405,
                                            "picture_content_type": null,
                                            "picture_file_name": null,
                                            "picture_file_size": null,
                                            "picture_order": 9999,
                                            "picture_updated_at": null,
                                            "product_id": 574313,
                                            "src": "https://veeqo-production-storage.s3.amazonaws.com/images/2032154/fs004027-new_original.jpg",
                                            "updated_at": "2016-03-21T11:42:56Z",
                                            "updated_by_id": null
                                        },
                                        "main_image_src": "https://veeqo-production-storage.s3.amazonaws.com/images/2032154/fs004027-new_original.jpg",
                                        "origin_country": null,
                                        "tax_rate": 0,
                                        "title": "MEN'S SUPERMAN SHORT SLEEVE T-SHIRT [TEST]",
                                        "weight": 0
                                    },
                                    "product_title": "MEN'S SUPERMAN SHORT SLEEVE T-SHIRT [TEST]",
                                    "profit": 13.99,
                                    "quantity_to_reorder": 0,
                                    "sellable_title": "MEDIUM",
                                    "sku_code": "SUP-007",
                                    "stock_entries": [
                                        {
                                            "allocated_stock_level": 2,
                                            "available_stock_level": 4,
                                            "id": 1209222,
                                            "incoming_stock_level": 0,
                                            "infinite": false,
                                            "location": null,
                                            "physical_stock_level": 6,
                                            "sellable_id": 1226615,
                                            "sellable_on_hand_value": 0.0,
                                            "stock_running_low": false,
                                            "updated_at": "2016-04-06T12:25:40Z",
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
                                    "stock_level_at_all_warehouses": 6,
                                    "tax_rate": 0.0,
                                    "title": "MEDIUM",
                                    "total_quantity_sold": 2,
                                    "type": "ProductVariant",
                                    "upc_code": "",
                                    "updated_at": "2016-03-21T11:42:56Z",
                                    "variant_option_specifics": [],
                                    "variant_property_specifics": [],
                                    "weight": 0.0
                                },
                                "updated_at": "2016-04-06T12:25:40Z"
                            }
                        ],
                        "order_id": 447452,
                        "recommended_shipping_options": null,
                        "shipment": null,
                        "total_weight": 0,
                        "updated_at": "2016-04-06T12:25:40Z",
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
                        }
                    }
                ],
                "buyer_user_id": null,
                "cancel_reason": null,
                "cancelled_at": null,
                "cancelled_by": null,
                "channel": {
                    "active_warehouses": [
                        {
                            "id": 1784,
                            "name": "My Warehouse"
                        }
                    ],
                    "address_line_1": "",
                    "address_line_2": "",
                    "api2cart_store_key": null,
                    "automatic_product_linking_disabled": false,
                    "bridge_url": null,
                    "bridge_verified": false,
                    "channel_warehouses": [
                        {
                            "rank": 1,
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
                            }
                        }
                    ],
                    "city": "",
                    "country": null,
                    "create_product_if_unmatched": true,
                    "created_by_id": 1923,
                    "default_send_shipment_email": true,
                    "default_warehouse": {
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
                    "deleted_at": null,
                    "deleted_by_id": null,
                    "email": "dev01@bdhr.co",
                    "id": 3525,
                    "marketplace_id": null,
                    "mws_auth_token": null,
                    "name": "Phone",
                    "pending_setup": true,
                    "post_code": "",
                    "pull_pending_orders": false,
                    "pulled_orders_at": null,
                    "pulled_products_at": null,
                    "region": "",
                    "remote": false,
                    "seller_id": null,
                    "shopify_url": null,
                    "skip_title_matching": true,
                    "state": "active",
                    "stock_level_update_requests": [],
                    "successfully_fetched_stock_levels_at": null,
                    "type_code": "direct",
                    "update_remote_order": true,
                    "url": null
                },
                "created_at": "2016-04-06T12:25:40Z",
                "created_by": {
                    "company": {
                        "billing_period_started": null,
                        "card_valid": false,
                        "created_at": "2016-03-21T11:42:55Z",
                        "has_right_to_use_veeqo": true,
                        "id": 1717,
                        "name": "Dev01",
                        "referring_website": "",
                        "stripe_customer_id": null,
                        "subscription_plan": {
                            "billing_interval": "month",
                            "id": 62,
                            "name": "Business[Monthly]",
                            "stripe_plan_id": "BUSINESS_MONTHLY_20160309"
                        },
                        "subscription_plan_id": 62,
                        "subscription_status": "trialing",
                        "updated_at": "2016-03-21T11:42:55Z"
                    },
                    "created_at": "2016-03-21T11:42:55Z",
                    "email": "dev01@bdhr.co",
                    "guide_completed_message_viewed": null,
                    "id": 1923,
                    "location": null,
                    "login": "Dev01",
                    "orders_walkthrough_viewed": false,
                    "updated_at": "2016-04-01T09:46:12Z"
                },
                "customer": {
                    "billing_address": {
                        "address1": "294 queenstown road",
                        "address2": null,
                        "city": "london",
                        "company": null,
                        "country": "GB",
                        "email": null,
                        "first_name": "Sky",
                        "id": 1086864,
                        "last_name": "Schonhuber",
                        "phone": "07734450718",
                        "state": "london",
                        "zip": "sw8 4lt"
                    },
                    "created_by_id": 1923,
                    "email": "customer@example.com",
                    "id": 516208,
                    "mobile": null,
                    "phone": "0207376109",
                    "shipping_addresses": [
                        {
                            "address1": "294 queenstown road",
                            "address2": null,
                            "city": "london",
                            "company": null,
                            "country": "GB",
                            "first_name": "Sky",
                            "id": 1086865,
                            "last_name": "Schonhuber",
                            "phone": "07734450718",
                            "state": "london",
                            "zip": "sw8 4lt"
                        },
                        {
                            "address1": "294 queenstown road",
                            "address2": "",
                            "city": "london",
                            "company": "",
                            "country": "GB",
                            "first_name": "Sky",
                            "id": 1086866,
                            "last_name": "Schonhuber",
                            "phone": "07734450718",
                            "state": "london",
                            "zip": "sw8 4lt"
                        },
                        {
                            "address1": "294 queenstown road",
                            "address2": "",
                            "city": "london",
                            "company": "",
                            "country": "GB",
                            "first_name": "Sky",
                            "id": 1086867,
                            "last_name": "Schonhuber",
                            "phone": "07734450718",
                            "state": "london",
                            "zip": "sw8 4lt"
                        }
                    ]
                },
                "customer_note": null,
                "customer_viewable_notes": null,
                "deliver_to": {
                    "address1": "294 queenstown road",
                    "address2": "",
                    "city": "london",
                    "company": "",
                    "country": "GB",
                    "first_name": "Sky",
                    "id": 1086867,
                    "last_name": "Schonhuber",
                    "phone": "07734450718",
                    "state": "london",
                    "zip": "sw8 4lt"
                },
                "delivery_cost": 0.0,
                "delivery_method": {
                    "cost": 0.0,
                    "id": 92298,
                    "name": "Default delivery method",
                    "user_id": 1923
                },
                "due_date": null,
                "employee_notes": [],
                "fulfilled_by_amazon": false,
                "id": 447452,
                "international": false,
                "line_items": [
                    {
                        "additional_options": null,
                        "created_at": "2016-04-06T12:25:40Z",
                        "id": 691572,
                        "price_per_unit": 13.99,
                        "quantity": 1,
                        "sellable": {
                            "active_channels": [],
                            "allocated_stock_level_at_all_warehouses": 2,
                            "available_stock_level_at_all_warehouses": 4,
                            "channel_sellables": [],
                            "cost_price": 0.0,
                            "created_at": "2016-03-21T11:42:56Z",
                            "created_by_id": 1923,
                            "full_title": "MEN'S SUPERMAN SHORT SLEEVE T-SHIRT [TEST] MEDIUM",
                            "id": 1226615,
                            "images": [],
                            "inventory": {
                                "allocated_stock_level_at_all_warehouses": 2,
                                "available_stock_level_at_all_warehouses": 4,
                                "incoming_stock_level_at_all_warehouses": 0,
                                "infinite": false,
                                "physical_stock_level_at_all_warehouses": 6
                            },
                            "margin": 100.0,
                            "measurement_attributes": {
                                "depth": 0.0,
                                "dimensions_unit": "cm",
                                "height": 0.0,
                                "id": 622133,
                                "width": 0.0
                            },
                            "min_reorder_level": 0,
                            "model_number": "",
                            "on_hand_value": 0.0,
                            "price": 13.99,
                            "product": {
                                "description": "",
                                "estimated_delivery": null,
                                "hs_tariff_number": null,
                                "id": 574313,
                                "main_image": {
                                    "binary_data": null,
                                    "content_type": null,
                                    "created_at": "2016-03-21T11:42:56Z",
                                    "created_by_id": null,
                                    "deleted_at": null,
                                    "deleted_by_id": null,
                                    "display_position": null,
                                    "id": 795405,
                                    "picture_content_type": null,
                                    "picture_file_name": null,
                                    "picture_file_size": null,
                                    "picture_order": 9999,
                                    "picture_updated_at": null,
                                    "product_id": 574313,
                                    "src": "https://veeqo-production-storage.s3.amazonaws.com/images/2032154/fs004027-new_original.jpg",
                                    "updated_at": "2016-03-21T11:42:56Z",
                                    "updated_by_id": null
                                },
                                "main_image_src": "https://veeqo-production-storage.s3.amazonaws.com/images/2032154/fs004027-new_original.jpg",
                                "origin_country": null,
                                "tax_rate": 0,
                                "title": "MEN'S SUPERMAN SHORT SLEEVE T-SHIRT [TEST]",
                                "weight": 0
                            },
                            "product_title": "MEN'S SUPERMAN SHORT SLEEVE T-SHIRT [TEST]",
                            "profit": 13.99,
                            "quantity_to_reorder": 0,
                            "sellable_title": "MEDIUM",
                            "sku_code": "SUP-007",
                            "stock_entries": [
                                {
                                    "allocated_stock_level": 2,
                                    "available_stock_level": 4,
                                    "id": 1209222,
                                    "incoming_stock_level": 0,
                                    "infinite": false,
                                    "location": null,
                                    "physical_stock_level": 6,
                                    "sellable_id": 1226615,
                                    "sellable_on_hand_value": 0.0,
                                    "stock_running_low": false,
                                    "updated_at": "2016-04-06T12:25:40Z",
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
                            "stock_level_at_all_warehouses": 6,
                            "tax_rate": 0.0,
                            "title": "MEDIUM",
                            "total_quantity_sold": 2,
                            "type": "ProductVariant",
                            "upc_code": "",
                            "updated_at": "2016-03-21T11:42:56Z",
                            "variant_option_specifics": [],
                            "variant_property_specifics": [],
                            "weight": 0.0
                        },
                        "tax_rate": 0.0,
                        "updated_at": "2016-04-06T12:25:40Z"
                    }
                ],
                "notes": null,
                "number": "#P-447452",
                "packed_completely": null,
                "payment": {
                    "card_number": null,
                    "created_at": "2016-04-06T12:25:40Z",
                    "created_by_id": 1923,
                    "id": 415007,
                    "order_id": 447452,
                    "payment_type": "bank_transfer",
                    "reference_number": "123456789",
                    "updated_at": "2016-04-06T12:25:40Z"
                },
                "picked_completely": null,
                "receipt_printed": false,
                "refund_amount": null,
                "returns": [],
                "send_notification_email": false,
                "send_refund_email": null,
                "shipped_at": null,
                "status": "awaiting_fulfillment",
                "subtotal_price": 13.99,
                "tags": [],
                "till_id": null,
                "total_discounts": 0.0,
                "total_price": 13.99,
                "total_tax": 0.0,
                "updated_at": "2016-04-06T12:25:40Z",
                "updated_by": null
            }

## Order [/orders/{order_id}]

+ Parameters
    + order_id (integer) - ID of the Order

### View an Order Detail [GET]

+ Response 200 (application/json)

        { "number": "Inv #123" }

### Update Order Detail [PUT]

+ Request (application/json)

        { "number": "Inv #123" }

+ Response 204 (application/json)

### Delete [DELETE]

+ Response 204

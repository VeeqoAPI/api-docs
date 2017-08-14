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
            
            [
              {
                "id": 9929008,
                "cancel_reason": null,
                "refund_amount": null,
                "send_refund_email": null,
                "cancelled_at": null,
                "created_at": "2017-07-18T08:36:30.793Z",
                "customer_viewable_notes": null,
                "delivery_cost": 10,
                "due_date": null,
                "international": false,
                "notes": null,
                "number": "#P-9929008",
                "receipt_printed": false,
                "send_notification_email": false,
                "shipped_at": null,
                "status": "awaiting_payment",
                "subtotal_price": 65,
                "total_discounts": 0,
                "total_price": 75,
                "total_tax": 0,
                "total_fees": 0,
                "buyer_user_id": null,
                "updated_at": "2017-07-18T08:36:31.210Z",
                "payment": null,
                "till_id": null,
                "fulfilled_by_amazon": false,
                "is_amazon_prime": false,
                "is_amazon_premium_order": false,
                "discount_amount": 0,
                "restock_shipped_items": false,
                "tags": [
                ],
                "cancelled_by": null,
                "created_by": {
                  "id": 1602,
                  "login": "Calvin Hughes",
                  "email": "calvin@veeqo.com",
                  "created_at": "2014-12-09T13:04:40.169Z",
                  "updated_at": "2017-07-06T10:35:41.620Z",
                  "location": null,
                  "guide_completed_message_viewed": false,
                  "orders_walkthrough_viewed": true,
                  "company": {
                    "id": 1422,
                    "name": "Calvin's Test Company",
                    "created_at": "2014-12-09T13:04:40.180Z",
                    "updated_at": "2017-07-06T10:35:41.625Z",
                    "referring_website": "http://www.veeqo.com/orders",
                    "card_valid": false,
                    "stripe_customer_id": "XXXXXX",
                    "has_right_to_use_veeqo": true,
                    "subscription_status": "unpaid",
                    "billing_period_started": null,
                    "subscription_plan_id": 42,
                    "chargify_product_handle": "trial",
                    "chargify_current_plan": null,
                    "setting": {
                      "currency_code": "GBP",
                      "phone_number": ""
                    },
                    "subscription_plan": {
                      "id": 42,
                      "name": "[Veeqo]",
                      "stripe_plan_id": "ANNUAL",
                      "billing_interval": "year"
                    }
                  }
                },
                "updated_by": null,
                "delivery_method": {
                  "id": 168036,
                  "name": "Testing Ship",
                  "cost": 10
                },
                "deliver_to": {
                  "id": 20196626,
                  "first_name": "",
                  "last_name": "",
                  "email": null,
                  "company": "",
                  "address1": "",
                  "address2": "",
                  "city": "",
                  "country": "GB",
                  "state": "",
                  "zip": "",
                  "phone": ""
                },
                "channel": {
                  "id": 44730,
                  "type_code": "direct",
                  "created_by_id": 1602,
                  "name": "Direct Zone",
                  "currency_code": "GBP",
                  "state": "active",
                  "url": null,
                  "shopify_url": null,
                  "ebay_url": null,
                  "ebay_site_code_id": 3,
                  "country": "",
                  "region": "",
                  "city": "",
                  "address_line_1": "",
                  "address_line_2": "",
                  "post_code": "",
                  "pulled_products_at": null,
                  "pulled_orders_at": null,
                  "pending_setup": true,
                  "seller_id": null,
                  "marketplace_id": null,
                  "mws_auth_token": null,
                  "deleted_at": null,
                  "deleted_by_id": null,
                  "api2cart_store_key": null,
                  "bridge_url": null,
                  "bridge_verified": null,
                  "pull_pending_orders": false,
                  "default_send_shipment_email": false,
                  "automatic_product_linking_disabled": false,
                  "update_remote_order": true,
                  "successfully_fetched_stock_levels_at": null,
                  "create_product_if_unmatched": true,
                  "skip_title_matching": true,
                  "email": "calvin@veeqo.com",
                  "skip_fba_orders_and_products": true,
                  "pull_stock_level_required": true,
                  "pull_product_properties": true,
                  "pull_historical_orders": false,
                  "adjust_orders_tax_rate": null,
                  "send_notification_emails_to_customers": false,
                  "end_ebay_listing_on_out_of_stock": false,
                  "update_product_attributes": true,
                  "max_qty_to_advert": 0,
                  "min_threshold_qty": 0,
                  "percent_of_qty": 100,
                  "always_set_qty": 0,
                  "veeqo_dictates_stock_level": false,
                  "with_fba": false,
                  "first_sync_finish_notice_marked_as_read": false,
                  "pull_unpaid_shopify_orders": false,
                  "create_product_on_ended_listings": true,
                  "link_to_products_linked_to_current_channel": true,
                  "weight_unit": null,
                  "import_cost_price": true,
                  "veeqo_dictates_price": false,
                  "keep_inventory_tracking_value": false,
                  "marketplace_country": null,
                  "time_zone": null,
                  "time_zone_offset": null,
                  "amazon_fulfillment_enabled": false,
                  "channel_warehouses": [
                  ],
                  "warehouses": [
                  ],
                  "stock_level_update_requests": [
                  ],
                  "amazon_fulfillment_setting": null,
                  "amazon_channel_specific": null,
                  "api2cart_channel_specific": null,
                  "additional_api2cart_site": null,
                  "time_since_product_sync": null,
                  "time_since_order_sync": null,
                  "time_since_tried_fetch_stock_level": null,
                  "time_since_successfully_fetch_stock_level": null,
                  "default_warehouse": {
                    "id": 21540,
                    "name": "Warehouse for stocktake",
                    "user_id": null,
                    "address_line_1": "",
                    "address_line_2": "",
                    "city": "",
                    "region": "",
                    "country": "GB",
                    "post_code": "",
                    "inventory_type_code": "wavg",
                    "default_min_reorder": 0,
                    "click_and_collect_enabled": false,
                    "click_and_collect_days": "",
                    "created_by_id": 1602,
                    "updated_by_id": null,
                    "deleted_at": null,
                    "deleted_by_id": null,
                    "created_at": "2017-04-06T11:20:11.576Z",
                    "updated_at": "2017-04-06T11:20:11.576Z",
                    "phone": "072727362323",
                    "requested_carrier_account": null
                  },
                  "remote": false
                },
                "customer": {
                  "id": 9398949,
                  "email": "",
                  "phone": "",
                  "mobile": "",
                  "created_by_id": 1602,
                  "billing_address": {
                    "id": 20196625,
                    "first_name": "",
                    "last_name": "",
                    "address1": "",
                    "address2": "",
                    "city": "",
                    "company": "",
                    "country": "GB",
                    "state": "",
                    "zip": "",
                    "phone": "",
                    "email": null
                  },
                  "shipping_addresses": [
                    {
                      "id": 20196626,
                      "first_name": "",
                      "last_name": "",
                      "email": null,
                      "company": "",
                      "address1": "",
                      "address2": "",
                      "city": "",
                      "country": "GB",
                      "state": "",
                      "zip": "",
                      "phone": ""
                    }
                  ]
                },
                "customer_note": {
                  "id": 631184,
                  "text": "",
                  "order_id": 9929008
                },
                "allocations": [
                  {
                    "id": 7453667,
                    "updated_at": "2017-07-18T08:36:31.199Z",
                    "created_at": "2017-07-18T08:36:30.883Z",
                    "total_weight": 0,
                    "weight_unit": "g",
                    "allocated_by_id": 1602,
                    "order_id": 9929008,
                    "packed_completely": null,
                    "line_items": [
                      {
                        "id": 9916181,
                        "quantity": 1,
                        "picked_quantity": 0,
                        "created_at": "2017-07-18T08:36:30.897Z",
                        "updated_at": "2017-07-18T08:36:30.897Z",
                        "sellable": {
                          "total_quantity_sold": 1,
                          "cost_price": 0,
                          "allocated_stock_level_at_all_warehouses": 1,
                          "id": 5174376,
                          "type": "ProductVariant",
                          "title": "Default",
                          "sku_code": "apple0001",
                          "upc_code": "",
                          "model_number": "",
                          "price": 65,
                          "min_reorder_level": 0,
                          "quantity_to_reorder": 0,
                          "created_by_id": 1602,
                          "created_at": "2016-05-12T16:41:25.833Z",
                          "updated_at": "2017-07-18T08:36:31.221Z",
                          "weight_grams": 0,
                          "weight_unit": "g",
                          "product_title": "Apple MLA02ZM/A Magic Mouse 2",
                          "full_title": "Apple MLA02ZM/A Magic Mouse 2",
                          "sellable_title": "",
                          "profit": 65,
                          "margin": 100,
                          "tax_rate": 0,
                          "product": {
                            "id": 2722119,
                            "title": "Apple MLA02ZM/A Magic Mouse 2",
                            "weight": 0,
                            "origin_country": null,
                            "hs_tariff_number": null,
                            "tax_rate": 0,
                            "main_image": {
                              "id": 3308131,
                              "binary_data": null,
                              "content_type": null,
                              "display_position": 1,
                              "created_by_id": null,
                              "updated_by_id": null,
                              "deleted_at": null,
                              "deleted_by_id": null,
                              "created_at": "2016-05-12T16:41:25.906Z",
                              "updated_at": "2016-05-12T16:41:25.906Z",
                              "src": "http://veeqo-shop.wales/wp-content/uploads/2016/03/234934511.jpeg",
                              "product_id": 2722119,
                              "picture_file_name": null,
                              "picture_content_type": null,
                              "picture_file_size": null,
                              "picture_updated_at": null,
                              "picture_order": 9999
                            },
                            "estimated_delivery": null,
                            "deleted_at": null,
                            "deleted_by_id": null,
                            "description": "Complete your Mac desktop setup by adding Apple's Magic Mouse 2 to the table. Using the hugely successful Multi-Touch technology, this sleek wireless mouse has a built-in battery to make it lighter and easier to manoeuvre.\r\n\r\nSwiping between web pages and scrolling has become effortless, as has getting started because this smart mouse is ready to go the moment you take it out of the box.\r\n\r\nCompatible with Bluetooth-enabled Macs with OS X v10.11 or later.",
                            "main_image_src": "http://veeqo-shop.wales/wp-content/uploads/2016/03/234934511.jpeg"
                          },
                          "stock_entries": [
                            {
                              "id": 9508989,
                              "sellable_id": 5174376,
                              "warehouse_id": 21540,
                              "infinite": false,
                              "allocated_stock_level": 1,
                              "warehouse": {
                                "id": 21540,
                                "name": "Warehouse for stocktake",
                                "user_id": null,
                                "address_line_1": "",
                                …
                              },
                              "location": null,
                              "stock_running_low": true,
                              "updated_at": "2017-07-18T08:36:30.909Z",
                              "incoming_stock_level": 0,
                              "physical_stock_level": 0,
                              "available_stock_level": -1,
                              "sellable_on_hand_value": 0
                            },
                            {
                              "id": 5799635,
                              "sellable_id": 5174376,
                              "warehouse_id": 5104,
                              "infinite": false,
                              "allocated_stock_level": 0,
                              "warehouse": {
                                "id": 5104,
                                "name": "New York Warehouse",
                                "user_id": null,
                                "address_line_1": "11 New York Street",
                                "address_line_2": "",
                                "city": "New York",
                                "region": "NY",
                                "country": "US",
                                "post_code": "1223423",
                                "inventory_type_code": "wavg",
                                "default_min_reorder": 0,
                                "click_and_collect_enabled": false,
                                "click_and_collect_days": "",
                                "created_by_id": 1602,
                                "updated_by_id": null,
                                "deleted_at": null,
                                "deleted_by_id": null,
                                "created_at": "2016-02-18T13:35:07.042Z",
                                "updated_at": "2016-02-18T13:35:07.042Z",
                                "phone": "748485528593",
                                "requested_carrier_account": null
                              },
                              "location": null,
                              "stock_running_low": false,
                              "updated_at": "2017-03-03T15:09:32.682Z",
                              "incoming_stock_level": 0,
                              "physical_stock_level": 20,
                              "available_stock_level": 20,
                              "sellable_on_hand_value": 0
                            },
                            {
                              "id": 5799636,
                              "sellable_id": 5174376,
                              "warehouse_id": 5087,
                              "infinite": false,
                              "allocated_stock_level": 0,
                              "warehouse": {
                                "id": 5087,
                                "name": "LONDON WAREHOUSE",
                                "user_id": null,
                                "address_line_1": "11 Victoria Street",
                                "address_line_2": "",
                                "city": "London",
                                "region": "London",
                                "country": "GB",
                                "post_code": "TW17 0QD",
                                "inventory_type_code": "wavg",
                                "default_min_reorder": 0,
                                "click_and_collect_enabled": false,
                                "click_and_collect_days": "",
                                "created_by_id": 1602,
                                "updated_by_id": null,
                                "deleted_at": null,
                                "deleted_by_id": null,
                                "created_at": "2016-02-17T14:15:07.422Z",
                                "updated_at": "2016-02-17T14:15:07.422Z",
                                "phone": "0209991111",
                                "requested_carrier_account": null
                              },
                              "location": null,
                              "stock_running_low": false,
                              "updated_at": "2017-03-03T15:09:32.632Z",
                              "incoming_stock_level": 0,
                              "physical_stock_level": 20,
                              "available_stock_level": 20,
                              "sellable_on_hand_value": 0
                            },
                            {
                              "id": 5799637,
                              "sellable_id": 5174376,
                              "warehouse_id": 1943,
                              "infinite": false,
                              "allocated_stock_level": 0,
                              "warehouse": {
                                "id": 1943,
                                "name": "Swansea Warehouse",
                                "user_id": null,
                                "address_line_1": "Birmingham Road IT TEST",
                                "address_line_2": "Oldbury IT TEST",
                                "city": "West Midlands IT TEST",
                                "region": "Birmingham",
                                "country": "GB",
                                "post_code": "B69 4DA",
                                "inventory_type_code": "wavg",
                                "default_min_reorder": 0,
                                "click_and_collect_enabled": false,
                                "click_and_collect_days": null,
                                "created_by_id": 1602,
                                "updated_by_id": 1602,
                                "deleted_at": null,
                                "deleted_by_id": null,
                                "created_at": "2015-03-06T10:13:35.000Z",
                                "updated_at": "2016-08-16T14:12:29.346Z",
                                "phone": "01792 720760",
                                "requested_carrier_account": true
                              },
                              "location": null,
                              "stock_running_low": false,
                              "updated_at": "2017-03-03T15:09:32.577Z",
                              "incoming_stock_level": 0,
                              "physical_stock_level": 20,
                              "available_stock_level": 20,
                              "sellable_on_hand_value": 0
                            }
                          ],
                          "variant_option_specifics": [
                            {
                              "id": 3533284,
                              "product_specific_id": 738005,
                              "product_property_id": 15579,
                              "product_property_name": "Bundle Contents",
                              "value": "green car, red car"
                            }
                          ],
                          "variant_property_specifics": [
                          ],
                          "measurement_attributes": {
                            "id": 4547025,
                            "width": 0,
                            "height": 0,
                            "depth": 0,
                            "dimensions_unit": "cm"
                          },
                          "images": [
                          ],
                          "active_channels": [
                          ],
                          "channel_sellables": [
                            {
                              "id": 7030554,
                              "remote_title": "Default",
                              "remote_sku": "apple0001",
                              "remote_price": 65,
                              "remote_grams": "0",
                              "remote_profit": 65,
                              "remote_margin": 100,
                              "currency_code": null,
                              "channel_product_id": 3570666,
                              "channel_product_remote_title": "Apple MLA02ZM/A Magic Mouse 2",
                              "channel_product_status": "pulled",
                              "sellable_id": 5174376,
                              "failures": [
                              ],
                              "channel": {
                                "id": 13073,
                                "name": "Marcs Woo",
                                "type_code": "woocommerce",
                                "veeqo_dictates_price": false,
                                "currency_code": "GBP",
                                "marketplace_country": null
                              }
                            }
                          ],
                          "available_stock_level_at_all_warehouses": 59,
                          "stock_level_at_all_warehouses": 60,
                          "on_hand_value": 0,
                          "inventory": {
                            "infinite": false,
                            "physical_stock_level_at_all_warehouses": 60,
                            "allocated_stock_level_at_all_warehouses": 1,
                            "available_stock_level_at_all_warehouses": 59,
                            "incoming_stock_level_at_all_warehouses": 0
                          },
                          "weight": 0
                        }
                      }
                    ],
                    "recommended_shipping_options": null,
                    "matched_parcel_properties_criteria": null,
                    "shipment": null,
                    "warehouse": {
                      "address_line_1": "",
                      "address_line_2": "",
                      "city": "",
                      "click_and_collect_days": "",
                      "click_and_collect_enabled": false,
                      "country": "GB",
                      "created_at": "2017-04-06T11:20:11.576Z",
                      "created_by_id": 1602,
                      "default_min_reorder": 0,
                      "deleted_at": null,
                      "deleted_by_id": null,
                      "id": 21540,
                      "inventory_type_code": "wavg",
                      "name": "Warehouse for stocktake",
                      "phone": "072727362323",
                      "post_code": "",
                      "region": "",
                      "updated_at": "2017-04-06T11:20:11.576Z",
                      "updated_by_id": null,
                      "requested_carrier_account": null
                    }
                  }
                ],
                "employee_notes": [
                ],
                "line_items": [
                  {
                    "id": 13341798,
                    "price_per_unit": 65,
                    "quantity": 1,
                    "tax_rate": 0,
                    "total_discount": 0,
                    "additional_options": null,
                    "created_at": "2017-07-18T08:36:30.816Z",
                    "updated_at": "2017-07-18T08:36:30.816Z",
                    "sellable": {
                      "total_quantity_sold": 1,
                      "cost_price": 0,
                      "allocated_stock_level_at_all_warehouses": 1,
                      "id": 5174376,
                      "type": "ProductVariant",
                      "title": "Default",
                      "sku_code": "apple0001",
                      "upc_code": "",
                      "model_number": "",
                      "price": 65,
                      "min_reorder_level": 0,
                      "quantity_to_reorder": 0,
                      "created_by_id": 1602,
                      "created_at": "2016-05-12T16:41:25.833Z",
                      "updated_at": "2017-07-18T08:36:31.221Z",
                      "weight_grams": 0,
                      "weight_unit": "g",
                      "product_title": "Apple MLA02ZM/A Magic Mouse 2",
                      "full_title": "Apple MLA02ZM/A Magic Mouse 2",
                      "sellable_title": "",
                      "profit": 65,
                      "margin": 100,
                      "tax_rate": 0,
                      "product": {
                        "id": 2722119,
                        "title": "Apple MLA02ZM/A Magic Mouse 2",
                        "weight": 0,
                        "origin_country": null,
                        "hs_tariff_number": null,
                        "tax_rate": 0,
                        "main_image": {
                          "id": 3308131,
                          "binary_data": null,
                          "content_type": null,
                          "display_position": 1,
                          "created_by_id": null,
                          …
                        },
                        "estimated_delivery": null,
                        "deleted_at": null,
                        "deleted_by_id": null,
                        "description": "Complete your Mac desktop setup by adding Apple's Magic Mouse 2 to the table. Using the hugely successful Multi-Touch technology, this sleek wireless mouse has a built-in battery to make it lighter and easier to manoeuvre.\r\n\r\nSwiping between web pages and scrolling has become effortless, as has getting started because this smart mouse is ready to go the moment you take it out of the box.\r\n\r\nCompatible with Bluetooth-enabled Macs with OS X v10.11 or later.",
                        "main_image_src": "http://veeqo-shop.wales/wp-content/uploads/2016/03/234934511.jpeg"
                      },
                      "stock_entries": [
                        {
                          "id": 9508989,
                          "sellable_id": 5174376,
                          "warehouse_id": 21540,
                          "infinite": false,
                          "allocated_stock_level": 1,
                          "warehouse": {
                            "id": 21540,
                            "name": "Warehouse for stocktake",
                            "user_id": null,
                            "address_line_1": "",
                            "address_line_2": "",
                            "city": "",
                            "region": "",
                            "country": "GB",
                            "post_code": "",
                            "inventory_type_code": "wavg",
                            "default_min_reorder": 0,
                            "click_and_collect_enabled": false,
                            "click_and_collect_days": "",
                            "created_by_id": 1602,
                            "updated_by_id": null,
                            "deleted_at": null,
                            "deleted_by_id": null,
                            "created_at": "2017-04-06T11:20:11.576Z",
                            "updated_at": "2017-04-06T11:20:11.576Z",
                            "phone": "072727362323",
                            "requested_carrier_account": null
                          },
                          "location": null,
                          "stock_running_low": true,
                          "updated_at": "2017-07-18T08:36:30.909Z",
                          "incoming_stock_level": 0,
                          "physical_stock_level": 0,
                          "available_stock_level": -1,
                          "sellable_on_hand_value": 0
                        }
                        {"id": 5799635, "sellable_id": 5174376, "warehouse_id": 5104, "infinite": false, "allocated_stock_level": 0,…},
                        {"id": 5799636, "sellable_id": 5174376, "warehouse_id": 5087, "infinite": false, "allocated_stock_level": 0,…},
                        {"id": 5799637, "sellable_id": 5174376, "warehouse_id": 1943, "infinite": false, "allocated_stock_level": 0,…}
                      ],
                      "variant_option_specifics": [
                        {
                          "id": 3533284,
                          "product_specific_id": 738005,
                          "product_property_id": 15579,
                          "product_property_name": "Bundle Contents",
                          "value": "green car, red car"
                        }
                      ],
                      "variant_property_specifics": [
                      ],
                      "measurement_attributes": {
                        "id": 4547025,
                        "width": 0,
                        "height": 0,
                        "depth": 0,
                        "dimensions_unit": "cm"
                      },
                      "images": [
                      ],
                      "active_channels": [
                      ],
                      "channel_sellables": [
                        {
                          "id": 7030554,
                          "remote_title": "Default",
                          "remote_sku": "apple0001",
                          "remote_price": 65,
                          "remote_grams": "0",
                          "remote_profit": 65,
                          "remote_margin": 100,
                          "currency_code": null,
                          "channel_product_id": 3570666,
                          "channel_product_remote_title": "Apple MLA02ZM/A Magic Mouse 2",
                          "channel_product_status": "pulled",
                          "sellable_id": 5174376,
                          "failures": [
                          ],
                          "channel": {
                            "id": 13073,
                            "name": "Marcs Woo",
                            "type_code": "woocommerce",
                            "veeqo_dictates_price": false,
                            "currency_code": "GBP",
                            "marketplace_country": null
                          }
                        }
                      ],
                      "available_stock_level_at_all_warehouses": 59,
                      "stock_level_at_all_warehouses": 60,
                      "on_hand_value": 0,
                      "inventory": {
                        "infinite": false,
                        "physical_stock_level_at_all_warehouses": 60,
                        "allocated_stock_level_at_all_warehouses": 1,
                        "available_stock_level_at_all_warehouses": 59,
                        "incoming_stock_level_at_all_warehouses": 0
                      },
                      "weight": 0
                    }
                  }
                ],
                "returns": [
                ],
                "allocated_completely": true,
                "picked_completely": false,
                "fulfillment_channel_order": null
              },
              {"id": 9846645, "cancel_reason": null, "refund_amount": null, "send_refund_email": null, "cancelled_at": null,…},
              {"id": 9846642, "cancel_reason": null, "refund_amount": null, "send_refund_email": null, "cancelled_at": null,…},
              {"id": 9820712, "cancel_reason": null, "refund_amount": null, "send_refund_email": null, "cancelled_at": null,…},
              {"id": 9820640, "cancel_reason": null, "refund_amount": null, "send_refund_email": null, "cancelled_at": null,…},
              {"id": 9820639, "cancel_reason": null, "refund_amount": null, "send_refund_email": null, "cancelled_at": null,…},
              {"id": 9638151, "cancel_reason": null, "refund_amount": null, "send_refund_email": null, "cancelled_at": null,…},
              {"id": and so on}
            ]

            



### Create a New Order [POST]

+ Attributes
    + channel_id (number, required) - Store ID of the store that the order was placed from.
    + customer_id (number, required) - Customer ID
    + deliver_to_attributes (array, optional) - Delivery Details. Either this or "deliver_to_id" are required.
    + deliver_to_id (number, optional) - Customer's Shipping Address ID. Either this or "deliver_to_attributes" are required.
    + delivery_method_id (number, required) - See Delivery Method Resource
    + due_date (number, optional) - DETAILS COMING SOON
    + line_items_attributes (array, required) - DETAILS COMING SOON
    + payment_attributes (array, required) - DETAILS COMING SOON
    + employee_notes_attributes (array, optional) - DETAILS COMING SOON
    + customer_note_attributes (array, optional) - DETAILS COMING SOON
    + send_notification_email (boolean, required) - DETAILS COMING SOON
    + total_discounts (number, required) - DETAILS COMING SOON
    + total_tax (number, required) -DETAILS COMING SOON

                
    

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

        {
          "id": 9820640,
          "cancel_reason": null,
          "refund_amount": null,
          "send_refund_email": null,
          "cancelled_at": null,
          "created_at": "2017-07-11T11:46:52.309Z",
          "customer_viewable_notes": null,
          "delivery_cost": 0,
          "due_date": null,
          "international": null,
          "notes": null,
          "number": "#P-9820640",
          "receipt_printed": false,
          "send_notification_email": false,
          "shipped_at": null,
          "status": "awaiting_payment",
          "subtotal_price": 0.05,
          "total_discounts": 0,
          "total_price": 0.05,
          "total_tax": 0,
          "total_fees": 0,
          "buyer_user_id": null,
          "updated_at": "2017-07-11T11:46:52.461Z",
          "payment": null,
          "till_id": 20,
          "fulfilled_by_amazon": false,
          "is_amazon_prime": false,
          "is_amazon_premium_order": false,
          "discount_amount": 0,
          "restock_shipped_items": false,
          "tags":[
          ],
          "cancelled_by": null,
          "created_by":{
            "id": 1602,
            "login": "Calvin Hughes",
            "email": "calvin@veeqo.com",
            "created_at": "2014-12-09T13:04:40.169Z",
            "updated_at": "2017-07-06T10:35:41.620Z",
            "location": null,
            "guide_completed_message_viewed": false,
            "orders_walkthrough_viewed": true,
            "company":{
              "id": 1422,
              "name": "Calvin's Test Company",
              "created_at": "2014-12-09T13:04:40.180Z",
              "updated_at": "2017-07-06T10:35:41.625Z",
              "referring_website": "http://www.veeqo.com/orders",
              "card_valid": false,
              "stripe_customer_id": "xxxxx",
              "has_right_to_use_veeqo": true,
              "subscription_status": "unpaid",
              "billing_period_started": null,
              "subscription_plan_id": 42,
              "chargify_product_handle": "trial",
              "chargify_current_plan": null,
              "setting":{
                "currency_code": "GBP",
                "phone_number": ""
              },
              "subscription_plan":{
                "id": 42,
                "name": "[Veeqo]",
                "stripe_plan_id": "ANNUAL",
                "billing_interval": "year"
              }
            }
          },
          "updated_by": null,
          "delivery_method": null,
          "deliver_to": null,
          "channel":{
            "id": 4898,
            "type_code": "point_of_sale",
            "created_by_id": 1602,
            "name": "New York Store",
            "currency_code": "GBP",
            "state": "inactive",
            "url": "",
            "shopify_url": "",
            "ebay_url": "",
            "ebay_site_code_id": 3,
            "country": "",
            "region": "",
            "city": "",
            "address_line_1": "",
            "address_line_2": "",
            "post_code": "",
            "pulled_products_at": null,
            "pulled_orders_at": null,
            "pending_setup": true,
            "seller_id": null,
            "marketplace_id": null,
            "mws_auth_token": null,
            "deleted_at": "2017-06-12T11:05:31.184Z",
            "deleted_by_id": 1602,
            "api2cart_store_key": null,
            "bridge_url": null,
            "bridge_verified": null,
            "pull_pending_orders": false,
            "default_send_shipment_email": true,
            "automatic_product_linking_disabled": false,
            "update_remote_order": true,
            "successfully_fetched_stock_levels_at": null,
            "create_product_if_unmatched": true,
            "skip_title_matching": true,
            "email": "calvin@veeqo.com",
            "skip_fba_orders_and_products": false,
            "pull_stock_level_required": true,
            "pull_product_properties": false,
            "pull_historical_orders": false,
            "adjust_orders_tax_rate": false,
            "send_notification_emails_to_customers": false,
            "end_ebay_listing_on_out_of_stock": false,
            "update_product_attributes": true,
            "max_qty_to_advert": 0,
            "min_threshold_qty": 0,
            "percent_of_qty": 100,
            "always_set_qty": 0,
            "veeqo_dictates_stock_level": true,
            "with_fba": false,
            "first_sync_finish_notice_marked_as_read": false,
            "pull_unpaid_shopify_orders": false,
            "create_product_on_ended_listings": true,
            "link_to_products_linked_to_current_channel": false,
            "weight_unit": null,
            "import_cost_price": false,
            "veeqo_dictates_price": false,
            "keep_inventory_tracking_value": false,
            "marketplace_country": null,
            "time_zone": null,
            "time_zone_offset": null,
            "amazon_fulfillment_enabled": false,
            "channel_warehouses":[
              {
                "id": 51375,
                "active": false,
                "rank": 1,
                "warehouse":{
                  "id": 1447,
                  "name": "Default warehouse",
                  "user_id": null,
                  "address_line_1": "",
                  "address_line_2": "",
                  "city": "",
                  "region": "",
                  "country": null,
                  "post_code": "",
                  "inventory_type_code": "wavg",
                  "default_min_reorder": 0,
                  "click_and_collect_enabled": false,
                  "click_and_collect_days": null,
                  "created_by_id": 1602,
                  "updated_by_id": null,
                  "deleted_at": "2015-02-25T12:31:57.226Z",
                  "deleted_by_id": 1602,
                  "created_at": "2014-12-09T13:04:40.250Z",
                  "updated_at": "2015-02-25T12:31:57.226Z",
                  "phone": null,
                  "requested_carrier_account": false
                }
              },
              {
                "id": 51376,
                "active": false,
                "rank": 2,
                "warehouse":{"id": 1667, "name": "Warehouse 1", "user_id": null, "address_line_1": "DSSDASDA",…}
              },
              {
                "id": 51377,
                "active": false,
                "rank": 3,
                "warehouse":{"id": 2546, "name": "New York Warehouse", "user_id": null, "address_line_1": "11 New Yorker Street",…}
              },
              {
                "id": 51378,
                "active": true,
                "rank": 4,
                "warehouse":{"id": 1943, "name": "Swansea Warehouse", "user_id": null, "address_line_1": "Birmingham Road IT TEST",…}
              },
              {
                "id": 51379,
                "active": true,
                "rank": 5,
                "warehouse":{"id": 5087, "name": "LONDON WAREHOUSE", "user_id": null, "address_line_1": "11 Victoria Street",…}
              },
              {
                "id": 53856,
                "active": true,
                "rank": 6,
                "warehouse":{"id": 5104, "name": "New York Warehouse", "user_id": null, "address_line_1": "11 New York Street",…}
              }
            ],
            "warehouses":[
              {
                "id": 1447,
                "name": "Default warehouse"
              },
              {"id": 1667, "name": "Warehouse 1"},
              {"id": 2546, "name": "New York Warehouse"},
              {"id": 1943, "name": "Swansea Warehouse"},
              {"id": 5087, "name": "LONDON WAREHOUSE"},
              {"id": 5104, "name": "New York Warehouse"}
            ],
            "stock_level_update_requests":[
            ],
            "amazon_fulfillment_setting": null,
            "amazon_channel_specific": null,
            "api2cart_channel_specific": null,
            "additional_api2cart_site": null,
            "time_since_product_sync": null,
            "time_since_order_sync": null,
            "time_since_tried_fetch_stock_level": null,
            "time_since_successfully_fetch_stock_level": null,
            "default_warehouse":{
              "id": 2546,
              "name": "New York Warehouse",
              "user_id": null,
              "address_line_1": "11 New Yorker Street",
              "address_line_2": "New York",
              "city": "Big Apple",
              "region": "USA",
              "country": "AF",
              "post_code": "10005",
              "inventory_type_code": "wavg",
              "default_min_reorder": 0,
              "click_and_collect_enabled": false,
              "click_and_collect_days": "",
              "created_by_id": 1602,
              "updated_by_id": 1602,
              "deleted_at": "2015-10-29T12:01:33.046Z",
              "deleted_by_id": 1602,
              "created_at": "2015-05-07T14:58:40.336Z",
              "updated_at": "2015-10-29T12:01:33.046Z",
              "phone": "0113 857 940",
              "requested_carrier_account": false
            },
            "remote": false
          },
          "customer":{
            "id": 7796330,
            "email": "calvin+testzapie3343r@veeqo.com",
            "phone": "073298239832",
            "mobile": null,
            "created_by_id": 1602,
            "billing_address":{
              "id": 16589986,
              "first_name": "Phil",
              "last_name": "Reynolds",
              "address1": "TechHub 4th Floor",
              "address2": "221 High Street",
              "city": "Swansea",
              "company": null,
              "country": "GB",
              "state": null,
              "zip": "SA18BG",
              "phone": null,
              "email": null
            },
            "shipping_addresses":[
              {
                "id": 16589996,
                "first_name": "Phil",
                "last_name": "Reynolds",
                "email": null,
                "company": null,
                "address1": "TechHub 4th Floor",
                "address2": "221 High Street",
                "city": "Swansea",
                "country": "GB",
                "state": null,
                "zip": "SA18BG",
                "phone": null
              }
            ]
          },
          "customer_note": null,
          "allocations":[
            {
              "id": 7367541,
              "updated_at": "2017-07-11T11:46:52.457Z",
              "created_at": "2017-07-11T11:46:52.342Z",
              "total_weight": 0,
              "weight_unit": "g",
              "allocated_by_id": 1602,
              "order_id": 9820640,
              "packed_completely": null,
              "line_items":[
                {
                  "id": 9797344,
                  "quantity": 1,
                  "picked_quantity": 0,
                  "created_at": "2017-07-11T11:46:52.344Z",
                  "updated_at": "2017-07-11T11:46:52.344Z",
                  "sellable":{
                    "total_quantity_sold": 13,
                    "cost_price": 0.08,
                    "allocated_stock_level_at_all_warehouses": 13,
                    "id": 4725910,
                    "type": "ProductVariant",
                    "title": "Default Title",
                    "sku_code": "1",
                    "upc_code": "",
                    "model_number": "",
                    "price": 0.05,
                    "min_reorder_level": 0,
                    "quantity_to_reorder": 0,
                    "created_by_id": 1602,
                    "created_at": "2016-04-12T15:21:10.240Z",
                    "updated_at": "2017-07-12T13:21:32.908Z",
                    "weight_grams": 0,
                    "weight_unit": "g",
                    "product_title": "Carrier Bag",
                    "full_title": "Carrier Bag",
                    "sellable_title": "",
                    "profit": -0.03,
                    "margin": -60,
                    "tax_rate": 0,
                    "product":{
                      "id": 2510956,
                      "title": "Carrier Bag",
                      "weight": 0,
                      "origin_country": null,
                      "hs_tariff_number": null,
                      "tax_rate": 0,
                      "main_image": null,
                      "estimated_delivery": null,
                      "deleted_at": null,
                      "deleted_by_id": null,
                      "description": "",
                      "main_image_src": null
                    },
                    "stock_entries":[
                      {
                        "id": 4609829,
                        "sellable_id": 4725910,
                        "warehouse_id": 1943,
                        "infinite": false,
                        "allocated_stock_level": 8,
                        "warehouse":{"id": 1943, "name": "Swansea Warehouse", "user_id": null, "address_line_1": "Birmingham Road IT TEST",…},
                        "location": null,
                        "stock_running_low": false,
                        "updated_at": "2017-07-12T12:35:25.437Z",
                        "incoming_stock_level": 0,
                        "physical_stock_level": 20,
                        "available_stock_level": 12,
                        "sellable_on_hand_value": 1.6
                      },
                      {"id": 9628948, "sellable_id": 4725910, "warehouse_id": 21540, "infinite": false, "allocated_stock_level": 0,…},
                      {"id": 6529562, "sellable_id": 4725910, "warehouse_id": 5087, "infinite": false, "allocated_stock_level": 4,…},
                      {"id": 6529561, "sellable_id": 4725910, "warehouse_id": 5104, "infinite": false, "allocated_stock_level": 0,…}
                    ],
                    "variant_option_specifics":[
                      {
                        "id": 934732,
                        "product_specific_id": null,
                        "product_property_id": 1993,
                        "product_property_name": "Title",
                        "value": "Default Title"
                      }
                    ],
                    "variant_property_specifics":[
                    ],
                    "measurement_attributes":{
                      "id": 5368518,
                      "width": 33,
                      "height": 44,
                      "depth": 0,
                      "dimensions_unit": "cm"
                    },
                    "images":[
                    ],
                    "active_channels":[
                    ],
                    "channel_sellables":[
                      {
                        "id": 6373922,
                        "remote_title": "Default Title",
                        "remote_sku": "1",
                        "remote_price": 0.05,
                        "remote_grams": "0",
                        "remote_profit": -0.03,
                        "remote_margin": -60,
                        "currency_code": null,
                        "channel_product_id": 3298836,
                        "channel_product_remote_title": "Carrier Bag",
                        "channel_product_status": "pulled",
                        "sellable_id": 4725910,
                        "failures":[
                        ],
                        "channel":{
                          "id": 3104,
                          "name": "Shopify Store",
                          "type_code": "shopify",
                          "veeqo_dictates_price": true,
                          "currency_code": "GBP",
                          "marketplace_country": null
                        }
                      }
                    ],
                    "available_stock_level_at_all_warehouses": 48,
                    "stock_level_at_all_warehouses": 61,
                    "on_hand_value": 4.88,
                    "inventory":{
                      "infinite": false,
                      "physical_stock_level_at_all_warehouses": 61,
                      "allocated_stock_level_at_all_warehouses": 13,
                      "available_stock_level_at_all_warehouses": 48,
                      "incoming_stock_level_at_all_warehouses": 0
                    },
                    "weight": 0
                  }
                }
              ],
              "recommended_shipping_options": null,
              "matched_parcel_properties_criteria": null,
              "shipment": null,
              "warehouse":{
                "address_line_1": "Birmingham Road IT TEST",
                "address_line_2": "Oldbury IT TEST",
                "city": "West Midlands IT TEST",
                "click_and_collect_days": null,
                "click_and_collect_enabled": false,
                "country": "GB",
                "created_at": "2015-03-06T10:13:35.000Z",
                "created_by_id": 1602,
                "default_min_reorder": 0,
                "deleted_at": null,
                "deleted_by_id": null,
                "id": 1943,
                "inventory_type_code": "wavg",
                "name": "Swansea Warehouse",
                "phone": "01792 720760",
                "post_code": "B69 4DA",
                "region": "Birmingham",
                "updated_at": "2016-08-16T14:12:29.346Z",
                "updated_by_id": 1602,
                "requested_carrier_account": true
              }
            }
          ],
          "employee_notes":[
          ],
          "line_items":[
            {
              "id": 13196961,
              "price_per_unit": 0.05,
              "quantity": 1,
              "tax_rate": 0,
              "total_discount": 0,
              "additional_options": null,
              "created_at": "2017-07-11T11:46:52.316Z",
              "updated_at": "2017-07-11T11:46:52.316Z",
              "sellable":{
                "total_quantity_sold": 13,
                "cost_price": 0.08,
                "allocated_stock_level_at_all_warehouses": 13,
                "id": 4725910,
                "type": "ProductVariant",
                "title": "Default Title",
                "sku_code": "1",
                "upc_code": "",
                "model_number": "",
                "price": 0.05,
                "min_reorder_level": 0,
                "quantity_to_reorder": 0,
                "created_by_id": 1602,
                "created_at": "2016-04-12T15:21:10.240Z",
                "updated_at": "2017-07-12T13:21:32.908Z",
                "weight_grams": 0,
                "weight_unit": "g",
                "product_title": "Carrier Bag",
                "full_title": "Carrier Bag",
                "sellable_title": "",
                "profit": -0.03,
                "margin": -60,
                "tax_rate": 0,
                "product":{
                  "id": 2510956,
                  "title": "Carrier Bag",
                  "weight": 0,
                  "origin_country": null,
                  "hs_tariff_number": null,
                  "tax_rate": 0,
                  "main_image": null,
                  "estimated_delivery": null,
                  "deleted_at": null,
                  "deleted_by_id": null,
                  "description": "",
                  "main_image_src": null
                },
                "stock_entries":[
                  {
                    "id": 4609829,
                    "sellable_id": 4725910,
                    "warehouse_id": 1943,
                    "infinite": false,
                    "allocated_stock_level": 8,
                    "warehouse":{"id": 1943, "name": "Swansea Warehouse", "user_id": null, "address_line_1": "Birmingham Road IT TEST",…},
                    "location": null,
                    "stock_running_low": false,
                    "updated_at": "2017-07-12T12:35:25.437Z",
                    "incoming_stock_level": 0,
                    "physical_stock_level": 20,
                    "available_stock_level": 12,
                    "sellable_on_hand_value": 1.6
                  },
                  {"id": 9628948, "sellable_id": 4725910, "warehouse_id": 21540, "infinite": false, "allocated_stock_level": 0,…},
                  {"id": 6529562, "sellable_id": 4725910, "warehouse_id": 5087, "infinite": false, "allocated_stock_level": 4,…},
                  {"id": 6529561, "sellable_id": 4725910, "warehouse_id": 5104, "infinite": false, "allocated_stock_level": 0,…}
                ],
                "variant_option_specifics":[
                  {
                    "id": 934732,
                    "product_specific_id": null,
                    "product_property_id": 1993,
                    "product_property_name": "Title",
                    "value": "Default Title"
                  }
                ],
                "variant_property_specifics":[
                ],
                "measurement_attributes":{
                  "id": 5368518,
                  "width": 33,
                  "height": 44,
                  "depth": 0,
                  "dimensions_unit": "cm"
                },
                "images":[
                ],
                "active_channels":[
                ],
                "channel_sellables":[
                  {
                    "id": 6373922,
                    "remote_title": "Default Title",
                    "remote_sku": "1",
                    "remote_price": 0.05,
                    "remote_grams": "0",
                    "remote_profit": -0.03,
                    "remote_margin": -60,
                    "currency_code": null,
                    "channel_product_id": 3298836,
                    "channel_product_remote_title": "Carrier Bag",
                    "channel_product_status": "pulled",
                    "sellable_id": 4725910,
                    "failures":[
                    ],
                    "channel":{
                      "id": 3104,
                      "name": "Shopify Store",
                      "type_code": "shopify",
                      "veeqo_dictates_price": true,
                      "currency_code": "GBP",
                      "marketplace_country": null
                    }
                  }
                ],
                "available_stock_level_at_all_warehouses": 48,
                "stock_level_at_all_warehouses": 61,
                "on_hand_value": 4.88,
                "inventory":{
                  "infinite": false,
                  "physical_stock_level_at_all_warehouses": 61,
                  "allocated_stock_level_at_all_warehouses": 13,
                  "available_stock_level_at_all_warehouses": 48,
                  "incoming_stock_level_at_all_warehouses": 0
                },
                "weight": 0
              }
            }
          ],
          "returns":[
          ],
          "allocated_completely": true,
          "picked_completely": false,
          "fulfillment_channel_order": null
        }

### Update Order Detail [PUT]

+ Request (application/json)

        { "number": "Inv #123" }

+ Response 204 (application/json)

### Delete [DELETE]

+ Response 204

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

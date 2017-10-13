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
            
        [{"id":11203048,"cancel_reason":null,"refund_amount":null,"send_refund_email":null,"cancelled_at":null,"created_at":"2017-09-25T16:04:52.266Z","customer_viewable_notes":null,"delivery_cost":3.0,"due_date":null,"international":false,"notes":null,"number":"#P-11203048","receipt_printed":false,"send_notification_email":false,"shipped_at":null,"status":"awaiting_fulfillment","subtotal_price":1.6,"total_discounts":0.0,"total_price":4.6,"total_tax":0.0,"total_fees":0.0,"buyer_user_id":null,"updated_at":"2017-09-25T16:04:52.541Z","payment":{"id":11023542,"order_id":11203048,"payment_type":"bank_transfer","reference_number":"123456789","created_at":"2017-09-25T16:04:52.281Z","updated_at":"2017-09-25T16:04:52.312Z","card_number":null,"created_by_id":23005},"till_id":null,"fulfilled_by_amazon":false,"is_amazon_prime":false,"is_amazon_premium_order":false,"discount_amount":0.0,"restock_shipped_items":false,"tags":[],"cancelled_by":null,"created_by":{"id":23005,"login":"Phil Reynolds","email":"phil@veeqo.com","created_at":"2017-07-04T09:40:37.515Z","updated_at":"2017-09-06T08:09:47.646Z","location":null,"guide_completed_message_viewed":null,"orders_walkthrough_viewed":false,"company":{"id":21314,"name":"Phil","created_at":"2017-07-04T09:40:37.495Z","updated_at":"2017-09-06T08:09:47.653Z","referring_website":null,"card_valid":false,"stripe_customer_id":null,"has_right_to_use_veeqo":true,"subscription_status":"trialing","billing_period_started":null,"subscription_plan_id":62,"chargify_product_handle":"trial","chargify_current_plan":{"name":"Unlimited","planId":"chargify-unlimited-monthly-veeqo","chargeType":"monthly","pricing":"£999","setup_fee":null,"product_handle":"monthly-unlimited-999","product_url":null,"features":{"users":"Unlimited","products":"Unlimited","orders":"Unlimited","stores":"Unlimited","support":"Unlimited","product_pusher":true,"stock_take":true},"available":false},"setting":{"currency_code":"GBP","phone_number":"07828170428"},"subscription_plan":{"id":62,"name":"Business[Monthly]","stripe_plan_id":"BUSINESS_MONTHLY_20160309","billing_interval":"month"}}},"updated_by":null,"delivery_method":{"id":171785,"name":"Delivery Method #3","cost":3.0},"deliver_to":{"id":22487393,"first_name":"Phil","last_name":"Reynolds","email":null,"company":"Veeqo","address1":"221b High Street","address2":"","city":"Swansea","country":"GB","state":"london","zip":"Sa1 2bt","phone":"07734450718"},"channel":{"id":45465,"type_code":"direct","created_by_id":23005,"name":"Phone","currency_code":null,"state":"inactive","url":null,"shopify_url":null,"ebay_url":null,"ebay_site_code_id":3,"country":null,"region":"","city":"","address_line_1":"","address_line_2":"","post_code":"","pulled_products_at":null,"pulled_orders_at":null,"pending_setup":true,"seller_id":null,"marketplace_id":null,"mws_auth_token":null,"deleted_at":null,"deleted_by_id":null,"api2cart_store_key":null,"bridge_url":null,"bridge_verified":null,"pull_pending_orders":false,"default_send_shipment_email":true,"automatic_product_linking_disabled":false,"update_remote_order":true,"successfully_fetched_stock_levels_at":null,"create_product_if_unmatched":true,"skip_title_matching":true,"email":"phil@veeqo.com","skip_fba_orders_and_products":true,"pull_stock_level_required":true,"pull_product_properties":true,"pull_historical_orders":false,"adjust_orders_tax_rate":null,"send_notification_emails_to_customers":false,"end_ebay_listing_on_out_of_stock":false,"update_product_attributes":true,"max_qty_to_advert":0,"min_threshold_qty":0,"percent_of_qty":100,"always_set_qty":0,"veeqo_dictates_stock_level":false,"with_fba":false,"first_sync_finish_notice_marked_as_read":false,"pull_unpaid_shopify_orders":false,"create_product_on_ended_listings":true,"link_to_products_linked_to_current_channel":true,"weight_unit":null,"import_cost_price":true,"veeqo_dictates_price":false,"keep_inventory_tracking_value":false,"marketplace_country":null,"time_zone":null,"time_zone_offset":null,"amazon_fulfillment_enabled":false,"channel_warehouses":[],"warehouses":[],"stock_level_update_requests":[],"amazon_fulfillment_setting":null,"amazon_channel_specific":null,"api2cart_channel_specific":null,"additional_api2cart_site":null,"time_since_product_sync":null,"time_since_order_sync":null,"time_since_tried_fetch_stock_level":null,"time_since_successfully_fetch_stock_level":null,"default_warehouse":{"id":22668,"name":"My Warehouse","user_id":null,"address_line_1":"","address_line_2":"","city":"","region":"","country":null,"post_code":"","inventory_type_code":"wavg","default_min_reorder":0,"click_and_collect_enabled":false,"click_and_collect_days":null,"created_by_id":23005,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-07-04T09:40:37.539Z","updated_at":"2017-07-04T09:40:37.539Z","phone":null,"requested_carrier_account":null},"remote":false},"customer":{"id":10347636,"email":null,"phone":null,"mobile":null,"created_by_id":23005,"billing_address":null,"shipping_addresses":[]},"customer_note":{"id":730212,"text":"Ring my doorbell","order_id":11203048},"allocations":[{"id":8403080,"updated_at":"2017-09-25T16:04:52.536Z","created_at":"2017-09-25T16:04:52.333Z","total_weight":0,"weight_unit":"g","allocated_by_id":23005,"order_id":11203048,"packed_completely":null,"line_items":[{"id":11224673,"quantity":2,"picked_quantity":0,"created_at":"2017-09-25T16:04:52.338Z","updated_at":"2017-09-25T16:04:52.338Z","sellable":{"total_quantity_sold":16,"allocated_stock_level_at_all_warehouses":16,"id":11022899,"type":"ProductVariant","title":"","sku_code":"evian2l","upc_code":"3068320052007","model_number":"","price":1.0,"cost_price":0.2,"min_reorder_level":0,"quantity_to_reorder":0,"created_by_id":23005,"created_at":"2017-08-21T11:42:56.767Z","updated_at":"2017-09-25T16:04:52.548Z","weight_grams":0.0,"weight_unit":"g","product_title":"Evian","full_title":"Evian","sellable_title":"","profit":0.8,"margin":80.0,"tax_rate":0.0,"product":{"id":5793638,"title":"Evian","weight":0,"origin_country":"GB","hs_tariff_number":null,"tax_rate":0,"main_image":{"id":10319273,"binary_data":null,"content_type":null,"display_position":null,"created_by_id":null,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-08-21T11:44:29.346Z","updated_at":"2017-08-21T11:44:44.647Z","src":null,"product_id":5793638,"picture_file_name":"Evian-Natural-Spring-Water-1L-61314000070.jpg","picture_content_type":"image/jpeg","picture_file_size":50726,"picture_updated_at":"2017-08-21T11:44:29.264Z","picture_order":0},"estimated_delivery":null,"deleted_at":null,"deleted_by_id":null,"description":"","main_image_src":"https://veeqo-production-storage.s3.amazonaws.com/images/10319273/Evian-Natural-Spring-Water-1L-61314000070_original.jpg?1503315869"},"stock_entries":[{"id":11435164,"sellable_id":11022899,"warehouse_id":22668,"infinite":false,"allocated_stock_level":16,"warehouse":{"id":22668,"name":"My Warehouse","user_id":null,"address_line_1":"","address_line_2":"","city":"","region":"","country":null,"post_code":"","inventory_type_code":"wavg","default_min_reorder":0,"click_and_collect_enabled":false,"click_and_collect_days":null,"created_by_id":23005,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-07-04T09:40:37.539Z","updated_at":"2017-07-04T09:40:37.539Z","phone":null,"requested_carrier_account":null},"location":"","stock_running_low":false,"updated_at":"2017-09-25T16:04:52.346Z","incoming_stock_level":0,"physical_stock_level":20,"available_stock_level":4,"sellable_on_hand_value":4.0}],"variant_option_specifics":[],"variant_property_specifics":[],"measurement_attributes":{"id":9524249,"width":0.0,"height":0.0,"depth":0.0,"dimensions_unit":"cm"},"images":[],"active_channels":[],"channel_sellables":[],"available_stock_level_at_all_warehouses":4,"stock_level_at_all_warehouses":20,"on_hand_value":4.0,"inventory":{"infinite":false,"physical_stock_level_at_all_warehouses":20,"allocated_stock_level_at_all_warehouses":16,"available_stock_level_at_all_warehouses":4,"incoming_stock_level_at_all_warehouses":0},"weight":0.0}}],"recommended_shipping_options":null,"matched_parcel_properties_criteria":null,"shipment":null,"warehouse":{"address_line_1":"","address_line_2":"","city":"","click_and_collect_days":null,"click_and_collect_enabled":false,"country":null,"created_at":"2017-07-04T09:40:37.539Z","created_by_id":23005,"default_min_reorder":0,"deleted_at":null,"deleted_by_id":null,"id":22668,"inventory_type_code":"wavg","name":"My Warehouse","phone":null,"post_code":"","region":"","updated_at":"2017-07-04T09:40:37.539Z","updated_by_id":null,"requested_carrier_account":null}}],"employee_notes":[],"line_items":[{"id":15089767,"price_per_unit":0.8,"quantity":2,"tax_rate":0.2,"total_discount":0.0,"additional_options":null,"created_at":"2017-09-25T16:04:52.277Z","updated_at":"2017-09-25T16:04:52.277Z","sellable":{"total_quantity_sold":16,"allocated_stock_level_at_all_warehouses":16,"id":11022899,"type":"ProductVariant","title":"","sku_code":"evian2l","upc_code":"3068320052007","model_number":"","price":1.0,"cost_price":0.2,"min_reorder_level":0,"quantity_to_reorder":0,"created_by_id":23005,"created_at":"2017-08-21T11:42:56.767Z","updated_at":"2017-09-25T16:04:52.548Z","weight_grams":0.0,"weight_unit":"g","product_title":"Evian","full_title":"Evian","sellable_title":"","profit":0.8,"margin":80.0,"tax_rate":0.0,"product":{"id":5793638,"title":"Evian","weight":0,"origin_country":"GB","hs_tariff_number":null,"tax_rate":0,"main_image":{"id":10319273,"binary_data":null,"content_type":null,"display_position":null,"created_by_id":null,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-08-21T11:44:29.346Z","updated_at":"2017-08-21T11:44:44.647Z","src":null,"product_id":5793638,"picture_file_name":"Evian-Natural-Spring-Water-1L-61314000070.jpg","picture_content_type":"image/jpeg","picture_file_size":50726,"picture_updated_at":"2017-08-21T11:44:29.264Z","picture_order":0},"estimated_delivery":null,"deleted_at":null,"deleted_by_id":null,"description":"","main_image_src":"https://veeqo-production-storage.s3.amazonaws.com/images/10319273/Evian-Natural-Spring-Water-1L-61314000070_original.jpg?1503315869"},"stock_entries":[{"id":11435164,"sellable_id":11022899,"warehouse_id":22668,"infinite":false,"allocated_stock_level":16,"warehouse":{"id":22668,"name":"My Warehouse","user_id":null,"address_line_1":"","address_line_2":"","city":"","region":"","country":null,"post_code":"","inventory_type_code":"wavg","default_min_reorder":0,"click_and_collect_enabled":false,"click_and_collect_days":null,"created_by_id":23005,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-07-04T09:40:37.539Z","updated_at":"2017-07-04T09:40:37.539Z","phone":null,"requested_carrier_account":null},"location":"","stock_running_low":false,"updated_at":"2017-09-25T16:04:52.346Z","incoming_stock_level":0,"physical_stock_level":20,"available_stock_level":4,"sellable_on_hand_value":4.0}],"variant_option_specifics":[],"variant_property_specifics":[],"measurement_attributes":{"id":9524249,"width":0.0,"height":0.0,"depth":0.0,"dimensions_unit":"cm"},"images":[],"active_channels":[],"channel_sellables":[],"available_stock_level_at_all_warehouses":4,"stock_level_at_all_warehouses":20,"on_hand_value":4.0,"inventory":{"infinite":false,"physical_stock_level_at_all_warehouses":20,"allocated_stock_level_at_all_warehouses":16,"available_stock_level_at_all_warehouses":4,"incoming_stock_level_at_all_warehouses":0},"weight":0.0}}],"returns":[],"allocated_completely":true,"picked_completely":false,"fulfillment_channel_order":null}]


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

            {"id":11203048,"cancel_reason":null,"refund_amount":null,"send_refund_email":null,"cancelled_at":null,"created_at":"2017-09-25T16:04:52.266Z","customer_viewable_notes":null,"delivery_cost":3.0,"due_date":null,"international":false,"notes":null,"number":"#P-11203048","receipt_printed":false,"send_notification_email":false,"shipped_at":null,"status":"awaiting_fulfillment","subtotal_price":1.6,"total_discounts":0.0,"total_price":4.6,"total_tax":0.0,"total_fees":0.0,"buyer_user_id":null,"updated_at":"2017-09-25T16:04:52.541Z","payment":{"id":11023542,"order_id":11203048,"payment_type":"bank_transfer","reference_number":"123456789","created_at":"2017-09-25T16:04:52.281Z","updated_at":"2017-09-25T16:04:52.312Z","card_number":null,"created_by_id":23005},"till_id":null,"fulfilled_by_amazon":false,"is_amazon_prime":false,"is_amazon_premium_order":false,"discount_amount":0.0,"restock_shipped_items":false,"tags":[],"cancelled_by":null,"created_by":{"id":23005,"login":"Phil Reynolds","email":"phil@veeqo.com","created_at":"2017-07-04T09:40:37.515Z","updated_at":"2017-09-06T08:09:47.646Z","location":null,"guide_completed_message_viewed":null,"orders_walkthrough_viewed":false,"company":{"id":21314,"name":"Phil","created_at":"2017-07-04T09:40:37.495Z","updated_at":"2017-09-06T08:09:47.653Z","referring_website":null,"card_valid":false,"stripe_customer_id":null,"has_right_to_use_veeqo":true,"subscription_status":"trialing","billing_period_started":null,"subscription_plan_id":62,"chargify_product_handle":"trial","chargify_current_plan":{"name":"Unlimited","planId":"chargify-unlimited-monthly-veeqo","chargeType":"monthly","pricing":"£999","setup_fee":null,"product_handle":"monthly-unlimited-999","product_url":null,"features":{"users":"Unlimited","products":"Unlimited","orders":"Unlimited","stores":"Unlimited","support":"Unlimited","product_pusher":true,"stock_take":true},"available":false},"setting":{"currency_code":"GBP","phone_number":"07828170428"},"subscription_plan":{"id":62,"name":"Business[Monthly]","stripe_plan_id":"BUSINESS_MONTHLY_20160309","billing_interval":"month"}}},"updated_by":null,"delivery_method":{"id":171785,"name":"Delivery Method #3","cost":3.0},"deliver_to":{"id":22487393,"first_name":"Phil","last_name":"Reynolds","email":null,"company":"Veeqo","address1":"221b High Street","address2":"","city":"Swansea","country":"GB","state":"london","zip":"Sa1 2bt","phone":"07734450718"},"channel":{"id":45465,"type_code":"direct","created_by_id":23005,"name":"Phone","currency_code":null,"state":"inactive","url":null,"shopify_url":null,"ebay_url":null,"ebay_site_code_id":3,"country":null,"region":"","city":"","address_line_1":"","address_line_2":"","post_code":"","pulled_products_at":null,"pulled_orders_at":null,"pending_setup":true,"seller_id":null,"marketplace_id":null,"mws_auth_token":null,"deleted_at":null,"deleted_by_id":null,"api2cart_store_key":null,"bridge_url":null,"bridge_verified":null,"pull_pending_orders":false,"default_send_shipment_email":true,"automatic_product_linking_disabled":false,"update_remote_order":true,"successfully_fetched_stock_levels_at":null,"create_product_if_unmatched":true,"skip_title_matching":true,"email":"phil@veeqo.com","skip_fba_orders_and_products":true,"pull_stock_level_required":true,"pull_product_properties":true,"pull_historical_orders":false,"adjust_orders_tax_rate":null,"send_notification_emails_to_customers":false,"end_ebay_listing_on_out_of_stock":false,"update_product_attributes":true,"max_qty_to_advert":0,"min_threshold_qty":0,"percent_of_qty":100,"always_set_qty":0,"veeqo_dictates_stock_level":false,"with_fba":false,"first_sync_finish_notice_marked_as_read":false,"pull_unpaid_shopify_orders":false,"create_product_on_ended_listings":true,"link_to_products_linked_to_current_channel":true,"weight_unit":null,"import_cost_price":true,"veeqo_dictates_price":false,"keep_inventory_tracking_value":false,"marketplace_country":null,"time_zone":null,"time_zone_offset":null,"amazon_fulfillment_enabled":false,"channel_warehouses":[],"warehouses":[],"stock_level_update_requests":[],"amazon_fulfillment_setting":null,"amazon_channel_specific":null,"api2cart_channel_specific":null,"additional_api2cart_site":null,"time_since_product_sync":null,"time_since_order_sync":null,"time_since_tried_fetch_stock_level":null,"time_since_successfully_fetch_stock_level":null,"default_warehouse":{"id":22668,"name":"My Warehouse","user_id":null,"address_line_1":"","address_line_2":"","city":"","region":"","country":null,"post_code":"","inventory_type_code":"wavg","default_min_reorder":0,"click_and_collect_enabled":false,"click_and_collect_days":null,"created_by_id":23005,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-07-04T09:40:37.539Z","updated_at":"2017-07-04T09:40:37.539Z","phone":null,"requested_carrier_account":null},"remote":false},"customer":{"id":10347636,"email":null,"phone":null,"mobile":null,"created_by_id":23005,"billing_address":null,"shipping_addresses":[]},"customer_note":{"id":730212,"text":"Ring my doorbell","order_id":11203048},"allocations":[{"id":8403080,"updated_at":"2017-09-25T16:04:52.536Z","created_at":"2017-09-25T16:04:52.333Z","total_weight":0,"weight_unit":"g","allocated_by_id":23005,"order_id":11203048,"packed_completely":null,"line_items":[{"id":11224673,"quantity":2,"picked_quantity":0,"created_at":"2017-09-25T16:04:52.338Z","updated_at":"2017-09-25T16:04:52.338Z","sellable":{"total_quantity_sold":16,"allocated_stock_level_at_all_warehouses":16,"id":11022899,"type":"ProductVariant","title":"","sku_code":"evian2l","upc_code":"3068320052007","model_number":"","price":1.0,"cost_price":0.2,"min_reorder_level":0,"quantity_to_reorder":0,"created_by_id":23005,"created_at":"2017-08-21T11:42:56.767Z","updated_at":"2017-09-25T16:04:52.548Z","weight_grams":0.0,"weight_unit":"g","product_title":"Evian","full_title":"Evian","sellable_title":"","profit":0.8,"margin":80.0,"tax_rate":0.0,"product":{"id":5793638,"title":"Evian","weight":0,"origin_country":"GB","hs_tariff_number":null,"tax_rate":0,"main_image":{"id":10319273,"binary_data":null,"content_type":null,"display_position":null,"created_by_id":null,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-08-21T11:44:29.346Z","updated_at":"2017-08-21T11:44:44.647Z","src":null,"product_id":5793638,"picture_file_name":"Evian-Natural-Spring-Water-1L-61314000070.jpg","picture_content_type":"image/jpeg","picture_file_size":50726,"picture_updated_at":"2017-08-21T11:44:29.264Z","picture_order":0},"estimated_delivery":null,"deleted_at":null,"deleted_by_id":null,"description":"","main_image_src":"https://veeqo-production-storage.s3.amazonaws.com/images/10319273/Evian-Natural-Spring-Water-1L-61314000070_original.jpg?1503315869"},"stock_entries":[{"id":11435164,"sellable_id":11022899,"warehouse_id":22668,"infinite":false,"allocated_stock_level":16,"warehouse":{"id":22668,"name":"My Warehouse","user_id":null,"address_line_1":"","address_line_2":"","city":"","region":"","country":null,"post_code":"","inventory_type_code":"wavg","default_min_reorder":0,"click_and_collect_enabled":false,"click_and_collect_days":null,"created_by_id":23005,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-07-04T09:40:37.539Z","updated_at":"2017-07-04T09:40:37.539Z","phone":null,"requested_carrier_account":null},"location":"","stock_running_low":false,"updated_at":"2017-09-25T16:04:52.346Z","incoming_stock_level":0,"physical_stock_level":20,"available_stock_level":4,"sellable_on_hand_value":4.0}],"variant_option_specifics":[],"variant_property_specifics":[],"measurement_attributes":{"id":9524249,"width":0.0,"height":0.0,"depth":0.0,"dimensions_unit":"cm"},"images":[],"active_channels":[],"channel_sellables":[],"available_stock_level_at_all_warehouses":4,"stock_level_at_all_warehouses":20,"on_hand_value":4.0,"inventory":{"infinite":false,"physical_stock_level_at_all_warehouses":20,"allocated_stock_level_at_all_warehouses":16,"available_stock_level_at_all_warehouses":4,"incoming_stock_level_at_all_warehouses":0},"weight":0.0}}],"recommended_shipping_options":null,"matched_parcel_properties_criteria":null,"shipment":null,"warehouse":{"address_line_1":"","address_line_2":"","city":"","click_and_collect_days":null,"click_and_collect_enabled":false,"country":null,"created_at":"2017-07-04T09:40:37.539Z","created_by_id":23005,"default_min_reorder":0,"deleted_at":null,"deleted_by_id":null,"id":22668,"inventory_type_code":"wavg","name":"My Warehouse","phone":null,"post_code":"","region":"","updated_at":"2017-07-04T09:40:37.539Z","updated_by_id":null,"requested_carrier_account":null}}],"employee_notes":[],"line_items":[{"id":15089767,"price_per_unit":0.8,"quantity":2,"tax_rate":0.2,"total_discount":0.0,"additional_options":null,"created_at":"2017-09-25T16:04:52.277Z","updated_at":"2017-09-25T16:04:52.277Z","sellable":{"total_quantity_sold":16,"allocated_stock_level_at_all_warehouses":16,"id":11022899,"type":"ProductVariant","title":"","sku_code":"evian2l","upc_code":"3068320052007","model_number":"","price":1.0,"cost_price":0.2,"min_reorder_level":0,"quantity_to_reorder":0,"created_by_id":23005,"created_at":"2017-08-21T11:42:56.767Z","updated_at":"2017-09-25T16:04:52.548Z","weight_grams":0.0,"weight_unit":"g","product_title":"Evian","full_title":"Evian","sellable_title":"","profit":0.8,"margin":80.0,"tax_rate":0.0,"product":{"id":5793638,"title":"Evian","weight":0,"origin_country":"GB","hs_tariff_number":null,"tax_rate":0,"main_image":{"id":10319273,"binary_data":null,"content_type":null,"display_position":null,"created_by_id":null,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-08-21T11:44:29.346Z","updated_at":"2017-08-21T11:44:44.647Z","src":null,"product_id":5793638,"picture_file_name":"Evian-Natural-Spring-Water-1L-61314000070.jpg","picture_content_type":"image/jpeg","picture_file_size":50726,"picture_updated_at":"2017-08-21T11:44:29.264Z","picture_order":0},"estimated_delivery":null,"deleted_at":null,"deleted_by_id":null,"description":"","main_image_src":"https://veeqo-production-storage.s3.amazonaws.com/images/10319273/Evian-Natural-Spring-Water-1L-61314000070_original.jpg?1503315869"},"stock_entries":[{"id":11435164,"sellable_id":11022899,"warehouse_id":22668,"infinite":false,"allocated_stock_level":16,"warehouse":{"id":22668,"name":"My Warehouse","user_id":null,"address_line_1":"","address_line_2":"","city":"","region":"","country":null,"post_code":"","inventory_type_code":"wavg","default_min_reorder":0,"click_and_collect_enabled":false,"click_and_collect_days":null,"created_by_id":23005,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-07-04T09:40:37.539Z","updated_at":"2017-07-04T09:40:37.539Z","phone":null,"requested_carrier_account":null},"location":"","stock_running_low":false,"updated_at":"2017-09-25T16:04:52.346Z","incoming_stock_level":0,"physical_stock_level":20,"available_stock_level":4,"sellable_on_hand_value":4.0}],"variant_option_specifics":[],"variant_property_specifics":[],"measurement_attributes":{"id":9524249,"width":0.0,"height":0.0,"depth":0.0,"dimensions_unit":"cm"},"images":[],"active_channels":[],"channel_sellables":[],"available_stock_level_at_all_warehouses":4,"stock_level_at_all_warehouses":20,"on_hand_value":4.0,"inventory":{"infinite":false,"physical_stock_level_at_all_warehouses":20,"allocated_stock_level_at_all_warehouses":16,"available_stock_level_at_all_warehouses":4,"incoming_stock_level_at_all_warehouses":0},"weight":0.0}}],"returns":[],"allocated_completely":true,"picked_completely":false,"fulfillment_channel_order":null}

## Order [/orders/{order_id}]

+ Parameters
    + order_id (integer) - ID of the Order
    

### View an Order Detail [GET]

+ Attributes
    + order: (Order Response Base)
        + id: `323498` (number) - Order ID

+ Response 200 (application/json)

        {"id":11203048,"cancel_reason":null,"refund_amount":null,"send_refund_email":null,"cancelled_at":null,"created_at":"2017-09-25T16:04:52.266Z","customer_viewable_notes":null,"delivery_cost":3.0,"due_date":null,"international":false,"notes":null,"number":"#P-11203048","receipt_printed":false,"send_notification_email":false,"shipped_at":null,"status":"awaiting_fulfillment","subtotal_price":1.6,"total_discounts":0.0,"total_price":4.6,"total_tax":0.0,"total_fees":0.0,"buyer_user_id":null,"updated_at":"2017-09-25T16:04:52.541Z","payment":{"id":11023542,"order_id":11203048,"payment_type":"bank_transfer","reference_number":"123456789","created_at":"2017-09-25T16:04:52.281Z","updated_at":"2017-09-25T16:04:52.312Z","card_number":null,"created_by_id":23005},"till_id":null,"fulfilled_by_amazon":false,"is_amazon_prime":false,"is_amazon_premium_order":false,"discount_amount":0.0,"restock_shipped_items":false,"tags":[],"cancelled_by":null,"created_by":{"id":23005,"login":"Phil Reynolds","email":"phil@veeqo.com","created_at":"2017-07-04T09:40:37.515Z","updated_at":"2017-09-06T08:09:47.646Z","location":null,"guide_completed_message_viewed":null,"orders_walkthrough_viewed":false,"company":{"id":21314,"name":"Phil","created_at":"2017-07-04T09:40:37.495Z","updated_at":"2017-09-06T08:09:47.653Z","referring_website":null,"card_valid":false,"stripe_customer_id":null,"has_right_to_use_veeqo":true,"subscription_status":"trialing","billing_period_started":null,"subscription_plan_id":62,"chargify_product_handle":"trial","chargify_current_plan":{"name":"Unlimited","planId":"chargify-unlimited-monthly-veeqo","chargeType":"monthly","pricing":"£999","setup_fee":null,"product_handle":"monthly-unlimited-999","product_url":null,"features":{"users":"Unlimited","products":"Unlimited","orders":"Unlimited","stores":"Unlimited","support":"Unlimited","product_pusher":true,"stock_take":true},"available":false},"setting":{"currency_code":"GBP","phone_number":"07828170428"},"subscription_plan":{"id":62,"name":"Business[Monthly]","stripe_plan_id":"BUSINESS_MONTHLY_20160309","billing_interval":"month"}}},"updated_by":null,"delivery_method":{"id":171785,"name":"Delivery Method #3","cost":3.0},"deliver_to":{"id":22487393,"first_name":"Phil","last_name":"Reynolds","email":null,"company":"Veeqo","address1":"221b High Street","address2":"","city":"Swansea","country":"GB","state":"london","zip":"Sa1 2bt","phone":"07734450718"},"channel":{"id":45465,"type_code":"direct","created_by_id":23005,"name":"Phone","currency_code":null,"state":"inactive","url":null,"shopify_url":null,"ebay_url":null,"ebay_site_code_id":3,"country":null,"region":"","city":"","address_line_1":"","address_line_2":"","post_code":"","pulled_products_at":null,"pulled_orders_at":null,"pending_setup":true,"seller_id":null,"marketplace_id":null,"mws_auth_token":null,"deleted_at":null,"deleted_by_id":null,"api2cart_store_key":null,"bridge_url":null,"bridge_verified":null,"pull_pending_orders":false,"default_send_shipment_email":true,"automatic_product_linking_disabled":false,"update_remote_order":true,"successfully_fetched_stock_levels_at":null,"create_product_if_unmatched":true,"skip_title_matching":true,"email":"phil@veeqo.com","skip_fba_orders_and_products":true,"pull_stock_level_required":true,"pull_product_properties":true,"pull_historical_orders":false,"adjust_orders_tax_rate":null,"send_notification_emails_to_customers":false,"end_ebay_listing_on_out_of_stock":false,"update_product_attributes":true,"max_qty_to_advert":0,"min_threshold_qty":0,"percent_of_qty":100,"always_set_qty":0,"veeqo_dictates_stock_level":false,"with_fba":false,"first_sync_finish_notice_marked_as_read":false,"pull_unpaid_shopify_orders":false,"create_product_on_ended_listings":true,"link_to_products_linked_to_current_channel":true,"weight_unit":null,"import_cost_price":true,"veeqo_dictates_price":false,"keep_inventory_tracking_value":false,"marketplace_country":null,"time_zone":null,"time_zone_offset":null,"amazon_fulfillment_enabled":false,"channel_warehouses":[],"warehouses":[],"stock_level_update_requests":[],"amazon_fulfillment_setting":null,"amazon_channel_specific":null,"api2cart_channel_specific":null,"additional_api2cart_site":null,"time_since_product_sync":null,"time_since_order_sync":null,"time_since_tried_fetch_stock_level":null,"time_since_successfully_fetch_stock_level":null,"default_warehouse":{"id":22668,"name":"My Warehouse","user_id":null,"address_line_1":"","address_line_2":"","city":"","region":"","country":null,"post_code":"","inventory_type_code":"wavg","default_min_reorder":0,"click_and_collect_enabled":false,"click_and_collect_days":null,"created_by_id":23005,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-07-04T09:40:37.539Z","updated_at":"2017-07-04T09:40:37.539Z","phone":null,"requested_carrier_account":null},"remote":false},"customer":{"id":10347636,"email":null,"phone":null,"mobile":null,"created_by_id":23005,"billing_address":null,"shipping_addresses":[]},"customer_note":{"id":730212,"text":"Ring my doorbell","order_id":11203048},"allocations":[{"id":8403080,"updated_at":"2017-09-25T16:04:52.536Z","created_at":"2017-09-25T16:04:52.333Z","total_weight":0,"weight_unit":"g","allocated_by_id":23005,"order_id":11203048,"packed_completely":null,"line_items":[{"id":11224673,"quantity":2,"picked_quantity":0,"created_at":"2017-09-25T16:04:52.338Z","updated_at":"2017-09-25T16:04:52.338Z","sellable":{"total_quantity_sold":16,"allocated_stock_level_at_all_warehouses":16,"id":11022899,"type":"ProductVariant","title":"","sku_code":"evian2l","upc_code":"3068320052007","model_number":"","price":1.0,"cost_price":0.2,"min_reorder_level":0,"quantity_to_reorder":0,"created_by_id":23005,"created_at":"2017-08-21T11:42:56.767Z","updated_at":"2017-09-25T16:04:52.548Z","weight_grams":0.0,"weight_unit":"g","product_title":"Evian","full_title":"Evian","sellable_title":"","profit":0.8,"margin":80.0,"tax_rate":0.0,"product":{"id":5793638,"title":"Evian","weight":0,"origin_country":"GB","hs_tariff_number":null,"tax_rate":0,"main_image":{"id":10319273,"binary_data":null,"content_type":null,"display_position":null,"created_by_id":null,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-08-21T11:44:29.346Z","updated_at":"2017-08-21T11:44:44.647Z","src":null,"product_id":5793638,"picture_file_name":"Evian-Natural-Spring-Water-1L-61314000070.jpg","picture_content_type":"image/jpeg","picture_file_size":50726,"picture_updated_at":"2017-08-21T11:44:29.264Z","picture_order":0},"estimated_delivery":null,"deleted_at":null,"deleted_by_id":null,"description":"","main_image_src":"https://veeqo-production-storage.s3.amazonaws.com/images/10319273/Evian-Natural-Spring-Water-1L-61314000070_original.jpg?1503315869"},"stock_entries":[{"id":11435164,"sellable_id":11022899,"warehouse_id":22668,"infinite":false,"allocated_stock_level":16,"warehouse":{"id":22668,"name":"My Warehouse","user_id":null,"address_line_1":"","address_line_2":"","city":"","region":"","country":null,"post_code":"","inventory_type_code":"wavg","default_min_reorder":0,"click_and_collect_enabled":false,"click_and_collect_days":null,"created_by_id":23005,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-07-04T09:40:37.539Z","updated_at":"2017-07-04T09:40:37.539Z","phone":null,"requested_carrier_account":null},"location":"","stock_running_low":false,"updated_at":"2017-09-25T16:04:52.346Z","incoming_stock_level":0,"physical_stock_level":20,"available_stock_level":4,"sellable_on_hand_value":4.0}],"variant_option_specifics":[],"variant_property_specifics":[],"measurement_attributes":{"id":9524249,"width":0.0,"height":0.0,"depth":0.0,"dimensions_unit":"cm"},"images":[],"active_channels":[],"channel_sellables":[],"available_stock_level_at_all_warehouses":4,"stock_level_at_all_warehouses":20,"on_hand_value":4.0,"inventory":{"infinite":false,"physical_stock_level_at_all_warehouses":20,"allocated_stock_level_at_all_warehouses":16,"available_stock_level_at_all_warehouses":4,"incoming_stock_level_at_all_warehouses":0},"weight":0.0}}],"recommended_shipping_options":null,"matched_parcel_properties_criteria":null,"shipment":null,"warehouse":{"address_line_1":"","address_line_2":"","city":"","click_and_collect_days":null,"click_and_collect_enabled":false,"country":null,"created_at":"2017-07-04T09:40:37.539Z","created_by_id":23005,"default_min_reorder":0,"deleted_at":null,"deleted_by_id":null,"id":22668,"inventory_type_code":"wavg","name":"My Warehouse","phone":null,"post_code":"","region":"","updated_at":"2017-07-04T09:40:37.539Z","updated_by_id":null,"requested_carrier_account":null}}],"employee_notes":[],"line_items":[{"id":15089767,"price_per_unit":0.8,"quantity":2,"tax_rate":0.2,"total_discount":0.0,"additional_options":null,"created_at":"2017-09-25T16:04:52.277Z","updated_at":"2017-09-25T16:04:52.277Z","sellable":{"total_quantity_sold":16,"allocated_stock_level_at_all_warehouses":16,"id":11022899,"type":"ProductVariant","title":"","sku_code":"evian2l","upc_code":"3068320052007","model_number":"","price":1.0,"cost_price":0.2,"min_reorder_level":0,"quantity_to_reorder":0,"created_by_id":23005,"created_at":"2017-08-21T11:42:56.767Z","updated_at":"2017-09-25T16:04:52.548Z","weight_grams":0.0,"weight_unit":"g","product_title":"Evian","full_title":"Evian","sellable_title":"","profit":0.8,"margin":80.0,"tax_rate":0.0,"product":{"id":5793638,"title":"Evian","weight":0,"origin_country":"GB","hs_tariff_number":null,"tax_rate":0,"main_image":{"id":10319273,"binary_data":null,"content_type":null,"display_position":null,"created_by_id":null,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-08-21T11:44:29.346Z","updated_at":"2017-08-21T11:44:44.647Z","src":null,"product_id":5793638,"picture_file_name":"Evian-Natural-Spring-Water-1L-61314000070.jpg","picture_content_type":"image/jpeg","picture_file_size":50726,"picture_updated_at":"2017-08-21T11:44:29.264Z","picture_order":0},"estimated_delivery":null,"deleted_at":null,"deleted_by_id":null,"description":"","main_image_src":"https://veeqo-production-storage.s3.amazonaws.com/images/10319273/Evian-Natural-Spring-Water-1L-61314000070_original.jpg?1503315869"},"stock_entries":[{"id":11435164,"sellable_id":11022899,"warehouse_id":22668,"infinite":false,"allocated_stock_level":16,"warehouse":{"id":22668,"name":"My Warehouse","user_id":null,"address_line_1":"","address_line_2":"","city":"","region":"","country":null,"post_code":"","inventory_type_code":"wavg","default_min_reorder":0,"click_and_collect_enabled":false,"click_and_collect_days":null,"created_by_id":23005,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-07-04T09:40:37.539Z","updated_at":"2017-07-04T09:40:37.539Z","phone":null,"requested_carrier_account":null},"location":"","stock_running_low":false,"updated_at":"2017-09-25T16:04:52.346Z","incoming_stock_level":0,"physical_stock_level":20,"available_stock_level":4,"sellable_on_hand_value":4.0}],"variant_option_specifics":[],"variant_property_specifics":[],"measurement_attributes":{"id":9524249,"width":0.0,"height":0.0,"depth":0.0,"dimensions_unit":"cm"},"images":[],"active_channels":[],"channel_sellables":[],"available_stock_level_at_all_warehouses":4,"stock_level_at_all_warehouses":20,"on_hand_value":4.0,"inventory":{"infinite":false,"physical_stock_level_at_all_warehouses":20,"allocated_stock_level_at_all_warehouses":16,"available_stock_level_at_all_warehouses":4,"incoming_stock_level_at_all_warehouses":0},"weight":0.0}}],"returns":[],"allocated_completely":true,"picked_completely":false,"fulfillment_channel_order":null}

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
         
        
+ Request To add a second item to the order, presuming initial request as above (application/json)

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

+ Response 200 

    + Body
    
        {"id":11203048,"cancel_reason":null,"refund_amount":null,"send_refund_email":null,"cancelled_at":null,"created_at":"2017-09-25T16:04:52.266Z","customer_viewable_notes":null,"delivery_cost":3.0,"due_date":null,"international":false,"notes":null,"number":"#P-11203048","receipt_printed":false,"send_notification_email":false,"shipped_at":null,"status":"awaiting_fulfillment","subtotal_price":1.6,"total_discounts":0.0,"total_price":4.6,"total_tax":0.0,"total_fees":0.0,"buyer_user_id":null,"updated_at":"2017-09-25T16:04:52.541Z","payment":{"id":11023542,"order_id":11203048,"payment_type":"bank_transfer","reference_number":"123456789","created_at":"2017-09-25T16:04:52.281Z","updated_at":"2017-09-25T16:04:52.312Z","card_number":null,"created_by_id":23005},"till_id":null,"fulfilled_by_amazon":false,"is_amazon_prime":false,"is_amazon_premium_order":false,"discount_amount":0.0,"restock_shipped_items":false,"tags":[],"cancelled_by":null,"created_by":{"id":23005,"login":"Phil Reynolds","email":"phil@veeqo.com","created_at":"2017-07-04T09:40:37.515Z","updated_at":"2017-09-06T08:09:47.646Z","location":null,"guide_completed_message_viewed":null,"orders_walkthrough_viewed":false,"company":{"id":21314,"name":"Phil","created_at":"2017-07-04T09:40:37.495Z","updated_at":"2017-09-06T08:09:47.653Z","referring_website":null,"card_valid":false,"stripe_customer_id":null,"has_right_to_use_veeqo":true,"subscription_status":"trialing","billing_period_started":null,"subscription_plan_id":62,"chargify_product_handle":"trial","chargify_current_plan":{"name":"Unlimited","planId":"chargify-unlimited-monthly-veeqo","chargeType":"monthly","pricing":"£999","setup_fee":null,"product_handle":"monthly-unlimited-999","product_url":null,"features":{"users":"Unlimited","products":"Unlimited","orders":"Unlimited","stores":"Unlimited","support":"Unlimited","product_pusher":true,"stock_take":true},"available":false},"setting":{"currency_code":"GBP","phone_number":"07828170428"},"subscription_plan":{"id":62,"name":"Business[Monthly]","stripe_plan_id":"BUSINESS_MONTHLY_20160309","billing_interval":"month"}}},"updated_by":null,"delivery_method":{"id":171785,"name":"Delivery Method #3","cost":3.0},"deliver_to":{"id":22487393,"first_name":"Phil","last_name":"Reynolds","email":null,"company":"Veeqo","address1":"221b High Street","address2":"","city":"Swansea","country":"GB","state":"london","zip":"Sa1 2bt","phone":"07734450718"},"channel":{"id":45465,"type_code":"direct","created_by_id":23005,"name":"Phone","currency_code":null,"state":"inactive","url":null,"shopify_url":null,"ebay_url":null,"ebay_site_code_id":3,"country":null,"region":"","city":"","address_line_1":"","address_line_2":"","post_code":"","pulled_products_at":null,"pulled_orders_at":null,"pending_setup":true,"seller_id":null,"marketplace_id":null,"mws_auth_token":null,"deleted_at":null,"deleted_by_id":null,"api2cart_store_key":null,"bridge_url":null,"bridge_verified":null,"pull_pending_orders":false,"default_send_shipment_email":true,"automatic_product_linking_disabled":false,"update_remote_order":true,"successfully_fetched_stock_levels_at":null,"create_product_if_unmatched":true,"skip_title_matching":true,"email":"phil@veeqo.com","skip_fba_orders_and_products":true,"pull_stock_level_required":true,"pull_product_properties":true,"pull_historical_orders":false,"adjust_orders_tax_rate":null,"send_notification_emails_to_customers":false,"end_ebay_listing_on_out_of_stock":false,"update_product_attributes":true,"max_qty_to_advert":0,"min_threshold_qty":0,"percent_of_qty":100,"always_set_qty":0,"veeqo_dictates_stock_level":false,"with_fba":false,"first_sync_finish_notice_marked_as_read":false,"pull_unpaid_shopify_orders":false,"create_product_on_ended_listings":true,"link_to_products_linked_to_current_channel":true,"weight_unit":null,"import_cost_price":true,"veeqo_dictates_price":false,"keep_inventory_tracking_value":false,"marketplace_country":null,"time_zone":null,"time_zone_offset":null,"amazon_fulfillment_enabled":false,"channel_warehouses":[],"warehouses":[],"stock_level_update_requests":[],"amazon_fulfillment_setting":null,"amazon_channel_specific":null,"api2cart_channel_specific":null,"additional_api2cart_site":null,"time_since_product_sync":null,"time_since_order_sync":null,"time_since_tried_fetch_stock_level":null,"time_since_successfully_fetch_stock_level":null,"default_warehouse":{"id":22668,"name":"My Warehouse","user_id":null,"address_line_1":"","address_line_2":"","city":"","region":"","country":null,"post_code":"","inventory_type_code":"wavg","default_min_reorder":0,"click_and_collect_enabled":false,"click_and_collect_days":null,"created_by_id":23005,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-07-04T09:40:37.539Z","updated_at":"2017-07-04T09:40:37.539Z","phone":null,"requested_carrier_account":null},"remote":false},"customer":{"id":10347636,"email":null,"phone":null,"mobile":null,"created_by_id":23005,"billing_address":null,"shipping_addresses":[]},"customer_note":{"id":730212,"text":"Ring my doorbell","order_id":11203048},"allocations":[{"id":8403080,"updated_at":"2017-09-25T16:04:52.536Z","created_at":"2017-09-25T16:04:52.333Z","total_weight":0,"weight_unit":"g","allocated_by_id":23005,"order_id":11203048,"packed_completely":null,"line_items":[{"id":11224673,"quantity":2,"picked_quantity":0,"created_at":"2017-09-25T16:04:52.338Z","updated_at":"2017-09-25T16:04:52.338Z","sellable":{"total_quantity_sold":16,"allocated_stock_level_at_all_warehouses":16,"id":11022899,"type":"ProductVariant","title":"","sku_code":"evian2l","upc_code":"3068320052007","model_number":"","price":1.0,"cost_price":0.2,"min_reorder_level":0,"quantity_to_reorder":0,"created_by_id":23005,"created_at":"2017-08-21T11:42:56.767Z","updated_at":"2017-09-25T16:04:52.548Z","weight_grams":0.0,"weight_unit":"g","product_title":"Evian","full_title":"Evian","sellable_title":"","profit":0.8,"margin":80.0,"tax_rate":0.0,"product":{"id":5793638,"title":"Evian","weight":0,"origin_country":"GB","hs_tariff_number":null,"tax_rate":0,"main_image":{"id":10319273,"binary_data":null,"content_type":null,"display_position":null,"created_by_id":null,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-08-21T11:44:29.346Z","updated_at":"2017-08-21T11:44:44.647Z","src":null,"product_id":5793638,"picture_file_name":"Evian-Natural-Spring-Water-1L-61314000070.jpg","picture_content_type":"image/jpeg","picture_file_size":50726,"picture_updated_at":"2017-08-21T11:44:29.264Z","picture_order":0},"estimated_delivery":null,"deleted_at":null,"deleted_by_id":null,"description":"","main_image_src":"https://veeqo-production-storage.s3.amazonaws.com/images/10319273/Evian-Natural-Spring-Water-1L-61314000070_original.jpg?1503315869"},"stock_entries":[{"id":11435164,"sellable_id":11022899,"warehouse_id":22668,"infinite":false,"allocated_stock_level":16,"warehouse":{"id":22668,"name":"My Warehouse","user_id":null,"address_line_1":"","address_line_2":"","city":"","region":"","country":null,"post_code":"","inventory_type_code":"wavg","default_min_reorder":0,"click_and_collect_enabled":false,"click_and_collect_days":null,"created_by_id":23005,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-07-04T09:40:37.539Z","updated_at":"2017-07-04T09:40:37.539Z","phone":null,"requested_carrier_account":null},"location":"","stock_running_low":false,"updated_at":"2017-09-25T16:04:52.346Z","incoming_stock_level":0,"physical_stock_level":20,"available_stock_level":4,"sellable_on_hand_value":4.0}],"variant_option_specifics":[],"variant_property_specifics":[],"measurement_attributes":{"id":9524249,"width":0.0,"height":0.0,"depth":0.0,"dimensions_unit":"cm"},"images":[],"active_channels":[],"channel_sellables":[],"available_stock_level_at_all_warehouses":4,"stock_level_at_all_warehouses":20,"on_hand_value":4.0,"inventory":{"infinite":false,"physical_stock_level_at_all_warehouses":20,"allocated_stock_level_at_all_warehouses":16,"available_stock_level_at_all_warehouses":4,"incoming_stock_level_at_all_warehouses":0},"weight":0.0}}],"recommended_shipping_options":null,"matched_parcel_properties_criteria":null,"shipment":null,"warehouse":{"address_line_1":"","address_line_2":"","city":"","click_and_collect_days":null,"click_and_collect_enabled":false,"country":null,"created_at":"2017-07-04T09:40:37.539Z","created_by_id":23005,"default_min_reorder":0,"deleted_at":null,"deleted_by_id":null,"id":22668,"inventory_type_code":"wavg","name":"My Warehouse","phone":null,"post_code":"","region":"","updated_at":"2017-07-04T09:40:37.539Z","updated_by_id":null,"requested_carrier_account":null}}],"employee_notes":[],"line_items":[{"id":15089767,"price_per_unit":0.8,"quantity":2,"tax_rate":0.2,"total_discount":0.0,"additional_options":null,"created_at":"2017-09-25T16:04:52.277Z","updated_at":"2017-09-25T16:04:52.277Z","sellable":{"total_quantity_sold":16,"allocated_stock_level_at_all_warehouses":16,"id":11022899,"type":"ProductVariant","title":"","sku_code":"evian2l","upc_code":"3068320052007","model_number":"","price":1.0,"cost_price":0.2,"min_reorder_level":0,"quantity_to_reorder":0,"created_by_id":23005,"created_at":"2017-08-21T11:42:56.767Z","updated_at":"2017-09-25T16:04:52.548Z","weight_grams":0.0,"weight_unit":"g","product_title":"Evian","full_title":"Evian","sellable_title":"","profit":0.8,"margin":80.0,"tax_rate":0.0,"product":{"id":5793638,"title":"Evian","weight":0,"origin_country":"GB","hs_tariff_number":null,"tax_rate":0,"main_image":{"id":10319273,"binary_data":null,"content_type":null,"display_position":null,"created_by_id":null,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-08-21T11:44:29.346Z","updated_at":"2017-08-21T11:44:44.647Z","src":null,"product_id":5793638,"picture_file_name":"Evian-Natural-Spring-Water-1L-61314000070.jpg","picture_content_type":"image/jpeg","picture_file_size":50726,"picture_updated_at":"2017-08-21T11:44:29.264Z","picture_order":0},"estimated_delivery":null,"deleted_at":null,"deleted_by_id":null,"description":"","main_image_src":"https://veeqo-production-storage.s3.amazonaws.com/images/10319273/Evian-Natural-Spring-Water-1L-61314000070_original.jpg?1503315869"},"stock_entries":[{"id":11435164,"sellable_id":11022899,"warehouse_id":22668,"infinite":false,"allocated_stock_level":16,"warehouse":{"id":22668,"name":"My Warehouse","user_id":null,"address_line_1":"","address_line_2":"","city":"","region":"","country":null,"post_code":"","inventory_type_code":"wavg","default_min_reorder":0,"click_and_collect_enabled":false,"click_and_collect_days":null,"created_by_id":23005,"updated_by_id":null,"deleted_at":null,"deleted_by_id":null,"created_at":"2017-07-04T09:40:37.539Z","updated_at":"2017-07-04T09:40:37.539Z","phone":null,"requested_carrier_account":null},"location":"","stock_running_low":false,"updated_at":"2017-09-25T16:04:52.346Z","incoming_stock_level":0,"physical_stock_level":20,"available_stock_level":4,"sellable_on_hand_value":4.0}],"variant_option_specifics":[],"variant_property_specifics":[],"measurement_attributes":{"id":9524249,"width":0.0,"height":0.0,"depth":0.0,"dimensions_unit":"cm"},"images":[],"active_channels":[],"channel_sellables":[],"available_stock_level_at_all_warehouses":4,"stock_level_at_all_warehouses":20,"on_hand_value":4.0,"inventory":{"infinite":false,"physical_stock_level_at_all_warehouses":20,"allocated_stock_level_at_all_warehouses":16,"available_stock_level_at_all_warehouses":4,"incoming_stock_level_at_all_warehouses":0},"weight":0.0}}],"returns":[],"allocated_completely":true,"picked_completely":false,"fulfillment_channel_order":null}


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
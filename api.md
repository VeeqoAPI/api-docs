FORMAT: 1A
HOST: https://api.veeqo.com/

# Veeqo API (BETA)

Use our API to access the world of ecommerce.

## Getting Started

Follow the simple list below to get up and running with the Veeqo API.

1. Get setup
    * Signup for a [free trial Veeqo account](http://www.veeqo.com/)
    * [Get API credentials](/#introduction/authentication) for your app

2. Explore
    * Use the [API previewer](/#reference/orders) to see what each endpoint does
    * Download some [code samples](/#introduction/code-samples)

## Authentication

Authentication is required for your apps in order for them to access data in Veeqo.

### Get API credentials

1. Login into your [Veeqo account](https://app.veeqo.com/login)
2. Navigate to [Employees page](https://app.veeqo.com/employees)
3. Click on your user or add new employee (easier to track application activity)
4. Click **Create/Update API Key**

Your API credentials will de displayed on screen. Treat them like you would
any other password, since whoever has access to the API Key has full API access
to the Veeqo account.

### Using API credentials

Simply include `x-api-key` into request header, for example:

```bash
curl --request GET \
  --url https://api.veeqo.com/orders \
  --header 'accept: application/json' \
  --header 'x-api-key: YOUR API KEY HERE'
```

## Code Samples

Learn from our examples.

### Labels Downloader

Sample application, written in Python, shows how to retrieve shipment lables
from shipped Veeqo orders: https://github.com/VeeqoAPI/shipment-label-downloader

### Products Catalog

This example, written in PHP, illustrates how to build simple catalog
displaying products from Veeqo account: https://github.com/VeeqoAPI/products-list

## Support

### Community resources

You can find the Veeqo developer community on the following sites:

* [Google+](https://plus.google.com/communities/106053163460449492137)
* [API Documentation Issues](https://github.com/veeqoapi/api-docs/issues)

### Contact us

If you can't find an answer in the resources above you can contact [Veeqo Support](http://help.veeqo.com/).
They can help you with any problems, questions, or comments you have about the
Veeqo Platform.

:[Order Resources](resources/orders.md)

:[Allocaton Resources](resources/allocations.md)

:[Product Resources](resources/products.md)

:[Purchase Order Resources](resources/purchase_orders.md)

:[Supplier Resources](resources/suppliers.md)

:[Company Resources](resources/company.md)

:[Warehouse Resources](resources/warehouses.md)

:[Customer Resources](resources/customers.md)

:[Store Resources](resources/stores.md)

:[Delivery Method Resources](resources/delivery_methods.md)

:[Shipment Resources](resources/shipments.md)

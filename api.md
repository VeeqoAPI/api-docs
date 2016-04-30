FORMAT: 1A
HOST: https://api.veeqo.com/

# Veeqo API

Use our API to access the world of ecommerce.

## Getting Started

1. Get setup
    * Signup for a [free trial Veeqo account](http://www.veeqo.com/)
    * [Get API credentials](/#introduction/authentication) for your app

2. Explore
    * Use the [API previewer](/#reference/orders) to see what each endpoint does
    * Download some [code samples](/#introduction/samples)

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

## Samples

TBA

:[Order Resources](resources/orders.md)

:[Product Resources](resources/products.md)

:[Purchase Order Resources](resources/purchase_orders.md)

:[Supplier Resources](resources/suppliers.md)

:[Company Resources](resources/company.md)

:[Warehouse Resources](resources/warehouses.md)

:[Customer Resources](resources/customers.md)

:[Store Resources](resources/stores.md)

:[Delivery Method Resources](resources/delivery_methods.md)

FORMAT: 1A
HOST: https://api.veeqo.com/

# Veeqo API

Use our API to access the world of ecommerce.

## Authentication

Authentication is required for your apps in order for them to access data in Veeqo.

### Generate API credentials

1. From your Veeqo app, click settings menu (wrench icon)
2. Click **Users**
3. Click on your user
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

:[Order Resources](resources/orders.md)

:[Product Resources](resources/products.md)

:[Purchase Order Resources](resources/purchase_orders.md)

:[Supplier Resources](resources/suppliers.md)

:[Company Resources](resources/company.md)

:[Warehouse Resources](resources/warehouses.md)

:[Customer Resources](resources/customers.md)

:[Store Resources](resources/stores.md)

:[Delivery Method Resources](resources/delivery_methods.md)

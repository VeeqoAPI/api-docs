FORMAT: 1A
HOST: https://api.veeqo.com/

# Veeqo API (BETA)

Everything you need to build the world's most powerful tools for ecommerce retailers.

## [Developer Page](https://developer.veeqo.com)

We're working hard at Veeqo to make developing on top of our API the best experience possible. 
The [Developer Page](https://developer.veeqo.com) has access to all of the resources you'll need.

## Getting Started

Follow the simple list below to get up and running with the Veeqo API.

1. Get setup
    * Signup for a [free trial Veeqo account](http://www.veeqo.com/signup)
    * [Get API credentials](/#introduction/authentication) for your app

2. Explore
    * Use the [API previewer](/#reference/orders) to see what each endpoint does
    * Download some [code samples](/#introduction/code-samples)

## Authentication

Authentication is required for your apps in order for them to access data in Veeqo.

Authentication is going to improve very soon with the addition of OAuth. We'll post 
on the forum and update the docs when that goes live. 

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
## Veeqo Ruby Gem
Our friends over at [COAX](https://coaxsoft.com/) have built a 
[Ruby Gem](https://github.com/coaxsoft/veeqo_api_ruby)
to integrate with our API. If you're building with ruby then this
is an invaluable resource. They also have a load of examples on the
[GitHub](https://github.com/coaxsoft/veeqo_api_ruby/tree/master/examples)
for the gem that are definately worth checking out.

## Code Samples

Learn from our examples.

All of our examples live on the VeeqoAPI GitHub page. We're working hard to add 
more over the coming months.

### [Labels Downloader](https://github.com/VeeqoAPI/shipment-label-downloader)

Sample application, written in Python, shows how to retrieve shipment lables
from shipped Veeqo orders 

### [Products Catalog](https://github.com/VeeqoAPI/products-list)

This example, written in PHP, illustrates how to build simple catalog
displaying products from Veeqo account

### [Dashboard](https://github.com/VeeqoAPI/dashboard)

Written in PHP and based on the same CURL script as the Products Catalog, 
this live example displays a simple dashboard of orders from today and yesterday.
Similar to the way the mobile app dashboard works. 

The live example can be [found here.](https://veeqo-dashboard.herokuapp.com/)

## Support

### [Developer Forum](http://developer-forum.veeqo.com/)

The Veeqo developer forum is the place to go to talk about everything to do with developing on the Veeqo platform.
Suggestions for API improvements, API support, conversations about the app store. They all live here.

If you can't find what you're looking for, have any problems or suggestions just post on the forum.



:[Order Resources](resources/orders.md)

:[Allocation Resources](resources/allocations.md)

:[Product Resources](resources/products.md)

:[Purchase Order Resources](resources/purchase_orders.md)

:[Supplier Resources](resources/suppliers.md)

:[Company Resources](resources/company.md)

:[Warehouse Resources](resources/warehouses.md)

:[Customer Resources](resources/customers.md)

:[Store Resources](resources/stores.md)

:[Delivery Method Resources](resources/delivery_methods.md)

:[Shipment Resources](resources/shipments.md)

:[Stock Entry Resources](resources/stock_entries.md)

:[Tag Resources](resources/tags.md)

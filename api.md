FORMAT: 1A
HOST: https://api.veeqo.com/

# Veeqo API (BETA)

The Veeqo API gives everything you need to build the world's most powerful tools for ecommerce retailers.

You can integrate any external application or service with a retailer's Veeqo account. This allows you to do just about 
anything you can do in the Veeqo Web App using the programming language of your choice.

Our API is based on RESTful principles, using predictable and explorable URLs, HTTP requests and JSON responses.

There are two ways of authenticating your app with Veeqo:

1. [OAuth2](https://oauth.net/2/) authentication.
2. Legacy API Keys.

API keys are going to be depreciated at some point as we believe OAuth is the better option. There is more information 
on this in the [Authentication](/#introduction/authentication) section below.


## [Developer Central](https://developer.veeqo.com)

We're working hard at Veeqo to make developing on top of our API the best experience possible. 
[Developer Central](https://developer.veeqo.com) has access to all of the resources you'll need, and the 
[Developer Forum](https://developer-forum.veeqo.com) is a growing community of developers who are using the API and 
building on the Veeqo platform.

## Getting Started

Follow the simple list below to get up and running with the Veeqo API.

1. Get a Veeqo Account
    * Register for a [Veeqo developer account](https://goo.gl/forms/mmGTgzadLvQVS6ml2)
2. Register Your Application
    * Set up some [API Authentication](#introduction/authentication) for your app
3. Explore
    * Use the [API previewer](/#reference/orders) to see what each endpoint does
    * Download some [code samples](/#introduction/code-samples)
    * Use a tool like [Restlet](https://restlet.com/) or [Postman](https://www.getpostman.com/) to send some test requests
4. Get Help and Learn More  
    * Check out the [Developer Forum](https://developer-forum.veeqo.com)
5. Build and test your app.
    * Do your thing the way you do best!
6. Launch your app on the [Veeqo Marketplace](https://marketplace.veeqo.com)
    * Let any Veeqo retailer use your awesome application!

## Authentication

Authentication is required for your apps in order for them to access data in Veeqo. There are currently two ways to authenticate your application:

1. [OAuth](/#introduction/OAuth)
2. [API keys](/#introduction/Get-API-Key)

API keys are going to be depreciated in the future. If you are building a new application, please use OAuth. A guide on getting set up with OAuth can be found on the [Developer Forum](https://developer-forum.veeqo.com/t/veeqo-now-supports-oauth/95).

### OAuth

A more detailed explanation of using OAuth will be coming here soon. 

In the mean time, check out [this post](https://developer-forum.veeqo.com/t/veeqo-now-supports-oauth/95) on the Developer Forum

### Get API Key 

1. Login into your [Veeqo account](https://app.veeqo.com/login)
2. Navigate to [Employees page](https://app.veeqo.com/employees)
3. Click on your user or **+ New Employee** (easier to track application activity)
4. Click **Create/Update API Key**
5. Save your API Key, it will not be shown again!

Your API credentials will displayed on screen. Treat them like you would
any other password, since whoever has access to the API Key has full API access
to the Veeqo account.

We have recently made a change that means that the API key will only be displayed 
when it is first created to increase security. We recommend you create a new user 
for each integration that needs an API key and store it securely.

If you lose an API key, you can always create a new one.

This information is also available in the [Veeqo Help Guide](https://help.veeqo.com/hc/en-us/articles/115005403265-API-Key)

### Using API Key

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

### [Developer Forum](https://developer-forum.veeqo.com/)

The Veeqo developer forum is the place to go to talk about everything to do with developing on the Veeqo platform.
Suggestions for API improvements, API support, conversations about the app store. They all live here.

If you can't find what you're looking for, have any problems or suggestions just post on the forum.

## HTTP Codes
:[HTTP Codes](resources/http_codes.md)

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

:[Bulk Tagging Resources](resources/bulk_tagging.md)

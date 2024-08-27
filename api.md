FORMAT: 1A
HOST: https://api.veeqo.com/


# Veeqo API


The Veeqo API gives you everything you need to build the world's most powerful tools for ecommerce retailers.

You can integrate any external application or service with a retailer's Veeqo account. This allows you to do just about anything you can do in the Veeqo Web App using the programming language of your choice.

Our API is built using Ruby on Rails and based on RESTful principles, using predictable and explorable URLs, HTTP requests and JSON responses.

There are two ways of authenticating your app with Veeqo:
1. [OAuth2](https://oauth.net/2/) authentication
2. API keys


## Veeqo Shipping API


We also have a Shipping API that is currently in Open Beta and is available for Enterprise customers or on request using [this form](https://docs.google.com/forms/d/e/1FAIpQLSfbjw7dXk1kpySpM_vlRsB2CNxLsGp4XaXAqMlOL6JX2OUQFA/viewform).

Our Shipping API allows you to build custom integrations with shipping carriers not currently supported in Veeqo.

You can view our Shipping API Documentation [here](https://developer.veeqo.com/docs/shipping).


## [Developer Central](https://developer.veeqo.com)


We're working hard at Veeqo to make your developing experience when building on top of our API the best it can be. We have therefore created [Developer Central](https://developer.veeqo.com) which has access to all of the resources you'll need.


## Getting Started


Follow these steps below to get up and running.

1. Get a Veeqo Account
    * Register for a [Veeqo developer account](https://veeqo.com)
    This will take you through the same steps as a new store owner to register for a free Veeqo account
2. Set up your Authentication
    * Follow our [API Authentication](#introduction/authentication) instructions
3. Explore
    * Use our [API previewer](/#reference/orders) to see what each endpoint does
    * Download some [code samples](/#introduction/code-samples)
    * Use a tool like [Restlet](https://restlet.com/) or [Postman](https://www.getpostman.com/) to send some test requests
4. Learn More
    * Check out [Developer Central](https://developer.veeqo.com) for more useful resources
5. Build and test your app.
    * Build the worlds best Veeqo integration
6. Get Help
    * Stuck? Please email [helpme@support.veeqo.com](mailto:helpme@support.veeqo.com);


## Authentication


Authentication is required for your application to access data in Veeqo. There are currently two ways to authenticate your app:

1. OAuth2
2. API keys

We recommend using OAuth2 if your application is for public use by all Veeqo users and using API keys if your application is considered private and for your use only.


### Setting up OAuth Authentication


1. Set up your redirect_uri
    * This is the URL that the user will be redirected to after authentication. If you're new to OAuth, Aaron Parecki has a really great [guide](https://aaronparecki.com/oauth-2-simplified/#creating-an-app) for getting started.

2. Send your details to helpme@support.veeqo.com
    * Please provide us with:
      - The name of your applications
      - Your redirect/callback URI
    * Email the details to helpme@support.veeqo.com

3. We register your application with OAuth
    * Once registered we will provide you with your client_id and client_secret by email

4. Authorizing the user
    * Again Aaron Parecki's [guide](https://aaronparecki.com/oauth-2-simplified/#authorization) has a really useful section on setting up user authorization.
    * Within your application, you need to redirect the user to the authorize URL on app.veeqo.com. For example: `https://app.veeqo.com/oauth/authorize?client_id=4f8a5d37071f0955e3c8a3dcbf3ff0b53c0699d2085cc6b01707fb3eb9912652&redirect_uri=http%3A%2F%2Fexample.com%2Ftest_oauth_callback&response_type=code&scope=`
    * The user will then confirm authorization of the app and be redirected back to your application

5. Get authorization code
    * The authorization code is returned in the code parameter of the redirect uri
    e.g. http://example.com/test_oauth_callback?code=acc2658ced4f9eea257c9da72acea1c97f9e1b1db2118b565355532af13591d7
    * note: this code lasts only 10 minutes

6. Make a request for the permanent token
    * Make a request to https://api.veeqo.com/oauth/token using client id, client secret, temporary code, e.g:

    Request URL: /oauth/token

    Method: POST

    * Parameters:

      - **grant_type**: authorization_code
      - **redirect_uri**: http://example.com/test_oauth_callback 5
      - **client id**: 4f8a5d37071f0955e3c8a3dcbf3ff0b53c0699d2085cc6b01707fb3eb9912652
      - **client secret**: dd04814c033fdbc9a01a9b68100d359edaa41d8ad702a03ae221dd456da1d59c
      - **code**: acc2658ced4f9eea257c9da72acea1c97f9e1b1db2118b565355532af13591d7

    Should return a response like so:

    ```json
    {
        "access_token": "82d7b651f3634a5243c4155f8832f09b30de0c115280d0c2ef62512e6bc5312e",
        "token_type": "bearer",
        "created_at": 1510741588
    }
    ```

7. Save the access_token value
    * Save the returned access_token from the previous request
    * Use this for any future requests

8. Make a request
    * Make a request like normal with our bearer token, e.g.

      Request URL: /current_user

      Method: GET

      Headers:
      Authorization: Bearer 82d7b651f3634a5243c4155f8832f09b30de0c115280d0c2ef62512e6bc5312e

### Generating your API keys

1. Login into your [Veeqo account](https://app.veeqo.com/login)
2. Navigate to [Employees page](https://app.veeqo.com/employees)
3. Click on your user or create a **+ New Employee**
  If you have multiple users we recommend creating a New Employee for each user as it makes it easier track application activity
4. Click **Refresh API Key**
5. Your API Key will be generated and stored in Veeqo should you ever need to refer back to it

As always, treat your API Key like any other password and do not share it with others as anyone who has access to your API Key has full API access to your Veeqo account.

### Using API Key

Simply include `x-api-key` into request header, for example:

```bash
curl --request GET \
  --url https://api.veeqo.com/orders \
  --header 'accept: application/json' \
  --header 'x-api-key: YOUR API KEY HERE'
```

## Veeqo Ruby Gem
Our friends over at [COAX](https://coaxsoft.com/) have built a [Ruby Gem](https://github.com/coaxsoft/veeqo_api_ruby) to integrate with our API. If you're building with ruby then this is an invaluable resource. They also have a load of examples on the [GitHub](https://github.com/coaxsoft/veeqo_api_ruby/tree/master/examples) for the gem that are definately worth checking out.

## Limits
The API has requests rate limits per key/token powered by a [Leaky Bucket algorithm](https://en.wikipedia.org/wiki/Leaky_bucket). If requests come too frequently, they are queued in a bucket. If the queue reaches the bucket limit, the API responds with HTTP 429 error.

Current limit is **5 requests per second** with a bucket size **up to 100** requests.

## Code Samples

Learn from our examples.

All of our examples live on the VeeqoAPI GitHub page. We're working hard to add
more over the coming months.

### [Products Catalog](https://github.com/VeeqoAPI/products-list)

This example, written in PHP, illustrates how to build simple catalog
displaying products from Veeqo account

### [Dashboard](https://github.com/VeeqoAPI/dashboard)

Written in PHP and based on the same CURL script as the Products Catalog,
this live example displays a simple dashboard of orders from today and yesterday.
Similar to the way the mobile app dashboard works.

The live example can be [found here.](https://veeqo-dashboard.herokuapp.com/)

## Support

If you get stuck at any stage in your project please email [helpme@support.veeqo.com](mailto:helpme@support.veeqo.com);

## Feedback

We LOVE ❤️ feedback! It helps us to improve developer experience and make your job easier! If you have any feedback regarding our API, documentation or Developer Central please email [helpme@support.veeqo.com](mailto:helpme@support.veeqo.com)


:[HTTP Codes](resources/http_codes.md)

:[Order Resources](resources/orders.md)

:[Returns_Resources](resources/returns.md)

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

:[Other Resources](resources/other_files.md)



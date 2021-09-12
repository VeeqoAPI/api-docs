## HTTP Codes

###Code: 200
__Meaning:__ OK

__Description:__ Success!

###Code: 201
__Meaning:__ Created

__Description:__ Success! Resource was successfully created. The resource that was created has been returned in the response body.

###Code: 204
__Meaning:__ No Content

__Description:__ It's gone! Resource was successfully deleted. Response body is empty after a successful DELETE request.

###Code: 400
__Meaning:__ Bad Request

__Description:__ There was invalid data posted in the request, i.e. the data isn't posted in the format we require or you have an attribute missing.

__Action Required:__ Check the request to ensure all information is posted and that it complies with the [API documentation](https://developer.veeqo.com/docs) for that endpoint.

###Code: 401
__Meaning:__ Unauthorized

__Description:__ You could not be authenticated with Veeqo. This can either be due to the API key being invalidated (updated on the account in Veeqo) or the account requiring a payment to be made to Veeqo.

__Action Required:__ Check the account in Veeqo to ensure that API key is still attached, and that there's no outstanding payments.

###Code: 404
__Meaning:__ Not Found

__Description:__ The resource that you attempted to access could not be found. This is likely due to the endpoint not existing, or a particular attribute ID passed not existing.

__Action Required:__ Check that the endpoint you're attempting to access actually exists, and ensure that all of the IDs you pass in the attributes of the request body can be found in the attached account.

###Code: 429
__Meaning:__ Limits Reached

__Description:__ The API request limit has been reached. The current limit is 5 requests per second with a bucket size up to 100 requests.

__Action Required:__ Handle your requests with the API limit in mind.

###Code: 500
__Meaning:__ Internal Server Error

__Description:__ Due to a problem on our side. This could either be due to problems in the request data provided which cause the error, or due to a temporary service problem.

__Action Required:__ Double check your request is correct then try again after a few minutes. If the problem persists then check our [status page](http://status.veeqo.com) or [contact us](mailto:helpme@veeqo.com).

###Code: 503
__Meaning:__ Service Unavailable

__Description:__ Due to a temporary problem on our side.

__Action Required:__ Try again after a few minutes. If the problem persists then check our [status page](http://status.veeqo.com) or [contact us](mailto:helpme@veeqo.com).

# UserAPI

All URIs are relative to *https://api.openstreetmap.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSignedInUserDetails**](UserAPI.md#getsignedinuserdetails) | **GET** /api/0.6/user/details.json | Get the user&#39;s profile as well as their OSM messages and preferences


# **getSignedInUserDetails**
```swift
    open class func getSignedInUserDetails(completion: @escaping (_ data: UserDetailsResponse?, _ error: Error?) -> Void)
```

Get the user's profile as well as their OSM messages and preferences

The messages section has been available since mid-2013.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenStreetMap


// Get the user's profile as well as their OSM messages and preferences
UserAPI.getSignedInUserDetails() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserDetailsResponse**](UserDetailsResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


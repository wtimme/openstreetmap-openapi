# MiscAPI

All URIs are relative to *https://api.openstreetmap.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAPICapabilities**](MiscAPI.md#getapicapabilities) | **GET** /api/capabilities | This API call is meant to provide information about the capabilities and limitations of the current API.
[**getAPIPermissions**](MiscAPI.md#getapipermissions) | **GET** /api/0.6/permissions | Returns the permissions granted to the current API connection.
[**getAPIVersions**](MiscAPI.md#getapiversions) | **GET** /api/versions | Returns a list of API versions supported by this instance.


# **getAPICapabilities**
```swift
    open class func getAPICapabilities(completion: @escaping (_ data: APICapabilitiesResponse?, _ error: Error?) -> Void)
```

This API call is meant to provide information about the capabilities and limitations of the current API.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenStreetMap


// This API call is meant to provide information about the capabilities and limitations of the current API.
MiscAPI.getAPICapabilities() { (response, error) in
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

[**APICapabilitiesResponse**](APICapabilitiesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAPIPermissions**
```swift
    open class func getAPIPermissions(completion: @escaping (_ data: OSMResponse?, _ error: Error?) -> Void)
```

Returns the permissions granted to the current API connection.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenStreetMap


// Returns the permissions granted to the current API connection.
MiscAPI.getAPIPermissions() { (response, error) in
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

[**OSMResponse**](OSMResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAPIVersions**
```swift
    open class func getAPIVersions(completion: @escaping (_ data: OSMResponse?, _ error: Error?) -> Void)
```

Returns a list of API versions supported by this instance.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenStreetMap


// Returns a list of API versions supported by this instance.
MiscAPI.getAPIVersions() { (response, error) in
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

[**OSMResponse**](OSMResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


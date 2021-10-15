# MapAPI

All URIs are relative to *https://api.openstreetmap.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMapDataByBoundingBox**](MapAPI.md#getmapdatabyboundingbox) | **GET** /api/0.6/map | Retrieves map data by the given bounding box.


# **getMapDataByBoundingBox**
```swift
    open class func getMapDataByBoundingBox(bbox: String? = nil, completion: @escaping (_ data: MapDataResponse?, _ error: Error?) -> Void)
```

Retrieves map data by the given bounding box.

The operation returns: - All nodes that are inside a given bounding box and any relations that reference them. - All ways that reference at least one node that is inside a given bounding box, any relations that reference them [the ways],   and any nodes outside the bounding box that the ways may reference.  - All relations that reference one of the nodes, ways or relations included due to the above rules.   (Does not apply recursively, see explanation below.)   Note that, while this operation returns those relations that reference the aforementioned nodes and ways, the reverse is not true: it does not (necessarily) return all of the nodes and ways that are referenced by these relations. This prevents unreasonably-large result sets. For example, imagine the case where: - There is a relation named \"England\" that references every node in England. - The nodes, ways, and relations are retrieved for a bounding box that covers a small portion of England.  While the result would include the nodes, ways, and relations as specified by the rules for the command,  including the \"England\" relation, it would (fortuitously) not include every node and way in England.  If desired, the nodes and ways referenced by the \"England\" relation could be retrieved by their respective IDs.  Also note that ways which intersect the bounding box but have no nodes within the bounding box will not be returned.  

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenStreetMap

let bbox = "bbox_example" // String | The comma-separated bounding box for which to download the data.  `left`,`bottom`,`right`,`top`, where: - `left` is the longitude of the left (westernmost) side of the bounding box. - `bottom` is the latitude of the bottom (southernmost) side of the bounding box. - `right` is the longitude of the right (easternmost) side of the bounding box. - `top` is the latitude of the top (northernmost) side of the bounding box.  (optional)

// Retrieves map data by the given bounding box.
MapAPI.getMapDataByBoundingBox(bbox: bbox) { (response, error) in
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

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bbox** | **String** | The comma-separated bounding box for which to download the data.  &#x60;left&#x60;,&#x60;bottom&#x60;,&#x60;right&#x60;,&#x60;top&#x60;, where: - &#x60;left&#x60; is the longitude of the left (westernmost) side of the bounding box. - &#x60;bottom&#x60; is the latitude of the bottom (southernmost) side of the bounding box. - &#x60;right&#x60; is the longitude of the right (easternmost) side of the bounding box. - &#x60;top&#x60; is the latitude of the top (northernmost) side of the bounding box.  | [optional] 

### Return type

[**MapDataResponse**](MapDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


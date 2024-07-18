# OpenapiClient::SearchResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_points** | [**Array&lt;SearchResultDataPointsInner&gt;**](SearchResultDataPointsInner.md) |  | [optional] |
| **image** | **String** |  | [optional] |
| **link** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **type** | **String** |  | [optional] |
| **kvtable** | **String** |  | [optional] |
| **content** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **relevance** | **Float** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchResult.new(
  data_points: null,
  image: null,
  link: null,
  name: null,
  type: null,
  kvtable: null,
  content: null,
  id: null,
  relevance: null
)
```


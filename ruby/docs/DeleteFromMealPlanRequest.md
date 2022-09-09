# OpenapiClient::DeleteFromMealPlanRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **id** | **Float** | The shopping list item id. |  |
| **hash** | **String** | The private hash for the username. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DeleteFromMealPlanRequest.new(
  username: dsky,
  id: 15678,
  hash: 4b5v4398573406
)
```


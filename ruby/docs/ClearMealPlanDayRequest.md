# OpenapiClient::ClearMealPlanDayRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **date** | **String** | The date in the format yyyy-mm-dd. |  |
| **hash** | **String** | The private hash for the username. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ClearMealPlanDayRequest.new(
  username: dsky,
  date: 2020-06-01,
  hash: 4b5v4398573406
)
```


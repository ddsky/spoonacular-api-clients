# OpenapiClient::AnalyzeRecipeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **language** | **String** | The input language, either \&quot;en\&quot; or \&quot;de\&quot;. | [optional] |
| **include_nutrition** | **Boolean** | Whether nutrition data should be added to correctly parsed ingredients. | [optional] |
| **include_taste** | **Boolean** | Whether taste data should be added to correctly parsed ingredients. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AnalyzeRecipeRequest.new(
  language: en,
  include_nutrition: false,
  include_taste: false
)
```


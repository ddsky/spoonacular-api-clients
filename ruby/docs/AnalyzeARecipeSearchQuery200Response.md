# OpenapiClient::AnalyzeARecipeSearchQuery200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dishes** | [**Array&lt;AnalyzeARecipeSearchQuery200ResponseDishesInner&gt;**](AnalyzeARecipeSearchQuery200ResponseDishesInner.md) |  |  |
| **ingredients** | [**Array&lt;AnalyzeARecipeSearchQuery200ResponseIngredientsInner&gt;**](AnalyzeARecipeSearchQuery200ResponseIngredientsInner.md) |  |  |
| **cuisines** | **Array&lt;String&gt;** |  |  |
| **modifiers** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AnalyzeARecipeSearchQuery200Response.new(
  dishes: null,
  ingredients: null,
  cuisines: null,
  modifiers: null
)
```


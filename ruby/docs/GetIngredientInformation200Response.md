# OpenapiClient::GetIngredientInformation200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **original** | **String** |  |  |
| **original_name** | **String** |  |  |
| **name** | **String** |  |  |
| **name_clean** | **String** |  |  |
| **amount** | **Float** |  |  |
| **unit** | **String** |  |  |
| **unit_short** | **String** |  |  |
| **unit_long** | **String** |  |  |
| **possible_units** | **Array&lt;String&gt;** |  |  |
| **estimated_cost** | [**ParseIngredients200ResponseInnerEstimatedCost**](ParseIngredients200ResponseInnerEstimatedCost.md) |  |  |
| **consistency** | **String** |  |  |
| **shopping_list_units** | **Array&lt;String&gt;** |  |  |
| **aisle** | **String** |  |  |
| **image** | **String** |  |  |
| **meta** | **Array&lt;Object&gt;** |  |  |
| **nutrition** | [**GetIngredientInformation200ResponseNutrition**](GetIngredientInformation200ResponseNutrition.md) |  |  |
| **category_path** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetIngredientInformation200Response.new(
  id: null,
  original: null,
  original_name: null,
  name: null,
  name_clean: null,
  amount: null,
  unit: null,
  unit_short: null,
  unit_long: null,
  possible_units: null,
  estimated_cost: null,
  consistency: null,
  shopping_list_units: null,
  aisle: null,
  image: null,
  meta: null,
  nutrition: null,
  category_path: null
)
```


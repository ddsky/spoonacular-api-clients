# OpenapiClient::ParseIngredients200ResponseInner

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
| **aisle** | **String** |  |  |
| **image** | **String** |  |  |
| **meta** | **Array&lt;String&gt;** |  |  |
| **nutrition** | [**ParseIngredients200ResponseInnerNutrition**](ParseIngredients200ResponseInnerNutrition.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ParseIngredients200ResponseInner.new(
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
  aisle: null,
  image: null,
  meta: null,
  nutrition: null
)
```


# OpenapiClient::IngredientInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **original** | **String** |  |  |
| **original_name** | **String** |  |  |
| **name** | **String** |  |  |
| **amount** | **Float** |  |  |
| **unit** | **String** |  |  |
| **unit_short** | **String** |  |  |
| **unit_long** | **String** |  |  |
| **possible_units** | **Array&lt;String&gt;** |  |  |
| **estimated_cost** | [**IngredientInformationEstimatedCost**](IngredientInformationEstimatedCost.md) |  |  |
| **consistency** | **String** |  |  |
| **shopping_list_units** | **Array&lt;String&gt;** |  | [optional] |
| **aisle** | **String** |  |  |
| **image** | **String** |  |  |
| **meta** | **Array&lt;String&gt;** |  |  |
| **nutrition** | [**IngredientInformationNutrition**](IngredientInformationNutrition.md) |  | [optional] |
| **category_path** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IngredientInformation.new(
  id: null,
  original: null,
  original_name: null,
  name: null,
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


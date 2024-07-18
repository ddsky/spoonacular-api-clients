# OpenapiClient::IngredientInformationNutrition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nutrients** | [**Array&lt;SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner&gt;**](SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner.md) |  |  |
| **properties** | [**Array&lt;IngredientInformationNutritionPropertiesInner&gt;**](IngredientInformationNutritionPropertiesInner.md) |  |  |
| **caloric_breakdown** | [**SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown**](SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.md) |  |  |
| **weight_per_serving** | [**GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal**](GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IngredientInformationNutrition.new(
  nutrients: null,
  properties: null,
  caloric_breakdown: null,
  weight_per_serving: null
)
```


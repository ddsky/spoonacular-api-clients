# OpenapiClient::GetMealPlanTemplate200ResponseDaysInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nutrition_summary** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] |
| **nutrition_summary_breakfast** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] |
| **nutrition_summary_lunch** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] |
| **nutrition_summary_dinner** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] |
| **day** | **String** |  |  |
| **items** | [**Array&lt;GetMealPlanTemplate200ResponseDaysInnerItemsInner&gt;**](GetMealPlanTemplate200ResponseDaysInnerItemsInner.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetMealPlanTemplate200ResponseDaysInner.new(
  nutrition_summary: null,
  nutrition_summary_breakfast: null,
  nutrition_summary_lunch: null,
  nutrition_summary_dinner: null,
  day: null,
  items: null
)
```


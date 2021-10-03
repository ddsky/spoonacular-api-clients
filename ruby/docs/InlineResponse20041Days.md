# OpenapiClient::InlineResponse20041Days

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nutrition_summary** | [**InlineResponse20038NutritionSummary**](InlineResponse20038NutritionSummary.md) |  | [optional] 
**nutrition_summary_breakfast** | [**InlineResponse20038NutritionSummary**](InlineResponse20038NutritionSummary.md) |  | [optional] 
**nutrition_summary_lunch** | [**InlineResponse20038NutritionSummary**](InlineResponse20038NutritionSummary.md) |  | [optional] 
**nutrition_summary_dinner** | [**InlineResponse20038NutritionSummary**](InlineResponse20038NutritionSummary.md) |  | [optional] 
**day** | **String** |  | 
**items** | [**Array&lt;InlineResponse20041Items&gt;**](InlineResponse20041Items.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::InlineResponse20041Days.new(nutrition_summary: null,
                                 nutrition_summary_breakfast: null,
                                 nutrition_summary_lunch: null,
                                 nutrition_summary_dinner: null,
                                 day: null,
                                 items: null)
```



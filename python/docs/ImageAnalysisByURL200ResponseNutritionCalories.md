# ImageAnalysisByURL200ResponseNutritionCalories


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **float** |  | 
**unit** | **str** |  | 
**confidence_range95_percent** | [**ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent**](ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.md) |  | 
**standard_deviation** | **float** |  | 

## Example

```python
from spoonacular.models.image_analysis_by_url200_response_nutrition_calories import ImageAnalysisByURL200ResponseNutritionCalories

# TODO update the JSON string below
json = "{}"
# create an instance of ImageAnalysisByURL200ResponseNutritionCalories from a JSON string
image_analysis_by_url200_response_nutrition_calories_instance = ImageAnalysisByURL200ResponseNutritionCalories.from_json(json)
# print the JSON string representation of the object
print ImageAnalysisByURL200ResponseNutritionCalories.to_json()

# convert the object into a dict
image_analysis_by_url200_response_nutrition_calories_dict = image_analysis_by_url200_response_nutrition_calories_instance.to_dict()
# create an instance of ImageAnalysisByURL200ResponseNutritionCalories from a dict
image_analysis_by_url200_response_nutrition_calories_form_dict = image_analysis_by_url200_response_nutrition_calories.from_dict(image_analysis_by_url200_response_nutrition_calories_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



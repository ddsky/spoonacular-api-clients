# ParseIngredients200ResponseInnerNutrition


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nutrients** | [**List[ParseIngredients200ResponseInnerNutritionNutrientsInner]**](ParseIngredients200ResponseInnerNutritionNutrientsInner.md) |  | 
**properties** | [**List[ParseIngredients200ResponseInnerNutritionPropertiesInner]**](ParseIngredients200ResponseInnerNutritionPropertiesInner.md) |  | 
**flavonoids** | [**List[ParseIngredients200ResponseInnerNutritionPropertiesInner]**](ParseIngredients200ResponseInnerNutritionPropertiesInner.md) |  | 
**caloric_breakdown** | [**ParseIngredients200ResponseInnerNutritionCaloricBreakdown**](ParseIngredients200ResponseInnerNutritionCaloricBreakdown.md) |  | 
**weight_per_serving** | [**ParseIngredients200ResponseInnerNutritionWeightPerServing**](ParseIngredients200ResponseInnerNutritionWeightPerServing.md) |  | 

## Example

```python
from spoonacular.models.parse_ingredients200_response_inner_nutrition import ParseIngredients200ResponseInnerNutrition

# TODO update the JSON string below
json = "{}"
# create an instance of ParseIngredients200ResponseInnerNutrition from a JSON string
parse_ingredients200_response_inner_nutrition_instance = ParseIngredients200ResponseInnerNutrition.from_json(json)
# print the JSON string representation of the object
print ParseIngredients200ResponseInnerNutrition.to_json()

# convert the object into a dict
parse_ingredients200_response_inner_nutrition_dict = parse_ingredients200_response_inner_nutrition_instance.to_dict()
# create an instance of ParseIngredients200ResponseInnerNutrition from a dict
parse_ingredients200_response_inner_nutrition_form_dict = parse_ingredients200_response_inner_nutrition.from_dict(parse_ingredients200_response_inner_nutrition_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



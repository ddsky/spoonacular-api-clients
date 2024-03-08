# GetIngredientInformation200ResponseNutrition


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nutrients** | [**List[ParseIngredients200ResponseInnerNutritionNutrientsInner]**](ParseIngredients200ResponseInnerNutritionNutrientsInner.md) |  | 
**properties** | [**List[ParseIngredients200ResponseInnerNutritionPropertiesInner]**](ParseIngredients200ResponseInnerNutritionPropertiesInner.md) |  | 
**caloric_breakdown** | [**ParseIngredients200ResponseInnerNutritionCaloricBreakdown**](ParseIngredients200ResponseInnerNutritionCaloricBreakdown.md) |  | 
**weight_per_serving** | [**ParseIngredients200ResponseInnerNutritionWeightPerServing**](ParseIngredients200ResponseInnerNutritionWeightPerServing.md) |  | 

## Example

```python
from spoonacular.models.get_ingredient_information200_response_nutrition import GetIngredientInformation200ResponseNutrition

# TODO update the JSON string below
json = "{}"
# create an instance of GetIngredientInformation200ResponseNutrition from a JSON string
get_ingredient_information200_response_nutrition_instance = GetIngredientInformation200ResponseNutrition.from_json(json)
# print the JSON string representation of the object
print GetIngredientInformation200ResponseNutrition.to_json()

# convert the object into a dict
get_ingredient_information200_response_nutrition_dict = get_ingredient_information200_response_nutrition_instance.to_dict()
# create an instance of GetIngredientInformation200ResponseNutrition from a dict
get_ingredient_information200_response_nutrition_form_dict = get_ingredient_information200_response_nutrition.from_dict(get_ingredient_information200_response_nutrition_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



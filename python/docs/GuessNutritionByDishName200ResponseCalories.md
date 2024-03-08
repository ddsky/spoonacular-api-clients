# GuessNutritionByDishName200ResponseCalories


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**confidence_range95_percent** | [**GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent**](GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent.md) |  | 
**standard_deviation** | **float** |  | 
**unit** | **str** |  | 
**value** | **float** |  | 

## Example

```python
from spoonacular.models.guess_nutrition_by_dish_name200_response_calories import GuessNutritionByDishName200ResponseCalories

# TODO update the JSON string below
json = "{}"
# create an instance of GuessNutritionByDishName200ResponseCalories from a JSON string
guess_nutrition_by_dish_name200_response_calories_instance = GuessNutritionByDishName200ResponseCalories.from_json(json)
# print the JSON string representation of the object
print GuessNutritionByDishName200ResponseCalories.to_json()

# convert the object into a dict
guess_nutrition_by_dish_name200_response_calories_dict = guess_nutrition_by_dish_name200_response_calories_instance.to_dict()
# create an instance of GuessNutritionByDishName200ResponseCalories from a dict
guess_nutrition_by_dish_name200_response_calories_form_dict = guess_nutrition_by_dish_name200_response_calories.from_dict(guess_nutrition_by_dish_name200_response_calories_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# GuessNutritionByDishName200Response



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**calories** | [**GuessNutritionByDishName200ResponseCalories**](GuessNutritionByDishName200ResponseCalories.md) |  | 
**carbs** | [**GuessNutritionByDishName200ResponseCalories**](GuessNutritionByDishName200ResponseCalories.md) |  | 
**fat** | [**GuessNutritionByDishName200ResponseCalories**](GuessNutritionByDishName200ResponseCalories.md) |  | 
**protein** | [**GuessNutritionByDishName200ResponseCalories**](GuessNutritionByDishName200ResponseCalories.md) |  | 
**recipes_used** | **int** |  | 

## Example

```python
from spoonacular.models.guess_nutrition_by_dish_name200_response import GuessNutritionByDishName200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GuessNutritionByDishName200Response from a JSON string
guess_nutrition_by_dish_name200_response_instance = GuessNutritionByDishName200Response.from_json(json)
# print the JSON string representation of the object
print GuessNutritionByDishName200Response.to_json()

# convert the object into a dict
guess_nutrition_by_dish_name200_response_dict = guess_nutrition_by_dish_name200_response_instance.to_dict()
# create an instance of GuessNutritionByDishName200Response from a dict
guess_nutrition_by_dish_name200_response_form_dict = guess_nutrition_by_dish_name200_response.from_dict(guess_nutrition_by_dish_name200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



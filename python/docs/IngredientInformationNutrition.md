# IngredientInformationNutrition


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nutrients** | [**List[SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner]**](SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner.md) |  | 
**properties** | [**List[IngredientInformationNutritionPropertiesInner]**](IngredientInformationNutritionPropertiesInner.md) |  | 
**caloric_breakdown** | [**SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown**](SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.md) |  | 
**weight_per_serving** | [**GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal**](GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.md) |  | 

## Example

```python
from spoonacular.models.ingredient_information_nutrition import IngredientInformationNutrition

# TODO update the JSON string below
json = "{}"
# create an instance of IngredientInformationNutrition from a JSON string
ingredient_information_nutrition_instance = IngredientInformationNutrition.from_json(json)
# print the JSON string representation of the object
print(IngredientInformationNutrition.to_json())

# convert the object into a dict
ingredient_information_nutrition_dict = ingredient_information_nutrition_instance.to_dict()
# create an instance of IngredientInformationNutrition from a dict
ingredient_information_nutrition_from_dict = IngredientInformationNutrition.from_dict(ingredient_information_nutrition_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



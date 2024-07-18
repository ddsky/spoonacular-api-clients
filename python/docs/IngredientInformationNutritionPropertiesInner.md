# IngredientInformationNutritionPropertiesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**amount** | **float** |  | 
**unit** | **str** |  | 

## Example

```python
from spoonacular.models.ingredient_information_nutrition_properties_inner import IngredientInformationNutritionPropertiesInner

# TODO update the JSON string below
json = "{}"
# create an instance of IngredientInformationNutritionPropertiesInner from a JSON string
ingredient_information_nutrition_properties_inner_instance = IngredientInformationNutritionPropertiesInner.from_json(json)
# print the JSON string representation of the object
print(IngredientInformationNutritionPropertiesInner.to_json())

# convert the object into a dict
ingredient_information_nutrition_properties_inner_dict = ingredient_information_nutrition_properties_inner_instance.to_dict()
# create an instance of IngredientInformationNutritionPropertiesInner from a dict
ingredient_information_nutrition_properties_inner_from_dict = IngredientInformationNutritionPropertiesInner.from_dict(ingredient_information_nutrition_properties_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



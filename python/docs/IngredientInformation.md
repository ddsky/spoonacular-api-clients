# IngredientInformation



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**original** | **str** |  | 
**original_name** | **str** |  | 
**name** | **str** |  | 
**amount** | **float** |  | 
**unit** | **str** |  | 
**unit_short** | **str** |  | 
**unit_long** | **str** |  | 
**possible_units** | **List[str]** |  | 
**estimated_cost** | [**IngredientInformationEstimatedCost**](IngredientInformationEstimatedCost.md) |  | 
**consistency** | **str** |  | 
**shopping_list_units** | **List[str]** |  | [optional] 
**aisle** | **str** |  | 
**image** | **str** |  | 
**meta** | **List[str]** |  | 
**nutrition** | [**IngredientInformationNutrition**](IngredientInformationNutrition.md) |  | [optional] 
**category_path** | **List[str]** |  | [optional] 

## Example

```python
from spoonacular.models.ingredient_information import IngredientInformation

# TODO update the JSON string below
json = "{}"
# create an instance of IngredientInformation from a JSON string
ingredient_information_instance = IngredientInformation.from_json(json)
# print the JSON string representation of the object
print(IngredientInformation.to_json())

# convert the object into a dict
ingredient_information_dict = ingredient_information_instance.to_dict()
# create an instance of IngredientInformation from a dict
ingredient_information_from_dict = IngredientInformation.from_dict(ingredient_information_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



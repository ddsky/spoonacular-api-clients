# IngredientInformationEstimatedCost


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **float** |  | 
**unit** | **str** |  | 

## Example

```python
from spoonacular.models.ingredient_information_estimated_cost import IngredientInformationEstimatedCost

# TODO update the JSON string below
json = "{}"
# create an instance of IngredientInformationEstimatedCost from a JSON string
ingredient_information_estimated_cost_instance = IngredientInformationEstimatedCost.from_json(json)
# print the JSON string representation of the object
print(IngredientInformationEstimatedCost.to_json())

# convert the object into a dict
ingredient_information_estimated_cost_dict = ingredient_information_estimated_cost_instance.to_dict()
# create an instance of IngredientInformationEstimatedCost from a dict
ingredient_information_estimated_cost_from_dict = IngredientInformationEstimatedCost.from_dict(ingredient_information_estimated_cost_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



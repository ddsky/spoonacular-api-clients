# IngredientBasics


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** |  | 
**name** | **str** |  | 
**safety_level** | **str** |  | 

## Example

```python
from spoonacular.models.ingredient_basics import IngredientBasics

# TODO update the JSON string below
json = "{}"
# create an instance of IngredientBasics from a JSON string
ingredient_basics_instance = IngredientBasics.from_json(json)
# print the JSON string representation of the object
print(IngredientBasics.to_json())

# convert the object into a dict
ingredient_basics_dict = ingredient_basics_instance.to_dict()
# create an instance of IngredientBasics from a dict
ingredient_basics_from_dict = IngredientBasics.from_dict(ingredient_basics_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



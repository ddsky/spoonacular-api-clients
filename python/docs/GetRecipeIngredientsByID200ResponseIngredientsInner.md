# GetRecipeIngredientsByID200ResponseIngredientsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | [**GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount**](GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.md) |  | [optional] 
**image** | **str** |  | 
**name** | **str** |  | 

## Example

```python
from spoonacular.models.get_recipe_ingredients_by_id200_response_ingredients_inner import GetRecipeIngredientsByID200ResponseIngredientsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetRecipeIngredientsByID200ResponseIngredientsInner from a JSON string
get_recipe_ingredients_by_id200_response_ingredients_inner_instance = GetRecipeIngredientsByID200ResponseIngredientsInner.from_json(json)
# print the JSON string representation of the object
print GetRecipeIngredientsByID200ResponseIngredientsInner.to_json()

# convert the object into a dict
get_recipe_ingredients_by_id200_response_ingredients_inner_dict = get_recipe_ingredients_by_id200_response_ingredients_inner_instance.to_dict()
# create an instance of GetRecipeIngredientsByID200ResponseIngredientsInner from a dict
get_recipe_ingredients_by_id200_response_ingredients_inner_form_dict = get_recipe_ingredients_by_id200_response_ingredients_inner.from_dict(get_recipe_ingredients_by_id200_response_ingredients_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



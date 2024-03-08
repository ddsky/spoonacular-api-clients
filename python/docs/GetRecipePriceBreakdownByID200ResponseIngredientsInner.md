# GetRecipePriceBreakdownByID200ResponseIngredientsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | [**GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount**](GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.md) |  | [optional] 
**image** | **str** |  | 
**name** | **str** |  | 
**price** | **float** |  | 

## Example

```python
from spoonacular.models.get_recipe_price_breakdown_by_id200_response_ingredients_inner import GetRecipePriceBreakdownByID200ResponseIngredientsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetRecipePriceBreakdownByID200ResponseIngredientsInner from a JSON string
get_recipe_price_breakdown_by_id200_response_ingredients_inner_instance = GetRecipePriceBreakdownByID200ResponseIngredientsInner.from_json(json)
# print the JSON string representation of the object
print GetRecipePriceBreakdownByID200ResponseIngredientsInner.to_json()

# convert the object into a dict
get_recipe_price_breakdown_by_id200_response_ingredients_inner_dict = get_recipe_price_breakdown_by_id200_response_ingredients_inner_instance.to_dict()
# create an instance of GetRecipePriceBreakdownByID200ResponseIngredientsInner from a dict
get_recipe_price_breakdown_by_id200_response_ingredients_inner_form_dict = get_recipe_price_breakdown_by_id200_response_ingredients_inner.from_dict(get_recipe_price_breakdown_by_id200_response_ingredients_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



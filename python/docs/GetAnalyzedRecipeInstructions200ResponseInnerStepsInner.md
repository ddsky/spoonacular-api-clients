# GetAnalyzedRecipeInstructions200ResponseInnerStepsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **float** |  | 
**step** | **str** |  | 
**ingredients** | [**List[GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner]**](GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.md) |  | [optional] 
**equipment** | [**List[GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner]**](GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.md) |  | [optional] 

## Example

```python
from spoonacular.models.get_analyzed_recipe_instructions200_response_inner_steps_inner import GetAnalyzedRecipeInstructions200ResponseInnerStepsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetAnalyzedRecipeInstructions200ResponseInnerStepsInner from a JSON string
get_analyzed_recipe_instructions200_response_inner_steps_inner_instance = GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.from_json(json)
# print the JSON string representation of the object
print(GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.to_json())

# convert the object into a dict
get_analyzed_recipe_instructions200_response_inner_steps_inner_dict = get_analyzed_recipe_instructions200_response_inner_steps_inner_instance.to_dict()
# create an instance of GetAnalyzedRecipeInstructions200ResponseInnerStepsInner from a dict
get_analyzed_recipe_instructions200_response_inner_steps_inner_from_dict = GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.from_dict(get_analyzed_recipe_instructions200_response_inner_steps_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



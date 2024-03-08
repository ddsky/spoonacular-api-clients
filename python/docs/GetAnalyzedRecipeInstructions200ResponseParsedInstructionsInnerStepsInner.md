# GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **float** |  | 
**step** | **str** |  | 
**ingredients** | [**List[GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner]**](GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.md) |  | [optional] 
**equipment** | [**List[GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner]**](GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.md) |  | [optional] 

## Example

```python
from spoonacular.models.get_analyzed_recipe_instructions200_response_parsed_instructions_inner_steps_inner import GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner from a JSON string
get_analyzed_recipe_instructions200_response_parsed_instructions_inner_steps_inner_instance = GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.from_json(json)
# print the JSON string representation of the object
print GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.to_json()

# convert the object into a dict
get_analyzed_recipe_instructions200_response_parsed_instructions_inner_steps_inner_dict = get_analyzed_recipe_instructions200_response_parsed_instructions_inner_steps_inner_instance.to_dict()
# create an instance of GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner from a dict
get_analyzed_recipe_instructions200_response_parsed_instructions_inner_steps_inner_form_dict = get_analyzed_recipe_instructions200_response_parsed_instructions_inner_steps_inner.from_dict(get_analyzed_recipe_instructions200_response_parsed_instructions_inner_steps_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



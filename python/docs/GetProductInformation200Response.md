# GetProductInformation200Response



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **str** |  | 
**breadcrumbs** | **List[str]** |  | 
**image_type** | **str** |  | 
**badges** | **List[str]** |  | 
**important_badges** | **List[str]** |  | 
**ingredient_count** | **int** |  | 
**generated_text** | **object** |  | [optional] 
**ingredient_list** | **str** |  | 
**ingredients** | [**List[GetProductInformation200ResponseIngredientsInner]**](GetProductInformation200ResponseIngredientsInner.md) |  | 
**likes** | **float** |  | 
**aisle** | **str** |  | 
**nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  | 
**price** | **float** |  | 
**servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  | 
**spoonacular_score** | **float** |  | 

## Example

```python
from spoonacular.models.get_product_information200_response import GetProductInformation200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetProductInformation200Response from a JSON string
get_product_information200_response_instance = GetProductInformation200Response.from_json(json)
# print the JSON string representation of the object
print GetProductInformation200Response.to_json()

# convert the object into a dict
get_product_information200_response_dict = get_product_information200_response_instance.to_dict()
# create an instance of GetProductInformation200Response from a dict
get_product_information200_response_form_dict = get_product_information200_response.from_dict(get_product_information200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# SearchGroceryProductsByUPC200Response



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **str** |  | 
**badges** | **List[str]** |  | 
**important_badges** | **List[str]** |  | 
**breadcrumbs** | **List[str]** |  | 
**generated_text** | **str** |  | 
**image_type** | **str** |  | 
**ingredient_count** | **int** |  | [optional] 
**ingredient_list** | **str** |  | 
**ingredients** | [**List[SearchGroceryProductsByUPC200ResponseIngredientsInner]**](SearchGroceryProductsByUPC200ResponseIngredientsInner.md) |  | 
**likes** | **float** |  | 
**nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  | 
**price** | **float** |  | 
**servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  | 
**spoonacular_score** | **float** |  | 

## Example

```python
from spoonacular.models.search_grocery_products_by_upc200_response import SearchGroceryProductsByUPC200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchGroceryProductsByUPC200Response from a JSON string
search_grocery_products_by_upc200_response_instance = SearchGroceryProductsByUPC200Response.from_json(json)
# print the JSON string representation of the object
print SearchGroceryProductsByUPC200Response.to_json()

# convert the object into a dict
search_grocery_products_by_upc200_response_dict = search_grocery_products_by_upc200_response_instance.to_dict()
# create an instance of SearchGroceryProductsByUPC200Response from a dict
search_grocery_products_by_upc200_response_form_dict = search_grocery_products_by_upc200_response.from_dict(search_grocery_products_by_upc200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



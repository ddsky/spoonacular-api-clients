# GenerateShoppingList200Response



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aisles** | [**List[GetShoppingList200ResponseAislesInner]**](GetShoppingList200ResponseAislesInner.md) |  | 
**cost** | **float** |  | 
**start_date** | **float** |  | 
**end_date** | **float** |  | 

## Example

```python
from spoonacular.models.generate_shopping_list200_response import GenerateShoppingList200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GenerateShoppingList200Response from a JSON string
generate_shopping_list200_response_instance = GenerateShoppingList200Response.from_json(json)
# print the JSON string representation of the object
print GenerateShoppingList200Response.to_json()

# convert the object into a dict
generate_shopping_list200_response_dict = generate_shopping_list200_response_instance.to_dict()
# create an instance of GenerateShoppingList200Response from a dict
generate_shopping_list200_response_form_dict = generate_shopping_list200_response.from_dict(generate_shopping_list200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



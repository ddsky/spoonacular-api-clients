# GenerateShoppingListRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **str** | The username. | 
**start_date** | **str** | The start date in the format yyyy-mm-dd. | 
**end_date** | **str** | The end date in the format yyyy-mm-dd. | 
**hash** | **str** | The private hash for the username. | 

## Example

```python
from spoonacular.models.generate_shopping_list_request import GenerateShoppingListRequest

# TODO update the JSON string below
json = "{}"
# create an instance of GenerateShoppingListRequest from a JSON string
generate_shopping_list_request_instance = GenerateShoppingListRequest.from_json(json)
# print the JSON string representation of the object
print GenerateShoppingListRequest.to_json()

# convert the object into a dict
generate_shopping_list_request_dict = generate_shopping_list_request_instance.to_dict()
# create an instance of GenerateShoppingListRequest from a dict
generate_shopping_list_request_form_dict = generate_shopping_list_request.from_dict(generate_shopping_list_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



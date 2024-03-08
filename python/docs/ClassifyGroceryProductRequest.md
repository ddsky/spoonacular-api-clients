# ClassifyGroceryProductRequest



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | 
**upc** | **str** |  | 
**plu_code** | **str** |  | 

## Example

```python
from spoonacular.models.classify_grocery_product_request import ClassifyGroceryProductRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ClassifyGroceryProductRequest from a JSON string
classify_grocery_product_request_instance = ClassifyGroceryProductRequest.from_json(json)
# print the JSON string representation of the object
print ClassifyGroceryProductRequest.to_json()

# convert the object into a dict
classify_grocery_product_request_dict = classify_grocery_product_request_instance.to_dict()
# create an instance of ClassifyGroceryProductRequest from a dict
classify_grocery_product_request_form_dict = classify_grocery_product_request.from_dict(classify_grocery_product_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



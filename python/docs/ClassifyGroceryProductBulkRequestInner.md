# ClassifyGroceryProductBulkRequestInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | 
**upc** | **str** |  | 
**plu_code** | **str** |  | 

## Example

```python
from spoonacular.models.classify_grocery_product_bulk_request_inner import ClassifyGroceryProductBulkRequestInner

# TODO update the JSON string below
json = "{}"
# create an instance of ClassifyGroceryProductBulkRequestInner from a JSON string
classify_grocery_product_bulk_request_inner_instance = ClassifyGroceryProductBulkRequestInner.from_json(json)
# print the JSON string representation of the object
print ClassifyGroceryProductBulkRequestInner.to_json()

# convert the object into a dict
classify_grocery_product_bulk_request_inner_dict = classify_grocery_product_bulk_request_inner_instance.to_dict()
# create an instance of ClassifyGroceryProductBulkRequestInner from a dict
classify_grocery_product_bulk_request_inner_form_dict = classify_grocery_product_bulk_request_inner.from_dict(classify_grocery_product_bulk_request_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ComparableProduct


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**difference** | **float** |  | 
**id** | **int** |  | 
**image** | **str** |  | 
**title** | **str** |  | 

## Example

```python
from spoonacular.models.comparable_product import ComparableProduct

# TODO update the JSON string below
json = "{}"
# create an instance of ComparableProduct from a JSON string
comparable_product_instance = ComparableProduct.from_json(json)
# print the JSON string representation of the object
print(ComparableProduct.to_json())

# convert the object into a dict
comparable_product_dict = comparable_product_instance.to_dict()
# create an instance of ComparableProduct from a dict
comparable_product_from_dict = ComparableProduct.from_dict(comparable_product_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



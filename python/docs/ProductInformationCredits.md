# ProductInformationCredits


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **str** |  | [optional] 
**link** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**image_link** | **str** |  | [optional] 

## Example

```python
from spoonacular.models.product_information_credits import ProductInformationCredits

# TODO update the JSON string below
json = "{}"
# create an instance of ProductInformationCredits from a JSON string
product_information_credits_instance = ProductInformationCredits.from_json(json)
# print the JSON string representation of the object
print(ProductInformationCredits.to_json())

# convert the object into a dict
product_information_credits_dict = product_information_credits_instance.to_dict()
# create an instance of ProductInformationCredits from a dict
product_information_credits_from_dict = ProductInformationCredits.from_dict(product_information_credits_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



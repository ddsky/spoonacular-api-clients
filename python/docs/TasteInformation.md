# TasteInformation



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sweetness** | **float** |  | 
**saltiness** | **float** |  | 
**sourness** | **float** |  | 
**bitterness** | **float** |  | 
**savoriness** | **float** |  | 
**fattiness** | **float** |  | 
**spiciness** | **float** |  | 

## Example

```python
from spoonacular.models.taste_information import TasteInformation

# TODO update the JSON string below
json = "{}"
# create an instance of TasteInformation from a JSON string
taste_information_instance = TasteInformation.from_json(json)
# print the JSON string representation of the object
print(TasteInformation.to_json())

# convert the object into a dict
taste_information_dict = taste_information_instance.to_dict()
# create an instance of TasteInformation from a dict
taste_information_from_dict = TasteInformation.from_dict(taste_information_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



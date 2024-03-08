# ConvertAmounts200Response



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_amount** | **float** |  | 
**source_unit** | **str** |  | 
**target_amount** | **float** |  | 
**target_unit** | **str** |  | 
**answer** | **str** |  | 

## Example

```python
from spoonacular.models.convert_amounts200_response import ConvertAmounts200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ConvertAmounts200Response from a JSON string
convert_amounts200_response_instance = ConvertAmounts200Response.from_json(json)
# print the JSON string representation of the object
print ConvertAmounts200Response.to_json()

# convert the object into a dict
convert_amounts200_response_dict = convert_amounts200_response_instance.to_dict()
# create an instance of ConvertAmounts200Response from a dict
convert_amounts200_response_form_dict = convert_amounts200_response.from_dict(convert_amounts200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# SearchAllFood200Response



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **str** |  | 
**total_results** | **int** |  | 
**limit** | **int** |  | 
**offset** | **int** |  | 
**search_results** | [**List[SearchAllFood200ResponseSearchResultsInner]**](SearchAllFood200ResponseSearchResultsInner.md) |  | 

## Example

```python
from spoonacular.models.search_all_food200_response import SearchAllFood200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchAllFood200Response from a JSON string
search_all_food200_response_instance = SearchAllFood200Response.from_json(json)
# print the JSON string representation of the object
print SearchAllFood200Response.to_json()

# convert the object into a dict
search_all_food200_response_dict = search_all_food200_response_instance.to_dict()
# create an instance of SearchAllFood200Response from a dict
search_all_food200_response_form_dict = search_all_food200_response.from_dict(search_all_food200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



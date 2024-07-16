# SearchResultDataPointsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **str** |  | 
**value** | **object** |  | 
**show** | **bool** |  | [optional] 

## Example

```python
from spoonacular.models.search_result_data_points_inner import SearchResultDataPointsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchResultDataPointsInner from a JSON string
search_result_data_points_inner_instance = SearchResultDataPointsInner.from_json(json)
# print the JSON string representation of the object
print(SearchResultDataPointsInner.to_json())

# convert the object into a dict
search_result_data_points_inner_dict = search_result_data_points_inner_instance.to_dict()
# create an instance of SearchResultDataPointsInner from a dict
search_result_data_points_inner_from_dict = SearchResultDataPointsInner.from_dict(search_result_data_points_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



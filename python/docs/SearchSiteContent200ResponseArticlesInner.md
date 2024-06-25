# SearchSiteContent200ResponseArticlesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data_points** | [**List[SearchSiteContent200ResponseArticlesInnerDataPointsInner]**](SearchSiteContent200ResponseArticlesInnerDataPointsInner.md) |  | [optional] 
**image** | **str** |  | 
**link** | **str** |  | 
**name** | **str** |  | 

## Example

```python
from spoonacular.models.search_site_content200_response_articles_inner import SearchSiteContent200ResponseArticlesInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchSiteContent200ResponseArticlesInner from a JSON string
search_site_content200_response_articles_inner_instance = SearchSiteContent200ResponseArticlesInner.from_json(json)
# print the JSON string representation of the object
print(SearchSiteContent200ResponseArticlesInner.to_json())

# convert the object into a dict
search_site_content200_response_articles_inner_dict = search_site_content200_response_articles_inner_instance.to_dict()
# create an instance of SearchSiteContent200ResponseArticlesInner from a dict
search_site_content200_response_articles_inner_from_dict = SearchSiteContent200ResponseArticlesInner.from_dict(search_site_content200_response_articles_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



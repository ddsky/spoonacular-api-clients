# GetWinePairing200ResponseProductMatchesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **str** |  | 
**average_rating** | **float** |  | 
**description** | **object** |  | [optional] 
**image_url** | **str** |  | 
**link** | **str** |  | 
**price** | **str** |  | 
**rating_count** | **int** |  | 
**score** | **float** |  | 

## Example

```python
from spoonacular.models.get_wine_pairing200_response_product_matches_inner import GetWinePairing200ResponseProductMatchesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetWinePairing200ResponseProductMatchesInner from a JSON string
get_wine_pairing200_response_product_matches_inner_instance = GetWinePairing200ResponseProductMatchesInner.from_json(json)
# print the JSON string representation of the object
print GetWinePairing200ResponseProductMatchesInner.to_json()

# convert the object into a dict
get_wine_pairing200_response_product_matches_inner_dict = get_wine_pairing200_response_product_matches_inner_instance.to_dict()
# create an instance of GetWinePairing200ResponseProductMatchesInner from a dict
get_wine_pairing200_response_product_matches_inner_form_dict = get_wine_pairing200_response_product_matches_inner.from_dict(get_wine_pairing200_response_product_matches_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



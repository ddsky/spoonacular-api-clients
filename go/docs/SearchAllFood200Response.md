# SearchAllFood200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Query** | **string** |  | 
**TotalResults** | **int32** |  | 
**Limit** | **int32** |  | 
**Offset** | **int32** |  | 
**SearchResults** | [**[]SearchAllFood200ResponseSearchResultsInner**](SearchAllFood200ResponseSearchResultsInner.md) |  | 

## Methods

### NewSearchAllFood200Response

`func NewSearchAllFood200Response(query string, totalResults int32, limit int32, offset int32, searchResults []SearchAllFood200ResponseSearchResultsInner, ) *SearchAllFood200Response`

NewSearchAllFood200Response instantiates a new SearchAllFood200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchAllFood200ResponseWithDefaults

`func NewSearchAllFood200ResponseWithDefaults() *SearchAllFood200Response`

NewSearchAllFood200ResponseWithDefaults instantiates a new SearchAllFood200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetQuery

`func (o *SearchAllFood200Response) GetQuery() string`

GetQuery returns the Query field if non-nil, zero value otherwise.

### GetQueryOk

`func (o *SearchAllFood200Response) GetQueryOk() (*string, bool)`

GetQueryOk returns a tuple with the Query field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuery

`func (o *SearchAllFood200Response) SetQuery(v string)`

SetQuery sets Query field to given value.


### GetTotalResults

`func (o *SearchAllFood200Response) GetTotalResults() int32`

GetTotalResults returns the TotalResults field if non-nil, zero value otherwise.

### GetTotalResultsOk

`func (o *SearchAllFood200Response) GetTotalResultsOk() (*int32, bool)`

GetTotalResultsOk returns a tuple with the TotalResults field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalResults

`func (o *SearchAllFood200Response) SetTotalResults(v int32)`

SetTotalResults sets TotalResults field to given value.


### GetLimit

`func (o *SearchAllFood200Response) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *SearchAllFood200Response) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *SearchAllFood200Response) SetLimit(v int32)`

SetLimit sets Limit field to given value.


### GetOffset

`func (o *SearchAllFood200Response) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *SearchAllFood200Response) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *SearchAllFood200Response) SetOffset(v int32)`

SetOffset sets Offset field to given value.


### GetSearchResults

`func (o *SearchAllFood200Response) GetSearchResults() []SearchAllFood200ResponseSearchResultsInner`

GetSearchResults returns the SearchResults field if non-nil, zero value otherwise.

### GetSearchResultsOk

`func (o *SearchAllFood200Response) GetSearchResultsOk() (*[]SearchAllFood200ResponseSearchResultsInner, bool)`

GetSearchResultsOk returns a tuple with the SearchResults field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSearchResults

`func (o *SearchAllFood200Response) SetSearchResults(v []SearchAllFood200ResponseSearchResultsInner)`

SetSearchResults sets SearchResults field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



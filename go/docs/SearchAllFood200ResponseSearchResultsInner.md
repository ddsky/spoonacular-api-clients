# SearchAllFood200ResponseSearchResultsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | 
**TotalResults** | **int32** |  | 
**Results** | Pointer to [**[]SearchAllFood200ResponseSearchResultsInnerResultsInner**](SearchAllFood200ResponseSearchResultsInnerResultsInner.md) |  | [optional] 

## Methods

### NewSearchAllFood200ResponseSearchResultsInner

`func NewSearchAllFood200ResponseSearchResultsInner(name string, totalResults int32, ) *SearchAllFood200ResponseSearchResultsInner`

NewSearchAllFood200ResponseSearchResultsInner instantiates a new SearchAllFood200ResponseSearchResultsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchAllFood200ResponseSearchResultsInnerWithDefaults

`func NewSearchAllFood200ResponseSearchResultsInnerWithDefaults() *SearchAllFood200ResponseSearchResultsInner`

NewSearchAllFood200ResponseSearchResultsInnerWithDefaults instantiates a new SearchAllFood200ResponseSearchResultsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *SearchAllFood200ResponseSearchResultsInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SearchAllFood200ResponseSearchResultsInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SearchAllFood200ResponseSearchResultsInner) SetName(v string)`

SetName sets Name field to given value.


### GetTotalResults

`func (o *SearchAllFood200ResponseSearchResultsInner) GetTotalResults() int32`

GetTotalResults returns the TotalResults field if non-nil, zero value otherwise.

### GetTotalResultsOk

`func (o *SearchAllFood200ResponseSearchResultsInner) GetTotalResultsOk() (*int32, bool)`

GetTotalResultsOk returns a tuple with the TotalResults field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalResults

`func (o *SearchAllFood200ResponseSearchResultsInner) SetTotalResults(v int32)`

SetTotalResults sets TotalResults field to given value.


### GetResults

`func (o *SearchAllFood200ResponseSearchResultsInner) GetResults() []SearchAllFood200ResponseSearchResultsInnerResultsInner`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *SearchAllFood200ResponseSearchResultsInner) GetResultsOk() (*[]SearchAllFood200ResponseSearchResultsInnerResultsInner, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *SearchAllFood200ResponseSearchResultsInner) SetResults(v []SearchAllFood200ResponseSearchResultsInnerResultsInner)`

SetResults sets Results field to given value.

### HasResults

`func (o *SearchAllFood200ResponseSearchResultsInner) HasResults() bool`

HasResults returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



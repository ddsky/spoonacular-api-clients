# SearchResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DataPoints** | Pointer to [**[]SearchResultDataPointsInner**](SearchResultDataPointsInner.md) |  | [optional] 
**Image** | Pointer to **string** |  | [optional] 
**Link** | Pointer to **NullableString** |  | [optional] 
**Name** | **string** |  | 
**Type** | Pointer to **string** |  | [optional] 
**Kvtable** | Pointer to **string** |  | [optional] 
**Content** | Pointer to **NullableString** |  | [optional] 
**Id** | Pointer to **int32** |  | [optional] 
**Relevance** | Pointer to **float32** |  | [optional] 

## Methods

### NewSearchResult

`func NewSearchResult(name string, ) *SearchResult`

NewSearchResult instantiates a new SearchResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchResultWithDefaults

`func NewSearchResultWithDefaults() *SearchResult`

NewSearchResultWithDefaults instantiates a new SearchResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDataPoints

`func (o *SearchResult) GetDataPoints() []SearchResultDataPointsInner`

GetDataPoints returns the DataPoints field if non-nil, zero value otherwise.

### GetDataPointsOk

`func (o *SearchResult) GetDataPointsOk() (*[]SearchResultDataPointsInner, bool)`

GetDataPointsOk returns a tuple with the DataPoints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataPoints

`func (o *SearchResult) SetDataPoints(v []SearchResultDataPointsInner)`

SetDataPoints sets DataPoints field to given value.

### HasDataPoints

`func (o *SearchResult) HasDataPoints() bool`

HasDataPoints returns a boolean if a field has been set.

### GetImage

`func (o *SearchResult) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *SearchResult) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *SearchResult) SetImage(v string)`

SetImage sets Image field to given value.

### HasImage

`func (o *SearchResult) HasImage() bool`

HasImage returns a boolean if a field has been set.

### GetLink

`func (o *SearchResult) GetLink() string`

GetLink returns the Link field if non-nil, zero value otherwise.

### GetLinkOk

`func (o *SearchResult) GetLinkOk() (*string, bool)`

GetLinkOk returns a tuple with the Link field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLink

`func (o *SearchResult) SetLink(v string)`

SetLink sets Link field to given value.

### HasLink

`func (o *SearchResult) HasLink() bool`

HasLink returns a boolean if a field has been set.

### SetLinkNil

`func (o *SearchResult) SetLinkNil(b bool)`

 SetLinkNil sets the value for Link to be an explicit nil

### UnsetLink
`func (o *SearchResult) UnsetLink()`

UnsetLink ensures that no value is present for Link, not even an explicit nil
### GetName

`func (o *SearchResult) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SearchResult) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SearchResult) SetName(v string)`

SetName sets Name field to given value.


### GetType

`func (o *SearchResult) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *SearchResult) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *SearchResult) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *SearchResult) HasType() bool`

HasType returns a boolean if a field has been set.

### GetKvtable

`func (o *SearchResult) GetKvtable() string`

GetKvtable returns the Kvtable field if non-nil, zero value otherwise.

### GetKvtableOk

`func (o *SearchResult) GetKvtableOk() (*string, bool)`

GetKvtableOk returns a tuple with the Kvtable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKvtable

`func (o *SearchResult) SetKvtable(v string)`

SetKvtable sets Kvtable field to given value.

### HasKvtable

`func (o *SearchResult) HasKvtable() bool`

HasKvtable returns a boolean if a field has been set.

### GetContent

`func (o *SearchResult) GetContent() string`

GetContent returns the Content field if non-nil, zero value otherwise.

### GetContentOk

`func (o *SearchResult) GetContentOk() (*string, bool)`

GetContentOk returns a tuple with the Content field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContent

`func (o *SearchResult) SetContent(v string)`

SetContent sets Content field to given value.

### HasContent

`func (o *SearchResult) HasContent() bool`

HasContent returns a boolean if a field has been set.

### SetContentNil

`func (o *SearchResult) SetContentNil(b bool)`

 SetContentNil sets the value for Content to be an explicit nil

### UnsetContent
`func (o *SearchResult) UnsetContent()`

UnsetContent ensures that no value is present for Content, not even an explicit nil
### GetId

`func (o *SearchResult) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SearchResult) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SearchResult) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *SearchResult) HasId() bool`

HasId returns a boolean if a field has been set.

### GetRelevance

`func (o *SearchResult) GetRelevance() float32`

GetRelevance returns the Relevance field if non-nil, zero value otherwise.

### GetRelevanceOk

`func (o *SearchResult) GetRelevanceOk() (*float32, bool)`

GetRelevanceOk returns a tuple with the Relevance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRelevance

`func (o *SearchResult) SetRelevance(v float32)`

SetRelevance sets Relevance field to given value.

### HasRelevance

`func (o *SearchResult) HasRelevance() bool`

HasRelevance returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



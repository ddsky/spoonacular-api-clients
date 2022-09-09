# SearchFoodVideos200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Videos** | [**[]SearchFoodVideos200ResponseVideosInner**](SearchFoodVideos200ResponseVideosInner.md) |  | 
**TotalResults** | **int32** |  | 

## Methods

### NewSearchFoodVideos200Response

`func NewSearchFoodVideos200Response(videos []SearchFoodVideos200ResponseVideosInner, totalResults int32, ) *SearchFoodVideos200Response`

NewSearchFoodVideos200Response instantiates a new SearchFoodVideos200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchFoodVideos200ResponseWithDefaults

`func NewSearchFoodVideos200ResponseWithDefaults() *SearchFoodVideos200Response`

NewSearchFoodVideos200ResponseWithDefaults instantiates a new SearchFoodVideos200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetVideos

`func (o *SearchFoodVideos200Response) GetVideos() []SearchFoodVideos200ResponseVideosInner`

GetVideos returns the Videos field if non-nil, zero value otherwise.

### GetVideosOk

`func (o *SearchFoodVideos200Response) GetVideosOk() (*[]SearchFoodVideos200ResponseVideosInner, bool)`

GetVideosOk returns a tuple with the Videos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVideos

`func (o *SearchFoodVideos200Response) SetVideos(v []SearchFoodVideos200ResponseVideosInner)`

SetVideos sets Videos field to given value.


### GetTotalResults

`func (o *SearchFoodVideos200Response) GetTotalResults() int32`

GetTotalResults returns the TotalResults field if non-nil, zero value otherwise.

### GetTotalResultsOk

`func (o *SearchFoodVideos200Response) GetTotalResultsOk() (*int32, bool)`

GetTotalResultsOk returns a tuple with the TotalResults field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalResults

`func (o *SearchFoodVideos200Response) SetTotalResults(v int32)`

SetTotalResults sets TotalResults field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



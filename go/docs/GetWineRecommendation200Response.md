# GetWineRecommendation200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RecommendedWines** | [**[]GetWineRecommendation200ResponseRecommendedWinesInner**](GetWineRecommendation200ResponseRecommendedWinesInner.md) |  | 
**TotalFound** | **int32** |  | 

## Methods

### NewGetWineRecommendation200Response

`func NewGetWineRecommendation200Response(recommendedWines []GetWineRecommendation200ResponseRecommendedWinesInner, totalFound int32, ) *GetWineRecommendation200Response`

NewGetWineRecommendation200Response instantiates a new GetWineRecommendation200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetWineRecommendation200ResponseWithDefaults

`func NewGetWineRecommendation200ResponseWithDefaults() *GetWineRecommendation200Response`

NewGetWineRecommendation200ResponseWithDefaults instantiates a new GetWineRecommendation200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRecommendedWines

`func (o *GetWineRecommendation200Response) GetRecommendedWines() []GetWineRecommendation200ResponseRecommendedWinesInner`

GetRecommendedWines returns the RecommendedWines field if non-nil, zero value otherwise.

### GetRecommendedWinesOk

`func (o *GetWineRecommendation200Response) GetRecommendedWinesOk() (*[]GetWineRecommendation200ResponseRecommendedWinesInner, bool)`

GetRecommendedWinesOk returns a tuple with the RecommendedWines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecommendedWines

`func (o *GetWineRecommendation200Response) SetRecommendedWines(v []GetWineRecommendation200ResponseRecommendedWinesInner)`

SetRecommendedWines sets RecommendedWines field to given value.


### GetTotalFound

`func (o *GetWineRecommendation200Response) GetTotalFound() int32`

GetTotalFound returns the TotalFound field if non-nil, zero value otherwise.

### GetTotalFoundOk

`func (o *GetWineRecommendation200Response) GetTotalFoundOk() (*int32, bool)`

GetTotalFoundOk returns a tuple with the TotalFound field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalFound

`func (o *GetWineRecommendation200Response) SetTotalFound(v int32)`

SetTotalFound sets TotalFound field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



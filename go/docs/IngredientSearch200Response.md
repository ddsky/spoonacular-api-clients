# IngredientSearch200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**[]IngredientSearch200ResponseResultsInner**](IngredientSearch200ResponseResultsInner.md) |  | 
**Offset** | **int32** |  | 
**Number** | **int32** |  | 
**TotalResults** | **int32** |  | 

## Methods

### NewIngredientSearch200Response

`func NewIngredientSearch200Response(results []IngredientSearch200ResponseResultsInner, offset int32, number int32, totalResults int32, ) *IngredientSearch200Response`

NewIngredientSearch200Response instantiates a new IngredientSearch200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIngredientSearch200ResponseWithDefaults

`func NewIngredientSearch200ResponseWithDefaults() *IngredientSearch200Response`

NewIngredientSearch200ResponseWithDefaults instantiates a new IngredientSearch200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResults

`func (o *IngredientSearch200Response) GetResults() []IngredientSearch200ResponseResultsInner`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *IngredientSearch200Response) GetResultsOk() (*[]IngredientSearch200ResponseResultsInner, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *IngredientSearch200Response) SetResults(v []IngredientSearch200ResponseResultsInner)`

SetResults sets Results field to given value.


### GetOffset

`func (o *IngredientSearch200Response) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *IngredientSearch200Response) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *IngredientSearch200Response) SetOffset(v int32)`

SetOffset sets Offset field to given value.


### GetNumber

`func (o *IngredientSearch200Response) GetNumber() int32`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *IngredientSearch200Response) GetNumberOk() (*int32, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *IngredientSearch200Response) SetNumber(v int32)`

SetNumber sets Number field to given value.


### GetTotalResults

`func (o *IngredientSearch200Response) GetTotalResults() int32`

GetTotalResults returns the TotalResults field if non-nil, zero value otherwise.

### GetTotalResultsOk

`func (o *IngredientSearch200Response) GetTotalResultsOk() (*int32, bool)`

GetTotalResultsOk returns a tuple with the TotalResults field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalResults

`func (o *IngredientSearch200Response) SetTotalResults(v int32)`

SetTotalResults sets TotalResults field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



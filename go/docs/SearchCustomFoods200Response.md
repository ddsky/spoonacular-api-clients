# SearchCustomFoods200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomFoods** | [**[]SearchCustomFoods200ResponseCustomFoodsInner**](SearchCustomFoods200ResponseCustomFoodsInner.md) |  | 
**Type** | **string** |  | 
**Offset** | **int32** |  | 
**Number** | **int32** |  | 

## Methods

### NewSearchCustomFoods200Response

`func NewSearchCustomFoods200Response(customFoods []SearchCustomFoods200ResponseCustomFoodsInner, type_ string, offset int32, number int32, ) *SearchCustomFoods200Response`

NewSearchCustomFoods200Response instantiates a new SearchCustomFoods200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchCustomFoods200ResponseWithDefaults

`func NewSearchCustomFoods200ResponseWithDefaults() *SearchCustomFoods200Response`

NewSearchCustomFoods200ResponseWithDefaults instantiates a new SearchCustomFoods200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCustomFoods

`func (o *SearchCustomFoods200Response) GetCustomFoods() []SearchCustomFoods200ResponseCustomFoodsInner`

GetCustomFoods returns the CustomFoods field if non-nil, zero value otherwise.

### GetCustomFoodsOk

`func (o *SearchCustomFoods200Response) GetCustomFoodsOk() (*[]SearchCustomFoods200ResponseCustomFoodsInner, bool)`

GetCustomFoodsOk returns a tuple with the CustomFoods field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomFoods

`func (o *SearchCustomFoods200Response) SetCustomFoods(v []SearchCustomFoods200ResponseCustomFoodsInner)`

SetCustomFoods sets CustomFoods field to given value.


### GetType

`func (o *SearchCustomFoods200Response) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *SearchCustomFoods200Response) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *SearchCustomFoods200Response) SetType(v string)`

SetType sets Type field to given value.


### GetOffset

`func (o *SearchCustomFoods200Response) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *SearchCustomFoods200Response) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *SearchCustomFoods200Response) SetOffset(v int32)`

SetOffset sets Offset field to given value.


### GetNumber

`func (o *SearchCustomFoods200Response) GetNumber() int32`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *SearchCustomFoods200Response) GetNumberOk() (*int32, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *SearchCustomFoods200Response) SetNumber(v int32)`

SetNumber sets Number field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



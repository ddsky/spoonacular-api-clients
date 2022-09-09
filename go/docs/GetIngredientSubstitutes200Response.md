# GetIngredientSubstitutes200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ingredient** | **string** |  | 
**Substitutes** | **[]string** |  | 
**Message** | **string** |  | 

## Methods

### NewGetIngredientSubstitutes200Response

`func NewGetIngredientSubstitutes200Response(ingredient string, substitutes []string, message string, ) *GetIngredientSubstitutes200Response`

NewGetIngredientSubstitutes200Response instantiates a new GetIngredientSubstitutes200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetIngredientSubstitutes200ResponseWithDefaults

`func NewGetIngredientSubstitutes200ResponseWithDefaults() *GetIngredientSubstitutes200Response`

NewGetIngredientSubstitutes200ResponseWithDefaults instantiates a new GetIngredientSubstitutes200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIngredient

`func (o *GetIngredientSubstitutes200Response) GetIngredient() string`

GetIngredient returns the Ingredient field if non-nil, zero value otherwise.

### GetIngredientOk

`func (o *GetIngredientSubstitutes200Response) GetIngredientOk() (*string, bool)`

GetIngredientOk returns a tuple with the Ingredient field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredient

`func (o *GetIngredientSubstitutes200Response) SetIngredient(v string)`

SetIngredient sets Ingredient field to given value.


### GetSubstitutes

`func (o *GetIngredientSubstitutes200Response) GetSubstitutes() []string`

GetSubstitutes returns the Substitutes field if non-nil, zero value otherwise.

### GetSubstitutesOk

`func (o *GetIngredientSubstitutes200Response) GetSubstitutesOk() (*[]string, bool)`

GetSubstitutesOk returns a tuple with the Substitutes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubstitutes

`func (o *GetIngredientSubstitutes200Response) SetSubstitutes(v []string)`

SetSubstitutes sets Substitutes field to given value.


### GetMessage

`func (o *GetIngredientSubstitutes200Response) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *GetIngredientSubstitutes200Response) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *GetIngredientSubstitutes200Response) SetMessage(v string)`

SetMessage sets Message field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# GenerateShoppingList200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Aisles** | [**[]GetShoppingList200ResponseAislesInner**](GetShoppingList200ResponseAislesInner.md) |  | 
**Cost** | **float32** |  | 
**StartDate** | **float32** |  | 
**EndDate** | **float32** |  | 

## Methods

### NewGenerateShoppingList200Response

`func NewGenerateShoppingList200Response(aisles []GetShoppingList200ResponseAislesInner, cost float32, startDate float32, endDate float32, ) *GenerateShoppingList200Response`

NewGenerateShoppingList200Response instantiates a new GenerateShoppingList200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGenerateShoppingList200ResponseWithDefaults

`func NewGenerateShoppingList200ResponseWithDefaults() *GenerateShoppingList200Response`

NewGenerateShoppingList200ResponseWithDefaults instantiates a new GenerateShoppingList200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAisles

`func (o *GenerateShoppingList200Response) GetAisles() []GetShoppingList200ResponseAislesInner`

GetAisles returns the Aisles field if non-nil, zero value otherwise.

### GetAislesOk

`func (o *GenerateShoppingList200Response) GetAislesOk() (*[]GetShoppingList200ResponseAislesInner, bool)`

GetAislesOk returns a tuple with the Aisles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAisles

`func (o *GenerateShoppingList200Response) SetAisles(v []GetShoppingList200ResponseAislesInner)`

SetAisles sets Aisles field to given value.


### GetCost

`func (o *GenerateShoppingList200Response) GetCost() float32`

GetCost returns the Cost field if non-nil, zero value otherwise.

### GetCostOk

`func (o *GenerateShoppingList200Response) GetCostOk() (*float32, bool)`

GetCostOk returns a tuple with the Cost field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCost

`func (o *GenerateShoppingList200Response) SetCost(v float32)`

SetCost sets Cost field to given value.


### GetStartDate

`func (o *GenerateShoppingList200Response) GetStartDate() float32`

GetStartDate returns the StartDate field if non-nil, zero value otherwise.

### GetStartDateOk

`func (o *GenerateShoppingList200Response) GetStartDateOk() (*float32, bool)`

GetStartDateOk returns a tuple with the StartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartDate

`func (o *GenerateShoppingList200Response) SetStartDate(v float32)`

SetStartDate sets StartDate field to given value.


### GetEndDate

`func (o *GenerateShoppingList200Response) GetEndDate() float32`

GetEndDate returns the EndDate field if non-nil, zero value otherwise.

### GetEndDateOk

`func (o *GenerateShoppingList200Response) GetEndDateOk() (*float32, bool)`

GetEndDateOk returns a tuple with the EndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndDate

`func (o *GenerateShoppingList200Response) SetEndDate(v float32)`

SetEndDate sets EndDate field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



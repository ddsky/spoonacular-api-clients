# GetShoppingList200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Aisles** | [**[]GetShoppingList200ResponseAislesInner**](GetShoppingList200ResponseAislesInner.md) |  | 
**Cost** | **float32** |  | 
**StartDate** | **float32** |  | 
**EndDate** | **float32** |  | 

## Methods

### NewGetShoppingList200Response

`func NewGetShoppingList200Response(aisles []GetShoppingList200ResponseAislesInner, cost float32, startDate float32, endDate float32, ) *GetShoppingList200Response`

NewGetShoppingList200Response instantiates a new GetShoppingList200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetShoppingList200ResponseWithDefaults

`func NewGetShoppingList200ResponseWithDefaults() *GetShoppingList200Response`

NewGetShoppingList200ResponseWithDefaults instantiates a new GetShoppingList200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAisles

`func (o *GetShoppingList200Response) GetAisles() []GetShoppingList200ResponseAislesInner`

GetAisles returns the Aisles field if non-nil, zero value otherwise.

### GetAislesOk

`func (o *GetShoppingList200Response) GetAislesOk() (*[]GetShoppingList200ResponseAislesInner, bool)`

GetAislesOk returns a tuple with the Aisles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAisles

`func (o *GetShoppingList200Response) SetAisles(v []GetShoppingList200ResponseAislesInner)`

SetAisles sets Aisles field to given value.


### GetCost

`func (o *GetShoppingList200Response) GetCost() float32`

GetCost returns the Cost field if non-nil, zero value otherwise.

### GetCostOk

`func (o *GetShoppingList200Response) GetCostOk() (*float32, bool)`

GetCostOk returns a tuple with the Cost field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCost

`func (o *GetShoppingList200Response) SetCost(v float32)`

SetCost sets Cost field to given value.


### GetStartDate

`func (o *GetShoppingList200Response) GetStartDate() float32`

GetStartDate returns the StartDate field if non-nil, zero value otherwise.

### GetStartDateOk

`func (o *GetShoppingList200Response) GetStartDateOk() (*float32, bool)`

GetStartDateOk returns a tuple with the StartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartDate

`func (o *GetShoppingList200Response) SetStartDate(v float32)`

SetStartDate sets StartDate field to given value.


### GetEndDate

`func (o *GetShoppingList200Response) GetEndDate() float32`

GetEndDate returns the EndDate field if non-nil, zero value otherwise.

### GetEndDateOk

`func (o *GetShoppingList200Response) GetEndDateOk() (*float32, bool)`

GetEndDateOk returns a tuple with the EndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndDate

`func (o *GetShoppingList200Response) SetEndDate(v float32)`

SetEndDate sets EndDate field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



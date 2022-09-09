# GetShoppingList200ResponseAislesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Aisle** | **string** |  | 
**Items** | Pointer to [**[]GetShoppingList200ResponseAislesInnerItemsInner**](GetShoppingList200ResponseAislesInnerItemsInner.md) |  | [optional] 

## Methods

### NewGetShoppingList200ResponseAislesInner

`func NewGetShoppingList200ResponseAislesInner(aisle string, ) *GetShoppingList200ResponseAislesInner`

NewGetShoppingList200ResponseAislesInner instantiates a new GetShoppingList200ResponseAislesInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetShoppingList200ResponseAislesInnerWithDefaults

`func NewGetShoppingList200ResponseAislesInnerWithDefaults() *GetShoppingList200ResponseAislesInner`

NewGetShoppingList200ResponseAislesInnerWithDefaults instantiates a new GetShoppingList200ResponseAislesInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAisle

`func (o *GetShoppingList200ResponseAislesInner) GetAisle() string`

GetAisle returns the Aisle field if non-nil, zero value otherwise.

### GetAisleOk

`func (o *GetShoppingList200ResponseAislesInner) GetAisleOk() (*string, bool)`

GetAisleOk returns a tuple with the Aisle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAisle

`func (o *GetShoppingList200ResponseAislesInner) SetAisle(v string)`

SetAisle sets Aisle field to given value.


### GetItems

`func (o *GetShoppingList200ResponseAislesInner) GetItems() []GetShoppingList200ResponseAislesInnerItemsInner`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *GetShoppingList200ResponseAislesInner) GetItemsOk() (*[]GetShoppingList200ResponseAislesInnerItemsInner, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *GetShoppingList200ResponseAislesInner) SetItems(v []GetShoppingList200ResponseAislesInnerItemsInner)`

SetItems sets Items field to given value.

### HasItems

`func (o *GetShoppingList200ResponseAislesInner) HasItems() bool`

HasItems returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



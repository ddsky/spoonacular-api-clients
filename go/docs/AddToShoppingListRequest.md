# AddToShoppingListRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Item** | **string** |  | 
**Aisle** | **string** |  | 
**Parse** | **bool** |  | 

## Methods

### NewAddToShoppingListRequest

`func NewAddToShoppingListRequest(item string, aisle string, parse bool, ) *AddToShoppingListRequest`

NewAddToShoppingListRequest instantiates a new AddToShoppingListRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAddToShoppingListRequestWithDefaults

`func NewAddToShoppingListRequestWithDefaults() *AddToShoppingListRequest`

NewAddToShoppingListRequestWithDefaults instantiates a new AddToShoppingListRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetItem

`func (o *AddToShoppingListRequest) GetItem() string`

GetItem returns the Item field if non-nil, zero value otherwise.

### GetItemOk

`func (o *AddToShoppingListRequest) GetItemOk() (*string, bool)`

GetItemOk returns a tuple with the Item field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItem

`func (o *AddToShoppingListRequest) SetItem(v string)`

SetItem sets Item field to given value.


### GetAisle

`func (o *AddToShoppingListRequest) GetAisle() string`

GetAisle returns the Aisle field if non-nil, zero value otherwise.

### GetAisleOk

`func (o *AddToShoppingListRequest) GetAisleOk() (*string, bool)`

GetAisleOk returns a tuple with the Aisle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAisle

`func (o *AddToShoppingListRequest) SetAisle(v string)`

SetAisle sets Aisle field to given value.


### GetParse

`func (o *AddToShoppingListRequest) GetParse() bool`

GetParse returns the Parse field if non-nil, zero value otherwise.

### GetParseOk

`func (o *AddToShoppingListRequest) GetParseOk() (*bool, bool)`

GetParseOk returns a tuple with the Parse field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParse

`func (o *AddToShoppingListRequest) SetParse(v bool)`

SetParse sets Parse field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



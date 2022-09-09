# SearchMenuItems200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MenuItems** | [**[]SearchMenuItems200ResponseMenuItemsInner**](SearchMenuItems200ResponseMenuItemsInner.md) |  | 
**TotalMenuItems** | **int32** |  | 
**Type** | **string** |  | 
**Offset** | **int32** |  | 
**Number** | **int32** |  | 

## Methods

### NewSearchMenuItems200Response

`func NewSearchMenuItems200Response(menuItems []SearchMenuItems200ResponseMenuItemsInner, totalMenuItems int32, type_ string, offset int32, number int32, ) *SearchMenuItems200Response`

NewSearchMenuItems200Response instantiates a new SearchMenuItems200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchMenuItems200ResponseWithDefaults

`func NewSearchMenuItems200ResponseWithDefaults() *SearchMenuItems200Response`

NewSearchMenuItems200ResponseWithDefaults instantiates a new SearchMenuItems200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMenuItems

`func (o *SearchMenuItems200Response) GetMenuItems() []SearchMenuItems200ResponseMenuItemsInner`

GetMenuItems returns the MenuItems field if non-nil, zero value otherwise.

### GetMenuItemsOk

`func (o *SearchMenuItems200Response) GetMenuItemsOk() (*[]SearchMenuItems200ResponseMenuItemsInner, bool)`

GetMenuItemsOk returns a tuple with the MenuItems field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMenuItems

`func (o *SearchMenuItems200Response) SetMenuItems(v []SearchMenuItems200ResponseMenuItemsInner)`

SetMenuItems sets MenuItems field to given value.


### GetTotalMenuItems

`func (o *SearchMenuItems200Response) GetTotalMenuItems() int32`

GetTotalMenuItems returns the TotalMenuItems field if non-nil, zero value otherwise.

### GetTotalMenuItemsOk

`func (o *SearchMenuItems200Response) GetTotalMenuItemsOk() (*int32, bool)`

GetTotalMenuItemsOk returns a tuple with the TotalMenuItems field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalMenuItems

`func (o *SearchMenuItems200Response) SetTotalMenuItems(v int32)`

SetTotalMenuItems sets TotalMenuItems field to given value.


### GetType

`func (o *SearchMenuItems200Response) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *SearchMenuItems200Response) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *SearchMenuItems200Response) SetType(v string)`

SetType sets Type field to given value.


### GetOffset

`func (o *SearchMenuItems200Response) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *SearchMenuItems200Response) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *SearchMenuItems200Response) SetOffset(v int32)`

SetOffset sets Offset field to given value.


### GetNumber

`func (o *SearchMenuItems200Response) GetNumber() int32`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *SearchMenuItems200Response) GetNumberOk() (*int32, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *SearchMenuItems200Response) SetNumber(v int32)`

SetNumber sets Number field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



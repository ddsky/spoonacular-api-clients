# AddToMealPlanRequest1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Date** | **float32** |  | 
**Slot** | **int32** |  | 
**Position** | **int32** |  | 
**Type** | **string** |  | 
**Value** | [**AddToMealPlanRequest1Value**](AddToMealPlanRequest1Value.md) |  | 

## Methods

### NewAddToMealPlanRequest1

`func NewAddToMealPlanRequest1(date float32, slot int32, position int32, type_ string, value AddToMealPlanRequest1Value, ) *AddToMealPlanRequest1`

NewAddToMealPlanRequest1 instantiates a new AddToMealPlanRequest1 object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAddToMealPlanRequest1WithDefaults

`func NewAddToMealPlanRequest1WithDefaults() *AddToMealPlanRequest1`

NewAddToMealPlanRequest1WithDefaults instantiates a new AddToMealPlanRequest1 object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDate

`func (o *AddToMealPlanRequest1) GetDate() float32`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *AddToMealPlanRequest1) GetDateOk() (*float32, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *AddToMealPlanRequest1) SetDate(v float32)`

SetDate sets Date field to given value.


### GetSlot

`func (o *AddToMealPlanRequest1) GetSlot() int32`

GetSlot returns the Slot field if non-nil, zero value otherwise.

### GetSlotOk

`func (o *AddToMealPlanRequest1) GetSlotOk() (*int32, bool)`

GetSlotOk returns a tuple with the Slot field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlot

`func (o *AddToMealPlanRequest1) SetSlot(v int32)`

SetSlot sets Slot field to given value.


### GetPosition

`func (o *AddToMealPlanRequest1) GetPosition() int32`

GetPosition returns the Position field if non-nil, zero value otherwise.

### GetPositionOk

`func (o *AddToMealPlanRequest1) GetPositionOk() (*int32, bool)`

GetPositionOk returns a tuple with the Position field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPosition

`func (o *AddToMealPlanRequest1) SetPosition(v int32)`

SetPosition sets Position field to given value.


### GetType

`func (o *AddToMealPlanRequest1) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *AddToMealPlanRequest1) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *AddToMealPlanRequest1) SetType(v string)`

SetType sets Type field to given value.


### GetValue

`func (o *AddToMealPlanRequest1) GetValue() AddToMealPlanRequest1Value`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *AddToMealPlanRequest1) GetValueOk() (*AddToMealPlanRequest1Value, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *AddToMealPlanRequest1) SetValue(v AddToMealPlanRequest1Value)`

SetValue sets Value field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



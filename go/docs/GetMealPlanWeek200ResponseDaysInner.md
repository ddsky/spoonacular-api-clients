# GetMealPlanWeek200ResponseDaysInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NutritionSummary** | Pointer to [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] 
**NutritionSummaryBreakfast** | Pointer to [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] 
**NutritionSummaryLunch** | Pointer to [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] 
**NutritionSummaryDinner** | Pointer to [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] 
**Date** | **float32** |  | 
**Day** | **string** |  | 
**Items** | Pointer to [**[]GetMealPlanWeek200ResponseDaysInnerItemsInner**](GetMealPlanWeek200ResponseDaysInnerItemsInner.md) |  | [optional] 

## Methods

### NewGetMealPlanWeek200ResponseDaysInner

`func NewGetMealPlanWeek200ResponseDaysInner(date float32, day string, ) *GetMealPlanWeek200ResponseDaysInner`

NewGetMealPlanWeek200ResponseDaysInner instantiates a new GetMealPlanWeek200ResponseDaysInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetMealPlanWeek200ResponseDaysInnerWithDefaults

`func NewGetMealPlanWeek200ResponseDaysInnerWithDefaults() *GetMealPlanWeek200ResponseDaysInner`

NewGetMealPlanWeek200ResponseDaysInnerWithDefaults instantiates a new GetMealPlanWeek200ResponseDaysInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNutritionSummary

`func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummary() GetMealPlanWeek200ResponseDaysInnerNutritionSummary`

GetNutritionSummary returns the NutritionSummary field if non-nil, zero value otherwise.

### GetNutritionSummaryOk

`func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummaryOk() (*GetMealPlanWeek200ResponseDaysInnerNutritionSummary, bool)`

GetNutritionSummaryOk returns a tuple with the NutritionSummary field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutritionSummary

`func (o *GetMealPlanWeek200ResponseDaysInner) SetNutritionSummary(v GetMealPlanWeek200ResponseDaysInnerNutritionSummary)`

SetNutritionSummary sets NutritionSummary field to given value.

### HasNutritionSummary

`func (o *GetMealPlanWeek200ResponseDaysInner) HasNutritionSummary() bool`

HasNutritionSummary returns a boolean if a field has been set.

### GetNutritionSummaryBreakfast

`func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummaryBreakfast() GetMealPlanWeek200ResponseDaysInnerNutritionSummary`

GetNutritionSummaryBreakfast returns the NutritionSummaryBreakfast field if non-nil, zero value otherwise.

### GetNutritionSummaryBreakfastOk

`func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummaryBreakfastOk() (*GetMealPlanWeek200ResponseDaysInnerNutritionSummary, bool)`

GetNutritionSummaryBreakfastOk returns a tuple with the NutritionSummaryBreakfast field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutritionSummaryBreakfast

`func (o *GetMealPlanWeek200ResponseDaysInner) SetNutritionSummaryBreakfast(v GetMealPlanWeek200ResponseDaysInnerNutritionSummary)`

SetNutritionSummaryBreakfast sets NutritionSummaryBreakfast field to given value.

### HasNutritionSummaryBreakfast

`func (o *GetMealPlanWeek200ResponseDaysInner) HasNutritionSummaryBreakfast() bool`

HasNutritionSummaryBreakfast returns a boolean if a field has been set.

### GetNutritionSummaryLunch

`func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummaryLunch() GetMealPlanWeek200ResponseDaysInnerNutritionSummary`

GetNutritionSummaryLunch returns the NutritionSummaryLunch field if non-nil, zero value otherwise.

### GetNutritionSummaryLunchOk

`func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummaryLunchOk() (*GetMealPlanWeek200ResponseDaysInnerNutritionSummary, bool)`

GetNutritionSummaryLunchOk returns a tuple with the NutritionSummaryLunch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutritionSummaryLunch

`func (o *GetMealPlanWeek200ResponseDaysInner) SetNutritionSummaryLunch(v GetMealPlanWeek200ResponseDaysInnerNutritionSummary)`

SetNutritionSummaryLunch sets NutritionSummaryLunch field to given value.

### HasNutritionSummaryLunch

`func (o *GetMealPlanWeek200ResponseDaysInner) HasNutritionSummaryLunch() bool`

HasNutritionSummaryLunch returns a boolean if a field has been set.

### GetNutritionSummaryDinner

`func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummaryDinner() GetMealPlanWeek200ResponseDaysInnerNutritionSummary`

GetNutritionSummaryDinner returns the NutritionSummaryDinner field if non-nil, zero value otherwise.

### GetNutritionSummaryDinnerOk

`func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummaryDinnerOk() (*GetMealPlanWeek200ResponseDaysInnerNutritionSummary, bool)`

GetNutritionSummaryDinnerOk returns a tuple with the NutritionSummaryDinner field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutritionSummaryDinner

`func (o *GetMealPlanWeek200ResponseDaysInner) SetNutritionSummaryDinner(v GetMealPlanWeek200ResponseDaysInnerNutritionSummary)`

SetNutritionSummaryDinner sets NutritionSummaryDinner field to given value.

### HasNutritionSummaryDinner

`func (o *GetMealPlanWeek200ResponseDaysInner) HasNutritionSummaryDinner() bool`

HasNutritionSummaryDinner returns a boolean if a field has been set.

### GetDate

`func (o *GetMealPlanWeek200ResponseDaysInner) GetDate() float32`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *GetMealPlanWeek200ResponseDaysInner) GetDateOk() (*float32, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *GetMealPlanWeek200ResponseDaysInner) SetDate(v float32)`

SetDate sets Date field to given value.


### GetDay

`func (o *GetMealPlanWeek200ResponseDaysInner) GetDay() string`

GetDay returns the Day field if non-nil, zero value otherwise.

### GetDayOk

`func (o *GetMealPlanWeek200ResponseDaysInner) GetDayOk() (*string, bool)`

GetDayOk returns a tuple with the Day field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDay

`func (o *GetMealPlanWeek200ResponseDaysInner) SetDay(v string)`

SetDay sets Day field to given value.


### GetItems

`func (o *GetMealPlanWeek200ResponseDaysInner) GetItems() []GetMealPlanWeek200ResponseDaysInnerItemsInner`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *GetMealPlanWeek200ResponseDaysInner) GetItemsOk() (*[]GetMealPlanWeek200ResponseDaysInnerItemsInner, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *GetMealPlanWeek200ResponseDaysInner) SetItems(v []GetMealPlanWeek200ResponseDaysInnerItemsInner)`

SetItems sets Items field to given value.

### HasItems

`func (o *GetMealPlanWeek200ResponseDaysInner) HasItems() bool`

HasItems returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



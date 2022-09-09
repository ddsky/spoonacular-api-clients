# GetMealPlanTemplate200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Name** | **string** |  | 
**Days** | [**[]GetMealPlanTemplate200ResponseDaysInner**](GetMealPlanTemplate200ResponseDaysInner.md) |  | 

## Methods

### NewGetMealPlanTemplate200Response

`func NewGetMealPlanTemplate200Response(id int32, name string, days []GetMealPlanTemplate200ResponseDaysInner, ) *GetMealPlanTemplate200Response`

NewGetMealPlanTemplate200Response instantiates a new GetMealPlanTemplate200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetMealPlanTemplate200ResponseWithDefaults

`func NewGetMealPlanTemplate200ResponseWithDefaults() *GetMealPlanTemplate200Response`

NewGetMealPlanTemplate200ResponseWithDefaults instantiates a new GetMealPlanTemplate200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *GetMealPlanTemplate200Response) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *GetMealPlanTemplate200Response) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *GetMealPlanTemplate200Response) SetId(v int32)`

SetId sets Id field to given value.


### GetName

`func (o *GetMealPlanTemplate200Response) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *GetMealPlanTemplate200Response) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *GetMealPlanTemplate200Response) SetName(v string)`

SetName sets Name field to given value.


### GetDays

`func (o *GetMealPlanTemplate200Response) GetDays() []GetMealPlanTemplate200ResponseDaysInner`

GetDays returns the Days field if non-nil, zero value otherwise.

### GetDaysOk

`func (o *GetMealPlanTemplate200Response) GetDaysOk() (*[]GetMealPlanTemplate200ResponseDaysInner, bool)`

GetDaysOk returns a tuple with the Days field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDays

`func (o *GetMealPlanTemplate200Response) SetDays(v []GetMealPlanTemplate200ResponseDaysInner)`

SetDays sets Days field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



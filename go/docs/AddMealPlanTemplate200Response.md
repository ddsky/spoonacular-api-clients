# AddMealPlanTemplate200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | 
**Items** | [**[]AddMealPlanTemplate200ResponseItemsInner**](AddMealPlanTemplate200ResponseItemsInner.md) |  | 
**PublishAsPublic** | **bool** |  | 

## Methods

### NewAddMealPlanTemplate200Response

`func NewAddMealPlanTemplate200Response(name string, items []AddMealPlanTemplate200ResponseItemsInner, publishAsPublic bool, ) *AddMealPlanTemplate200Response`

NewAddMealPlanTemplate200Response instantiates a new AddMealPlanTemplate200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAddMealPlanTemplate200ResponseWithDefaults

`func NewAddMealPlanTemplate200ResponseWithDefaults() *AddMealPlanTemplate200Response`

NewAddMealPlanTemplate200ResponseWithDefaults instantiates a new AddMealPlanTemplate200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *AddMealPlanTemplate200Response) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AddMealPlanTemplate200Response) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AddMealPlanTemplate200Response) SetName(v string)`

SetName sets Name field to given value.


### GetItems

`func (o *AddMealPlanTemplate200Response) GetItems() []AddMealPlanTemplate200ResponseItemsInner`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *AddMealPlanTemplate200Response) GetItemsOk() (*[]AddMealPlanTemplate200ResponseItemsInner, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *AddMealPlanTemplate200Response) SetItems(v []AddMealPlanTemplate200ResponseItemsInner)`

SetItems sets Items field to given value.


### GetPublishAsPublic

`func (o *AddMealPlanTemplate200Response) GetPublishAsPublic() bool`

GetPublishAsPublic returns the PublishAsPublic field if non-nil, zero value otherwise.

### GetPublishAsPublicOk

`func (o *AddMealPlanTemplate200Response) GetPublishAsPublicOk() (*bool, bool)`

GetPublishAsPublicOk returns a tuple with the PublishAsPublic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublishAsPublic

`func (o *AddMealPlanTemplate200Response) SetPublishAsPublic(v bool)`

SetPublishAsPublic sets PublishAsPublic field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



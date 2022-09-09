# DeleteFromMealPlanRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Username** | **string** | The username. | 
**Id** | **float32** | The shopping list item id. | 
**Hash** | **string** | The private hash for the username. | 

## Methods

### NewDeleteFromMealPlanRequest

`func NewDeleteFromMealPlanRequest(username string, id float32, hash string, ) *DeleteFromMealPlanRequest`

NewDeleteFromMealPlanRequest instantiates a new DeleteFromMealPlanRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeleteFromMealPlanRequestWithDefaults

`func NewDeleteFromMealPlanRequestWithDefaults() *DeleteFromMealPlanRequest`

NewDeleteFromMealPlanRequestWithDefaults instantiates a new DeleteFromMealPlanRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUsername

`func (o *DeleteFromMealPlanRequest) GetUsername() string`

GetUsername returns the Username field if non-nil, zero value otherwise.

### GetUsernameOk

`func (o *DeleteFromMealPlanRequest) GetUsernameOk() (*string, bool)`

GetUsernameOk returns a tuple with the Username field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsername

`func (o *DeleteFromMealPlanRequest) SetUsername(v string)`

SetUsername sets Username field to given value.


### GetId

`func (o *DeleteFromMealPlanRequest) GetId() float32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *DeleteFromMealPlanRequest) GetIdOk() (*float32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *DeleteFromMealPlanRequest) SetId(v float32)`

SetId sets Id field to given value.


### GetHash

`func (o *DeleteFromMealPlanRequest) GetHash() string`

GetHash returns the Hash field if non-nil, zero value otherwise.

### GetHashOk

`func (o *DeleteFromMealPlanRequest) GetHashOk() (*string, bool)`

GetHashOk returns a tuple with the Hash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHash

`func (o *DeleteFromMealPlanRequest) SetHash(v string)`

SetHash sets Hash field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# GenerateShoppingListRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Username** | **string** | The username. | 
**StartDate** | **string** | The start date in the format yyyy-mm-dd. | 
**EndDate** | **string** | The end date in the format yyyy-mm-dd. | 
**Hash** | **string** | The private hash for the username. | 

## Methods

### NewGenerateShoppingListRequest

`func NewGenerateShoppingListRequest(username string, startDate string, endDate string, hash string, ) *GenerateShoppingListRequest`

NewGenerateShoppingListRequest instantiates a new GenerateShoppingListRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGenerateShoppingListRequestWithDefaults

`func NewGenerateShoppingListRequestWithDefaults() *GenerateShoppingListRequest`

NewGenerateShoppingListRequestWithDefaults instantiates a new GenerateShoppingListRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUsername

`func (o *GenerateShoppingListRequest) GetUsername() string`

GetUsername returns the Username field if non-nil, zero value otherwise.

### GetUsernameOk

`func (o *GenerateShoppingListRequest) GetUsernameOk() (*string, bool)`

GetUsernameOk returns a tuple with the Username field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsername

`func (o *GenerateShoppingListRequest) SetUsername(v string)`

SetUsername sets Username field to given value.


### GetStartDate

`func (o *GenerateShoppingListRequest) GetStartDate() string`

GetStartDate returns the StartDate field if non-nil, zero value otherwise.

### GetStartDateOk

`func (o *GenerateShoppingListRequest) GetStartDateOk() (*string, bool)`

GetStartDateOk returns a tuple with the StartDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartDate

`func (o *GenerateShoppingListRequest) SetStartDate(v string)`

SetStartDate sets StartDate field to given value.


### GetEndDate

`func (o *GenerateShoppingListRequest) GetEndDate() string`

GetEndDate returns the EndDate field if non-nil, zero value otherwise.

### GetEndDateOk

`func (o *GenerateShoppingListRequest) GetEndDateOk() (*string, bool)`

GetEndDateOk returns a tuple with the EndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndDate

`func (o *GenerateShoppingListRequest) SetEndDate(v string)`

SetEndDate sets EndDate field to given value.


### GetHash

`func (o *GenerateShoppingListRequest) GetHash() string`

GetHash returns the Hash field if non-nil, zero value otherwise.

### GetHashOk

`func (o *GenerateShoppingListRequest) GetHashOk() (*string, bool)`

GetHashOk returns a tuple with the Hash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHash

`func (o *GenerateShoppingListRequest) SetHash(v string)`

SetHash sets Hash field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



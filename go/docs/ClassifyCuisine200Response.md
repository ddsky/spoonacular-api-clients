# ClassifyCuisine200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cuisine** | **string** |  | 
**Cuisines** | **[]string** |  | 
**Confidence** | **float32** |  | 

## Methods

### NewClassifyCuisine200Response

`func NewClassifyCuisine200Response(cuisine string, cuisines []string, confidence float32, ) *ClassifyCuisine200Response`

NewClassifyCuisine200Response instantiates a new ClassifyCuisine200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewClassifyCuisine200ResponseWithDefaults

`func NewClassifyCuisine200ResponseWithDefaults() *ClassifyCuisine200Response`

NewClassifyCuisine200ResponseWithDefaults instantiates a new ClassifyCuisine200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCuisine

`func (o *ClassifyCuisine200Response) GetCuisine() string`

GetCuisine returns the Cuisine field if non-nil, zero value otherwise.

### GetCuisineOk

`func (o *ClassifyCuisine200Response) GetCuisineOk() (*string, bool)`

GetCuisineOk returns a tuple with the Cuisine field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCuisine

`func (o *ClassifyCuisine200Response) SetCuisine(v string)`

SetCuisine sets Cuisine field to given value.


### GetCuisines

`func (o *ClassifyCuisine200Response) GetCuisines() []string`

GetCuisines returns the Cuisines field if non-nil, zero value otherwise.

### GetCuisinesOk

`func (o *ClassifyCuisine200Response) GetCuisinesOk() (*[]string, bool)`

GetCuisinesOk returns a tuple with the Cuisines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCuisines

`func (o *ClassifyCuisine200Response) SetCuisines(v []string)`

SetCuisines sets Cuisines field to given value.


### GetConfidence

`func (o *ClassifyCuisine200Response) GetConfidence() float32`

GetConfidence returns the Confidence field if non-nil, zero value otherwise.

### GetConfidenceOk

`func (o *ClassifyCuisine200Response) GetConfidenceOk() (*float32, bool)`

GetConfidenceOk returns a tuple with the Confidence field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfidence

`func (o *ClassifyCuisine200Response) SetConfidence(v float32)`

SetConfidence sets Confidence field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



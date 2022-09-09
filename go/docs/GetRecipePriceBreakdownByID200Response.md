# GetRecipePriceBreakdownByID200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ingredients** | [**[]GetRecipePriceBreakdownByID200ResponseIngredientsInner**](GetRecipePriceBreakdownByID200ResponseIngredientsInner.md) |  | 
**TotalCost** | **float32** |  | 
**TotalCostPerServing** | **float32** |  | 

## Methods

### NewGetRecipePriceBreakdownByID200Response

`func NewGetRecipePriceBreakdownByID200Response(ingredients []GetRecipePriceBreakdownByID200ResponseIngredientsInner, totalCost float32, totalCostPerServing float32, ) *GetRecipePriceBreakdownByID200Response`

NewGetRecipePriceBreakdownByID200Response instantiates a new GetRecipePriceBreakdownByID200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetRecipePriceBreakdownByID200ResponseWithDefaults

`func NewGetRecipePriceBreakdownByID200ResponseWithDefaults() *GetRecipePriceBreakdownByID200Response`

NewGetRecipePriceBreakdownByID200ResponseWithDefaults instantiates a new GetRecipePriceBreakdownByID200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIngredients

`func (o *GetRecipePriceBreakdownByID200Response) GetIngredients() []GetRecipePriceBreakdownByID200ResponseIngredientsInner`

GetIngredients returns the Ingredients field if non-nil, zero value otherwise.

### GetIngredientsOk

`func (o *GetRecipePriceBreakdownByID200Response) GetIngredientsOk() (*[]GetRecipePriceBreakdownByID200ResponseIngredientsInner, bool)`

GetIngredientsOk returns a tuple with the Ingredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredients

`func (o *GetRecipePriceBreakdownByID200Response) SetIngredients(v []GetRecipePriceBreakdownByID200ResponseIngredientsInner)`

SetIngredients sets Ingredients field to given value.


### GetTotalCost

`func (o *GetRecipePriceBreakdownByID200Response) GetTotalCost() float32`

GetTotalCost returns the TotalCost field if non-nil, zero value otherwise.

### GetTotalCostOk

`func (o *GetRecipePriceBreakdownByID200Response) GetTotalCostOk() (*float32, bool)`

GetTotalCostOk returns a tuple with the TotalCost field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalCost

`func (o *GetRecipePriceBreakdownByID200Response) SetTotalCost(v float32)`

SetTotalCost sets TotalCost field to given value.


### GetTotalCostPerServing

`func (o *GetRecipePriceBreakdownByID200Response) GetTotalCostPerServing() float32`

GetTotalCostPerServing returns the TotalCostPerServing field if non-nil, zero value otherwise.

### GetTotalCostPerServingOk

`func (o *GetRecipePriceBreakdownByID200Response) GetTotalCostPerServingOk() (*float32, bool)`

GetTotalCostPerServingOk returns a tuple with the TotalCostPerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalCostPerServing

`func (o *GetRecipePriceBreakdownByID200Response) SetTotalCostPerServing(v float32)`

SetTotalCostPerServing sets TotalCostPerServing field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# SearchGroceryProducts200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Products** | [**[]AutocompleteRecipeSearch200ResponseInner**](AutocompleteRecipeSearch200ResponseInner.md) |  | 
**TotalProducts** | **int32** |  | 
**Type** | **string** |  | 
**Offset** | **int32** |  | 
**Number** | **int32** |  | 

## Methods

### NewSearchGroceryProducts200Response

`func NewSearchGroceryProducts200Response(products []AutocompleteRecipeSearch200ResponseInner, totalProducts int32, type_ string, offset int32, number int32, ) *SearchGroceryProducts200Response`

NewSearchGroceryProducts200Response instantiates a new SearchGroceryProducts200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchGroceryProducts200ResponseWithDefaults

`func NewSearchGroceryProducts200ResponseWithDefaults() *SearchGroceryProducts200Response`

NewSearchGroceryProducts200ResponseWithDefaults instantiates a new SearchGroceryProducts200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetProducts

`func (o *SearchGroceryProducts200Response) GetProducts() []AutocompleteRecipeSearch200ResponseInner`

GetProducts returns the Products field if non-nil, zero value otherwise.

### GetProductsOk

`func (o *SearchGroceryProducts200Response) GetProductsOk() (*[]AutocompleteRecipeSearch200ResponseInner, bool)`

GetProductsOk returns a tuple with the Products field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProducts

`func (o *SearchGroceryProducts200Response) SetProducts(v []AutocompleteRecipeSearch200ResponseInner)`

SetProducts sets Products field to given value.


### GetTotalProducts

`func (o *SearchGroceryProducts200Response) GetTotalProducts() int32`

GetTotalProducts returns the TotalProducts field if non-nil, zero value otherwise.

### GetTotalProductsOk

`func (o *SearchGroceryProducts200Response) GetTotalProductsOk() (*int32, bool)`

GetTotalProductsOk returns a tuple with the TotalProducts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalProducts

`func (o *SearchGroceryProducts200Response) SetTotalProducts(v int32)`

SetTotalProducts sets TotalProducts field to given value.


### GetType

`func (o *SearchGroceryProducts200Response) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *SearchGroceryProducts200Response) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *SearchGroceryProducts200Response) SetType(v string)`

SetType sets Type field to given value.


### GetOffset

`func (o *SearchGroceryProducts200Response) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *SearchGroceryProducts200Response) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *SearchGroceryProducts200Response) SetOffset(v int32)`

SetOffset sets Offset field to given value.


### GetNumber

`func (o *SearchGroceryProducts200Response) GetNumber() int32`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *SearchGroceryProducts200Response) GetNumberOk() (*int32, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *SearchGroceryProducts200Response) SetNumber(v int32)`

SetNumber sets Number field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



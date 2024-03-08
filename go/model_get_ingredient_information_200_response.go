/*
spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

API version: 1.1
Contact: mail@spoonacular.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package spoonacular

import (
	"encoding/json"
	"bytes"
	"fmt"
)

// checks if the GetIngredientInformation200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GetIngredientInformation200Response{}

// GetIngredientInformation200Response 
type GetIngredientInformation200Response struct {
	Id int32 `json:"id"`
	Original string `json:"original"`
	OriginalName string `json:"originalName"`
	Name string `json:"name"`
	NameClean string `json:"nameClean"`
	Amount float32 `json:"amount"`
	Unit string `json:"unit"`
	UnitShort string `json:"unitShort"`
	UnitLong string `json:"unitLong"`
	PossibleUnits []string `json:"possibleUnits"`
	EstimatedCost ParseIngredients200ResponseInnerEstimatedCost `json:"estimatedCost"`
	Consistency string `json:"consistency"`
	ShoppingListUnits []string `json:"shoppingListUnits"`
	Aisle string `json:"aisle"`
	Image string `json:"image"`
	Meta []map[string]interface{} `json:"meta"`
	Nutrition GetIngredientInformation200ResponseNutrition `json:"nutrition"`
	CategoryPath []string `json:"categoryPath"`
}

type _GetIngredientInformation200Response GetIngredientInformation200Response

// NewGetIngredientInformation200Response instantiates a new GetIngredientInformation200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetIngredientInformation200Response(id int32, original string, originalName string, name string, nameClean string, amount float32, unit string, unitShort string, unitLong string, possibleUnits []string, estimatedCost ParseIngredients200ResponseInnerEstimatedCost, consistency string, shoppingListUnits []string, aisle string, image string, meta []map[string]interface{}, nutrition GetIngredientInformation200ResponseNutrition, categoryPath []string) *GetIngredientInformation200Response {
	this := GetIngredientInformation200Response{}
	this.Id = id
	this.Original = original
	this.OriginalName = originalName
	this.Name = name
	this.NameClean = nameClean
	this.Amount = amount
	this.Unit = unit
	this.UnitShort = unitShort
	this.UnitLong = unitLong
	this.PossibleUnits = possibleUnits
	this.EstimatedCost = estimatedCost
	this.Consistency = consistency
	this.ShoppingListUnits = shoppingListUnits
	this.Aisle = aisle
	this.Image = image
	this.Meta = meta
	this.Nutrition = nutrition
	this.CategoryPath = categoryPath
	return &this
}

// NewGetIngredientInformation200ResponseWithDefaults instantiates a new GetIngredientInformation200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetIngredientInformation200ResponseWithDefaults() *GetIngredientInformation200Response {
	this := GetIngredientInformation200Response{}
	return &this
}

// GetId returns the Id field value
func (o *GetIngredientInformation200Response) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetIdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *GetIngredientInformation200Response) SetId(v int32) {
	o.Id = v
}

// GetOriginal returns the Original field value
func (o *GetIngredientInformation200Response) GetOriginal() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Original
}

// GetOriginalOk returns a tuple with the Original field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetOriginalOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Original, true
}

// SetOriginal sets field value
func (o *GetIngredientInformation200Response) SetOriginal(v string) {
	o.Original = v
}

// GetOriginalName returns the OriginalName field value
func (o *GetIngredientInformation200Response) GetOriginalName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.OriginalName
}

// GetOriginalNameOk returns a tuple with the OriginalName field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetOriginalNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.OriginalName, true
}

// SetOriginalName sets field value
func (o *GetIngredientInformation200Response) SetOriginalName(v string) {
	o.OriginalName = v
}

// GetName returns the Name field value
func (o *GetIngredientInformation200Response) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *GetIngredientInformation200Response) SetName(v string) {
	o.Name = v
}

// GetNameClean returns the NameClean field value
func (o *GetIngredientInformation200Response) GetNameClean() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.NameClean
}

// GetNameCleanOk returns a tuple with the NameClean field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetNameCleanOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.NameClean, true
}

// SetNameClean sets field value
func (o *GetIngredientInformation200Response) SetNameClean(v string) {
	o.NameClean = v
}

// GetAmount returns the Amount field value
func (o *GetIngredientInformation200Response) GetAmount() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.Amount
}

// GetAmountOk returns a tuple with the Amount field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetAmountOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Amount, true
}

// SetAmount sets field value
func (o *GetIngredientInformation200Response) SetAmount(v float32) {
	o.Amount = v
}

// GetUnit returns the Unit field value
func (o *GetIngredientInformation200Response) GetUnit() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Unit
}

// GetUnitOk returns a tuple with the Unit field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetUnitOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Unit, true
}

// SetUnit sets field value
func (o *GetIngredientInformation200Response) SetUnit(v string) {
	o.Unit = v
}

// GetUnitShort returns the UnitShort field value
func (o *GetIngredientInformation200Response) GetUnitShort() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.UnitShort
}

// GetUnitShortOk returns a tuple with the UnitShort field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetUnitShortOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.UnitShort, true
}

// SetUnitShort sets field value
func (o *GetIngredientInformation200Response) SetUnitShort(v string) {
	o.UnitShort = v
}

// GetUnitLong returns the UnitLong field value
func (o *GetIngredientInformation200Response) GetUnitLong() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.UnitLong
}

// GetUnitLongOk returns a tuple with the UnitLong field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetUnitLongOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.UnitLong, true
}

// SetUnitLong sets field value
func (o *GetIngredientInformation200Response) SetUnitLong(v string) {
	o.UnitLong = v
}

// GetPossibleUnits returns the PossibleUnits field value
func (o *GetIngredientInformation200Response) GetPossibleUnits() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.PossibleUnits
}

// GetPossibleUnitsOk returns a tuple with the PossibleUnits field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetPossibleUnitsOk() ([]string, bool) {
	if o == nil {
		return nil, false
	}
	return o.PossibleUnits, true
}

// SetPossibleUnits sets field value
func (o *GetIngredientInformation200Response) SetPossibleUnits(v []string) {
	o.PossibleUnits = v
}

// GetEstimatedCost returns the EstimatedCost field value
func (o *GetIngredientInformation200Response) GetEstimatedCost() ParseIngredients200ResponseInnerEstimatedCost {
	if o == nil {
		var ret ParseIngredients200ResponseInnerEstimatedCost
		return ret
	}

	return o.EstimatedCost
}

// GetEstimatedCostOk returns a tuple with the EstimatedCost field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetEstimatedCostOk() (*ParseIngredients200ResponseInnerEstimatedCost, bool) {
	if o == nil {
		return nil, false
	}
	return &o.EstimatedCost, true
}

// SetEstimatedCost sets field value
func (o *GetIngredientInformation200Response) SetEstimatedCost(v ParseIngredients200ResponseInnerEstimatedCost) {
	o.EstimatedCost = v
}

// GetConsistency returns the Consistency field value
func (o *GetIngredientInformation200Response) GetConsistency() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Consistency
}

// GetConsistencyOk returns a tuple with the Consistency field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetConsistencyOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Consistency, true
}

// SetConsistency sets field value
func (o *GetIngredientInformation200Response) SetConsistency(v string) {
	o.Consistency = v
}

// GetShoppingListUnits returns the ShoppingListUnits field value
func (o *GetIngredientInformation200Response) GetShoppingListUnits() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.ShoppingListUnits
}

// GetShoppingListUnitsOk returns a tuple with the ShoppingListUnits field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetShoppingListUnitsOk() ([]string, bool) {
	if o == nil {
		return nil, false
	}
	return o.ShoppingListUnits, true
}

// SetShoppingListUnits sets field value
func (o *GetIngredientInformation200Response) SetShoppingListUnits(v []string) {
	o.ShoppingListUnits = v
}

// GetAisle returns the Aisle field value
func (o *GetIngredientInformation200Response) GetAisle() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Aisle
}

// GetAisleOk returns a tuple with the Aisle field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetAisleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Aisle, true
}

// SetAisle sets field value
func (o *GetIngredientInformation200Response) SetAisle(v string) {
	o.Aisle = v
}

// GetImage returns the Image field value
func (o *GetIngredientInformation200Response) GetImage() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Image
}

// GetImageOk returns a tuple with the Image field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Image, true
}

// SetImage sets field value
func (o *GetIngredientInformation200Response) SetImage(v string) {
	o.Image = v
}

// GetMeta returns the Meta field value
func (o *GetIngredientInformation200Response) GetMeta() []map[string]interface{} {
	if o == nil {
		var ret []map[string]interface{}
		return ret
	}

	return o.Meta
}

// GetMetaOk returns a tuple with the Meta field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetMetaOk() ([]map[string]interface{}, bool) {
	if o == nil {
		return nil, false
	}
	return o.Meta, true
}

// SetMeta sets field value
func (o *GetIngredientInformation200Response) SetMeta(v []map[string]interface{}) {
	o.Meta = v
}

// GetNutrition returns the Nutrition field value
func (o *GetIngredientInformation200Response) GetNutrition() GetIngredientInformation200ResponseNutrition {
	if o == nil {
		var ret GetIngredientInformation200ResponseNutrition
		return ret
	}

	return o.Nutrition
}

// GetNutritionOk returns a tuple with the Nutrition field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetNutritionOk() (*GetIngredientInformation200ResponseNutrition, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Nutrition, true
}

// SetNutrition sets field value
func (o *GetIngredientInformation200Response) SetNutrition(v GetIngredientInformation200ResponseNutrition) {
	o.Nutrition = v
}

// GetCategoryPath returns the CategoryPath field value
func (o *GetIngredientInformation200Response) GetCategoryPath() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.CategoryPath
}

// GetCategoryPathOk returns a tuple with the CategoryPath field value
// and a boolean to check if the value has been set.
func (o *GetIngredientInformation200Response) GetCategoryPathOk() ([]string, bool) {
	if o == nil {
		return nil, false
	}
	return o.CategoryPath, true
}

// SetCategoryPath sets field value
func (o *GetIngredientInformation200Response) SetCategoryPath(v []string) {
	o.CategoryPath = v
}

func (o GetIngredientInformation200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GetIngredientInformation200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["id"] = o.Id
	toSerialize["original"] = o.Original
	toSerialize["originalName"] = o.OriginalName
	toSerialize["name"] = o.Name
	toSerialize["nameClean"] = o.NameClean
	toSerialize["amount"] = o.Amount
	toSerialize["unit"] = o.Unit
	toSerialize["unitShort"] = o.UnitShort
	toSerialize["unitLong"] = o.UnitLong
	toSerialize["possibleUnits"] = o.PossibleUnits
	toSerialize["estimatedCost"] = o.EstimatedCost
	toSerialize["consistency"] = o.Consistency
	toSerialize["shoppingListUnits"] = o.ShoppingListUnits
	toSerialize["aisle"] = o.Aisle
	toSerialize["image"] = o.Image
	toSerialize["meta"] = o.Meta
	toSerialize["nutrition"] = o.Nutrition
	toSerialize["categoryPath"] = o.CategoryPath
	return toSerialize, nil
}

func (o *GetIngredientInformation200Response) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"id",
		"original",
		"originalName",
		"name",
		"nameClean",
		"amount",
		"unit",
		"unitShort",
		"unitLong",
		"possibleUnits",
		"estimatedCost",
		"consistency",
		"shoppingListUnits",
		"aisle",
		"image",
		"meta",
		"nutrition",
		"categoryPath",
	}

	allProperties := make(map[string]interface{})

	err = json.Unmarshal(data, &allProperties)

	if err != nil {
		return err;
	}

	for _, requiredProperty := range(requiredProperties) {
		if _, exists := allProperties[requiredProperty]; !exists {
			return fmt.Errorf("no value given for required property %v", requiredProperty)
		}
	}

	varGetIngredientInformation200Response := _GetIngredientInformation200Response{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varGetIngredientInformation200Response)

	if err != nil {
		return err
	}

	*o = GetIngredientInformation200Response(varGetIngredientInformation200Response)

	return err
}

type NullableGetIngredientInformation200Response struct {
	value *GetIngredientInformation200Response
	isSet bool
}

func (v NullableGetIngredientInformation200Response) Get() *GetIngredientInformation200Response {
	return v.value
}

func (v *NullableGetIngredientInformation200Response) Set(val *GetIngredientInformation200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableGetIngredientInformation200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableGetIngredientInformation200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetIngredientInformation200Response(val *GetIngredientInformation200Response) *NullableGetIngredientInformation200Response {
	return &NullableGetIngredientInformation200Response{value: val, isSet: true}
}

func (v NullableGetIngredientInformation200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetIngredientInformation200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}



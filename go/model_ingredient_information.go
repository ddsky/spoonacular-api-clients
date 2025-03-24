/*
spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

API version: 2.0.2
Contact: mail@spoonacular.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package spoonacular

import (
	"encoding/json"
	"bytes"
	"fmt"
)

// checks if the IngredientInformation type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &IngredientInformation{}

// IngredientInformation 
type IngredientInformation struct {
	Id int32 `json:"id"`
	Original string `json:"original"`
	OriginalName string `json:"originalName"`
	Name string `json:"name"`
	Amount float32 `json:"amount"`
	Unit string `json:"unit"`
	UnitShort string `json:"unitShort"`
	UnitLong string `json:"unitLong"`
	PossibleUnits []string `json:"possibleUnits"`
	EstimatedCost IngredientInformationEstimatedCost `json:"estimatedCost"`
	Consistency string `json:"consistency"`
	ShoppingListUnits []string `json:"shoppingListUnits,omitempty"`
	Aisle string `json:"aisle"`
	Image string `json:"image"`
	Meta []string `json:"meta"`
	Nutrition *IngredientInformationNutrition `json:"nutrition,omitempty"`
	CategoryPath []string `json:"categoryPath,omitempty"`
}

type _IngredientInformation IngredientInformation

// NewIngredientInformation instantiates a new IngredientInformation object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewIngredientInformation(id int32, original string, originalName string, name string, amount float32, unit string, unitShort string, unitLong string, possibleUnits []string, estimatedCost IngredientInformationEstimatedCost, consistency string, aisle string, image string, meta []string) *IngredientInformation {
	this := IngredientInformation{}
	this.Id = id
	this.Original = original
	this.OriginalName = originalName
	this.Name = name
	this.Amount = amount
	this.Unit = unit
	this.UnitShort = unitShort
	this.UnitLong = unitLong
	this.PossibleUnits = possibleUnits
	this.EstimatedCost = estimatedCost
	this.Consistency = consistency
	this.Aisle = aisle
	this.Image = image
	this.Meta = meta
	return &this
}

// NewIngredientInformationWithDefaults instantiates a new IngredientInformation object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewIngredientInformationWithDefaults() *IngredientInformation {
	this := IngredientInformation{}
	return &this
}

// GetId returns the Id field value
func (o *IngredientInformation) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetIdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *IngredientInformation) SetId(v int32) {
	o.Id = v
}

// GetOriginal returns the Original field value
func (o *IngredientInformation) GetOriginal() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Original
}

// GetOriginalOk returns a tuple with the Original field value
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetOriginalOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Original, true
}

// SetOriginal sets field value
func (o *IngredientInformation) SetOriginal(v string) {
	o.Original = v
}

// GetOriginalName returns the OriginalName field value
func (o *IngredientInformation) GetOriginalName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.OriginalName
}

// GetOriginalNameOk returns a tuple with the OriginalName field value
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetOriginalNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.OriginalName, true
}

// SetOriginalName sets field value
func (o *IngredientInformation) SetOriginalName(v string) {
	o.OriginalName = v
}

// GetName returns the Name field value
func (o *IngredientInformation) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *IngredientInformation) SetName(v string) {
	o.Name = v
}

// GetAmount returns the Amount field value
func (o *IngredientInformation) GetAmount() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.Amount
}

// GetAmountOk returns a tuple with the Amount field value
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetAmountOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Amount, true
}

// SetAmount sets field value
func (o *IngredientInformation) SetAmount(v float32) {
	o.Amount = v
}

// GetUnit returns the Unit field value
func (o *IngredientInformation) GetUnit() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Unit
}

// GetUnitOk returns a tuple with the Unit field value
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetUnitOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Unit, true
}

// SetUnit sets field value
func (o *IngredientInformation) SetUnit(v string) {
	o.Unit = v
}

// GetUnitShort returns the UnitShort field value
func (o *IngredientInformation) GetUnitShort() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.UnitShort
}

// GetUnitShortOk returns a tuple with the UnitShort field value
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetUnitShortOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.UnitShort, true
}

// SetUnitShort sets field value
func (o *IngredientInformation) SetUnitShort(v string) {
	o.UnitShort = v
}

// GetUnitLong returns the UnitLong field value
func (o *IngredientInformation) GetUnitLong() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.UnitLong
}

// GetUnitLongOk returns a tuple with the UnitLong field value
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetUnitLongOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.UnitLong, true
}

// SetUnitLong sets field value
func (o *IngredientInformation) SetUnitLong(v string) {
	o.UnitLong = v
}

// GetPossibleUnits returns the PossibleUnits field value
func (o *IngredientInformation) GetPossibleUnits() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.PossibleUnits
}

// GetPossibleUnitsOk returns a tuple with the PossibleUnits field value
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetPossibleUnitsOk() ([]string, bool) {
	if o == nil {
		return nil, false
	}
	return o.PossibleUnits, true
}

// SetPossibleUnits sets field value
func (o *IngredientInformation) SetPossibleUnits(v []string) {
	o.PossibleUnits = v
}

// GetEstimatedCost returns the EstimatedCost field value
func (o *IngredientInformation) GetEstimatedCost() IngredientInformationEstimatedCost {
	if o == nil {
		var ret IngredientInformationEstimatedCost
		return ret
	}

	return o.EstimatedCost
}

// GetEstimatedCostOk returns a tuple with the EstimatedCost field value
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetEstimatedCostOk() (*IngredientInformationEstimatedCost, bool) {
	if o == nil {
		return nil, false
	}
	return &o.EstimatedCost, true
}

// SetEstimatedCost sets field value
func (o *IngredientInformation) SetEstimatedCost(v IngredientInformationEstimatedCost) {
	o.EstimatedCost = v
}

// GetConsistency returns the Consistency field value
func (o *IngredientInformation) GetConsistency() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Consistency
}

// GetConsistencyOk returns a tuple with the Consistency field value
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetConsistencyOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Consistency, true
}

// SetConsistency sets field value
func (o *IngredientInformation) SetConsistency(v string) {
	o.Consistency = v
}

// GetShoppingListUnits returns the ShoppingListUnits field value if set, zero value otherwise.
func (o *IngredientInformation) GetShoppingListUnits() []string {
	if o == nil || IsNil(o.ShoppingListUnits) {
		var ret []string
		return ret
	}
	return o.ShoppingListUnits
}

// GetShoppingListUnitsOk returns a tuple with the ShoppingListUnits field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetShoppingListUnitsOk() ([]string, bool) {
	if o == nil || IsNil(o.ShoppingListUnits) {
		return nil, false
	}
	return o.ShoppingListUnits, true
}

// HasShoppingListUnits returns a boolean if a field has been set.
func (o *IngredientInformation) HasShoppingListUnits() bool {
	if o != nil && !IsNil(o.ShoppingListUnits) {
		return true
	}

	return false
}

// SetShoppingListUnits gets a reference to the given []string and assigns it to the ShoppingListUnits field.
func (o *IngredientInformation) SetShoppingListUnits(v []string) {
	o.ShoppingListUnits = v
}

// GetAisle returns the Aisle field value
func (o *IngredientInformation) GetAisle() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Aisle
}

// GetAisleOk returns a tuple with the Aisle field value
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetAisleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Aisle, true
}

// SetAisle sets field value
func (o *IngredientInformation) SetAisle(v string) {
	o.Aisle = v
}

// GetImage returns the Image field value
func (o *IngredientInformation) GetImage() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Image
}

// GetImageOk returns a tuple with the Image field value
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Image, true
}

// SetImage sets field value
func (o *IngredientInformation) SetImage(v string) {
	o.Image = v
}

// GetMeta returns the Meta field value
func (o *IngredientInformation) GetMeta() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.Meta
}

// GetMetaOk returns a tuple with the Meta field value
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetMetaOk() ([]string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Meta, true
}

// SetMeta sets field value
func (o *IngredientInformation) SetMeta(v []string) {
	o.Meta = v
}

// GetNutrition returns the Nutrition field value if set, zero value otherwise.
func (o *IngredientInformation) GetNutrition() IngredientInformationNutrition {
	if o == nil || IsNil(o.Nutrition) {
		var ret IngredientInformationNutrition
		return ret
	}
	return *o.Nutrition
}

// GetNutritionOk returns a tuple with the Nutrition field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetNutritionOk() (*IngredientInformationNutrition, bool) {
	if o == nil || IsNil(o.Nutrition) {
		return nil, false
	}
	return o.Nutrition, true
}

// HasNutrition returns a boolean if a field has been set.
func (o *IngredientInformation) HasNutrition() bool {
	if o != nil && !IsNil(o.Nutrition) {
		return true
	}

	return false
}

// SetNutrition gets a reference to the given IngredientInformationNutrition and assigns it to the Nutrition field.
func (o *IngredientInformation) SetNutrition(v IngredientInformationNutrition) {
	o.Nutrition = &v
}

// GetCategoryPath returns the CategoryPath field value if set, zero value otherwise.
func (o *IngredientInformation) GetCategoryPath() []string {
	if o == nil || IsNil(o.CategoryPath) {
		var ret []string
		return ret
	}
	return o.CategoryPath
}

// GetCategoryPathOk returns a tuple with the CategoryPath field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *IngredientInformation) GetCategoryPathOk() ([]string, bool) {
	if o == nil || IsNil(o.CategoryPath) {
		return nil, false
	}
	return o.CategoryPath, true
}

// HasCategoryPath returns a boolean if a field has been set.
func (o *IngredientInformation) HasCategoryPath() bool {
	if o != nil && !IsNil(o.CategoryPath) {
		return true
	}

	return false
}

// SetCategoryPath gets a reference to the given []string and assigns it to the CategoryPath field.
func (o *IngredientInformation) SetCategoryPath(v []string) {
	o.CategoryPath = v
}

func (o IngredientInformation) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o IngredientInformation) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["id"] = o.Id
	toSerialize["original"] = o.Original
	toSerialize["originalName"] = o.OriginalName
	toSerialize["name"] = o.Name
	toSerialize["amount"] = o.Amount
	toSerialize["unit"] = o.Unit
	toSerialize["unitShort"] = o.UnitShort
	toSerialize["unitLong"] = o.UnitLong
	toSerialize["possibleUnits"] = o.PossibleUnits
	toSerialize["estimatedCost"] = o.EstimatedCost
	toSerialize["consistency"] = o.Consistency
	if !IsNil(o.ShoppingListUnits) {
		toSerialize["shoppingListUnits"] = o.ShoppingListUnits
	}
	toSerialize["aisle"] = o.Aisle
	toSerialize["image"] = o.Image
	toSerialize["meta"] = o.Meta
	if !IsNil(o.Nutrition) {
		toSerialize["nutrition"] = o.Nutrition
	}
	if !IsNil(o.CategoryPath) {
		toSerialize["categoryPath"] = o.CategoryPath
	}
	return toSerialize, nil
}

func (o *IngredientInformation) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"id",
		"original",
		"originalName",
		"name",
		"amount",
		"unit",
		"unitShort",
		"unitLong",
		"possibleUnits",
		"estimatedCost",
		"consistency",
		"aisle",
		"image",
		"meta",
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

	varIngredientInformation := _IngredientInformation{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varIngredientInformation)

	if err != nil {
		return err
	}

	*o = IngredientInformation(varIngredientInformation)

	return err
}

type NullableIngredientInformation struct {
	value *IngredientInformation
	isSet bool
}

func (v NullableIngredientInformation) Get() *IngredientInformation {
	return v.value
}

func (v *NullableIngredientInformation) Set(val *IngredientInformation) {
	v.value = val
	v.isSet = true
}

func (v NullableIngredientInformation) IsSet() bool {
	return v.isSet
}

func (v *NullableIngredientInformation) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableIngredientInformation(val *IngredientInformation) *NullableIngredientInformation {
	return &NullableIngredientInformation{value: val, isSet: true}
}

func (v NullableIngredientInformation) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableIngredientInformation) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}



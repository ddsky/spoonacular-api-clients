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

// checks if the SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner{}

// SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner struct for SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner
type SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner struct {
	Aisle string `json:"aisle"`
	Amount float32 `json:"amount"`
	Id int32 `json:"id"`
	Image string `json:"image"`
	Meta []string `json:"meta,omitempty"`
	Name string `json:"name"`
	ExtendedName *string `json:"extendedName,omitempty"`
	Original string `json:"original"`
	OriginalName string `json:"originalName"`
	Unit string `json:"unit"`
	UnitLong string `json:"unitLong"`
	UnitShort string `json:"unitShort"`
}

type _SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner

// NewSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner instantiates a new SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner(aisle string, amount float32, id int32, image string, name string, original string, originalName string, unit string, unitLong string, unitShort string) *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner {
	this := SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner{}
	this.Aisle = aisle
	this.Amount = amount
	this.Id = id
	this.Image = image
	this.Name = name
	this.Original = original
	this.OriginalName = originalName
	this.Unit = unit
	this.UnitLong = unitLong
	this.UnitShort = unitShort
	return &this
}

// NewSearchRecipesByIngredients200ResponseInnerMissedIngredientsInnerWithDefaults instantiates a new SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRecipesByIngredients200ResponseInnerMissedIngredientsInnerWithDefaults() *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner {
	this := SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner{}
	return &this
}

// GetAisle returns the Aisle field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetAisle() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Aisle
}

// GetAisleOk returns a tuple with the Aisle field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetAisleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Aisle, true
}

// SetAisle sets field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) SetAisle(v string) {
	o.Aisle = v
}

// GetAmount returns the Amount field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetAmount() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.Amount
}

// GetAmountOk returns a tuple with the Amount field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetAmountOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Amount, true
}

// SetAmount sets field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) SetAmount(v float32) {
	o.Amount = v
}

// GetId returns the Id field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetIdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) SetId(v int32) {
	o.Id = v
}

// GetImage returns the Image field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetImage() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Image
}

// GetImageOk returns a tuple with the Image field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Image, true
}

// SetImage sets field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) SetImage(v string) {
	o.Image = v
}

// GetMeta returns the Meta field value if set, zero value otherwise.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetMeta() []string {
	if o == nil || IsNil(o.Meta) {
		var ret []string
		return ret
	}
	return o.Meta
}

// GetMetaOk returns a tuple with the Meta field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetMetaOk() ([]string, bool) {
	if o == nil || IsNil(o.Meta) {
		return nil, false
	}
	return o.Meta, true
}

// HasMeta returns a boolean if a field has been set.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) HasMeta() bool {
	if o != nil && !IsNil(o.Meta) {
		return true
	}

	return false
}

// SetMeta gets a reference to the given []string and assigns it to the Meta field.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) SetMeta(v []string) {
	o.Meta = v
}

// GetName returns the Name field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) SetName(v string) {
	o.Name = v
}

// GetExtendedName returns the ExtendedName field value if set, zero value otherwise.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetExtendedName() string {
	if o == nil || IsNil(o.ExtendedName) {
		var ret string
		return ret
	}
	return *o.ExtendedName
}

// GetExtendedNameOk returns a tuple with the ExtendedName field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetExtendedNameOk() (*string, bool) {
	if o == nil || IsNil(o.ExtendedName) {
		return nil, false
	}
	return o.ExtendedName, true
}

// HasExtendedName returns a boolean if a field has been set.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) HasExtendedName() bool {
	if o != nil && !IsNil(o.ExtendedName) {
		return true
	}

	return false
}

// SetExtendedName gets a reference to the given string and assigns it to the ExtendedName field.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) SetExtendedName(v string) {
	o.ExtendedName = &v
}

// GetOriginal returns the Original field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetOriginal() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Original
}

// GetOriginalOk returns a tuple with the Original field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetOriginalOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Original, true
}

// SetOriginal sets field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) SetOriginal(v string) {
	o.Original = v
}

// GetOriginalName returns the OriginalName field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetOriginalName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.OriginalName
}

// GetOriginalNameOk returns a tuple with the OriginalName field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetOriginalNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.OriginalName, true
}

// SetOriginalName sets field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) SetOriginalName(v string) {
	o.OriginalName = v
}

// GetUnit returns the Unit field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetUnit() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Unit
}

// GetUnitOk returns a tuple with the Unit field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetUnitOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Unit, true
}

// SetUnit sets field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) SetUnit(v string) {
	o.Unit = v
}

// GetUnitLong returns the UnitLong field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetUnitLong() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.UnitLong
}

// GetUnitLongOk returns a tuple with the UnitLong field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetUnitLongOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.UnitLong, true
}

// SetUnitLong sets field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) SetUnitLong(v string) {
	o.UnitLong = v
}

// GetUnitShort returns the UnitShort field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetUnitShort() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.UnitShort
}

// GetUnitShortOk returns a tuple with the UnitShort field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) GetUnitShortOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.UnitShort, true
}

// SetUnitShort sets field value
func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) SetUnitShort(v string) {
	o.UnitShort = v
}

func (o SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["aisle"] = o.Aisle
	toSerialize["amount"] = o.Amount
	toSerialize["id"] = o.Id
	toSerialize["image"] = o.Image
	if !IsNil(o.Meta) {
		toSerialize["meta"] = o.Meta
	}
	toSerialize["name"] = o.Name
	if !IsNil(o.ExtendedName) {
		toSerialize["extendedName"] = o.ExtendedName
	}
	toSerialize["original"] = o.Original
	toSerialize["originalName"] = o.OriginalName
	toSerialize["unit"] = o.Unit
	toSerialize["unitLong"] = o.UnitLong
	toSerialize["unitShort"] = o.UnitShort
	return toSerialize, nil
}

func (o *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"aisle",
		"amount",
		"id",
		"image",
		"name",
		"original",
		"originalName",
		"unit",
		"unitLong",
		"unitShort",
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

	varSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner := _SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner)

	if err != nil {
		return err
	}

	*o = SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner(varSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner)

	return err
}

type NullableSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner struct {
	value *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner
	isSet bool
}

func (v NullableSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) Get() *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner {
	return v.value
}

func (v *NullableSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) Set(val *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner(val *SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) *NullableSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner {
	return &NullableSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner{value: val, isSet: true}
}

func (v NullableSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}



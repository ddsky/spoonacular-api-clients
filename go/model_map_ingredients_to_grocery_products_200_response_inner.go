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

// checks if the MapIngredientsToGroceryProducts200ResponseInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &MapIngredientsToGroceryProducts200ResponseInner{}

// MapIngredientsToGroceryProducts200ResponseInner struct for MapIngredientsToGroceryProducts200ResponseInner
type MapIngredientsToGroceryProducts200ResponseInner struct {
	Original string `json:"original"`
	OriginalName string `json:"originalName"`
	IngredientImage string `json:"ingredientImage"`
	Meta []string `json:"meta"`
	Products []MapIngredientsToGroceryProducts200ResponseInnerProductsInner `json:"products"`
}

type _MapIngredientsToGroceryProducts200ResponseInner MapIngredientsToGroceryProducts200ResponseInner

// NewMapIngredientsToGroceryProducts200ResponseInner instantiates a new MapIngredientsToGroceryProducts200ResponseInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewMapIngredientsToGroceryProducts200ResponseInner(original string, originalName string, ingredientImage string, meta []string, products []MapIngredientsToGroceryProducts200ResponseInnerProductsInner) *MapIngredientsToGroceryProducts200ResponseInner {
	this := MapIngredientsToGroceryProducts200ResponseInner{}
	this.Original = original
	this.OriginalName = originalName
	this.IngredientImage = ingredientImage
	this.Meta = meta
	this.Products = products
	return &this
}

// NewMapIngredientsToGroceryProducts200ResponseInnerWithDefaults instantiates a new MapIngredientsToGroceryProducts200ResponseInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewMapIngredientsToGroceryProducts200ResponseInnerWithDefaults() *MapIngredientsToGroceryProducts200ResponseInner {
	this := MapIngredientsToGroceryProducts200ResponseInner{}
	return &this
}

// GetOriginal returns the Original field value
func (o *MapIngredientsToGroceryProducts200ResponseInner) GetOriginal() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Original
}

// GetOriginalOk returns a tuple with the Original field value
// and a boolean to check if the value has been set.
func (o *MapIngredientsToGroceryProducts200ResponseInner) GetOriginalOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Original, true
}

// SetOriginal sets field value
func (o *MapIngredientsToGroceryProducts200ResponseInner) SetOriginal(v string) {
	o.Original = v
}

// GetOriginalName returns the OriginalName field value
func (o *MapIngredientsToGroceryProducts200ResponseInner) GetOriginalName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.OriginalName
}

// GetOriginalNameOk returns a tuple with the OriginalName field value
// and a boolean to check if the value has been set.
func (o *MapIngredientsToGroceryProducts200ResponseInner) GetOriginalNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.OriginalName, true
}

// SetOriginalName sets field value
func (o *MapIngredientsToGroceryProducts200ResponseInner) SetOriginalName(v string) {
	o.OriginalName = v
}

// GetIngredientImage returns the IngredientImage field value
func (o *MapIngredientsToGroceryProducts200ResponseInner) GetIngredientImage() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.IngredientImage
}

// GetIngredientImageOk returns a tuple with the IngredientImage field value
// and a boolean to check if the value has been set.
func (o *MapIngredientsToGroceryProducts200ResponseInner) GetIngredientImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.IngredientImage, true
}

// SetIngredientImage sets field value
func (o *MapIngredientsToGroceryProducts200ResponseInner) SetIngredientImage(v string) {
	o.IngredientImage = v
}

// GetMeta returns the Meta field value
func (o *MapIngredientsToGroceryProducts200ResponseInner) GetMeta() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.Meta
}

// GetMetaOk returns a tuple with the Meta field value
// and a boolean to check if the value has been set.
func (o *MapIngredientsToGroceryProducts200ResponseInner) GetMetaOk() ([]string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Meta, true
}

// SetMeta sets field value
func (o *MapIngredientsToGroceryProducts200ResponseInner) SetMeta(v []string) {
	o.Meta = v
}

// GetProducts returns the Products field value
func (o *MapIngredientsToGroceryProducts200ResponseInner) GetProducts() []MapIngredientsToGroceryProducts200ResponseInnerProductsInner {
	if o == nil {
		var ret []MapIngredientsToGroceryProducts200ResponseInnerProductsInner
		return ret
	}

	return o.Products
}

// GetProductsOk returns a tuple with the Products field value
// and a boolean to check if the value has been set.
func (o *MapIngredientsToGroceryProducts200ResponseInner) GetProductsOk() ([]MapIngredientsToGroceryProducts200ResponseInnerProductsInner, bool) {
	if o == nil {
		return nil, false
	}
	return o.Products, true
}

// SetProducts sets field value
func (o *MapIngredientsToGroceryProducts200ResponseInner) SetProducts(v []MapIngredientsToGroceryProducts200ResponseInnerProductsInner) {
	o.Products = v
}

func (o MapIngredientsToGroceryProducts200ResponseInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o MapIngredientsToGroceryProducts200ResponseInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["original"] = o.Original
	toSerialize["originalName"] = o.OriginalName
	toSerialize["ingredientImage"] = o.IngredientImage
	toSerialize["meta"] = o.Meta
	toSerialize["products"] = o.Products
	return toSerialize, nil
}

func (o *MapIngredientsToGroceryProducts200ResponseInner) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"original",
		"originalName",
		"ingredientImage",
		"meta",
		"products",
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

	varMapIngredientsToGroceryProducts200ResponseInner := _MapIngredientsToGroceryProducts200ResponseInner{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varMapIngredientsToGroceryProducts200ResponseInner)

	if err != nil {
		return err
	}

	*o = MapIngredientsToGroceryProducts200ResponseInner(varMapIngredientsToGroceryProducts200ResponseInner)

	return err
}

type NullableMapIngredientsToGroceryProducts200ResponseInner struct {
	value *MapIngredientsToGroceryProducts200ResponseInner
	isSet bool
}

func (v NullableMapIngredientsToGroceryProducts200ResponseInner) Get() *MapIngredientsToGroceryProducts200ResponseInner {
	return v.value
}

func (v *NullableMapIngredientsToGroceryProducts200ResponseInner) Set(val *MapIngredientsToGroceryProducts200ResponseInner) {
	v.value = val
	v.isSet = true
}

func (v NullableMapIngredientsToGroceryProducts200ResponseInner) IsSet() bool {
	return v.isSet
}

func (v *NullableMapIngredientsToGroceryProducts200ResponseInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableMapIngredientsToGroceryProducts200ResponseInner(val *MapIngredientsToGroceryProducts200ResponseInner) *NullableMapIngredientsToGroceryProducts200ResponseInner {
	return &NullableMapIngredientsToGroceryProducts200ResponseInner{value: val, isSet: true}
}

func (v NullableMapIngredientsToGroceryProducts200ResponseInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableMapIngredientsToGroceryProducts200ResponseInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}



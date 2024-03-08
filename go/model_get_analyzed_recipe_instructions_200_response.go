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

// checks if the GetAnalyzedRecipeInstructions200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GetAnalyzedRecipeInstructions200Response{}

// GetAnalyzedRecipeInstructions200Response 
type GetAnalyzedRecipeInstructions200Response struct {
	ParsedInstructions []GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner `json:"parsedInstructions"`
	Ingredients []GetAnalyzedRecipeInstructions200ResponseIngredientsInner `json:"ingredients"`
	Equipment []GetAnalyzedRecipeInstructions200ResponseIngredientsInner `json:"equipment"`
}

type _GetAnalyzedRecipeInstructions200Response GetAnalyzedRecipeInstructions200Response

// NewGetAnalyzedRecipeInstructions200Response instantiates a new GetAnalyzedRecipeInstructions200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetAnalyzedRecipeInstructions200Response(parsedInstructions []GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner, ingredients []GetAnalyzedRecipeInstructions200ResponseIngredientsInner, equipment []GetAnalyzedRecipeInstructions200ResponseIngredientsInner) *GetAnalyzedRecipeInstructions200Response {
	this := GetAnalyzedRecipeInstructions200Response{}
	this.ParsedInstructions = parsedInstructions
	this.Ingredients = ingredients
	this.Equipment = equipment
	return &this
}

// NewGetAnalyzedRecipeInstructions200ResponseWithDefaults instantiates a new GetAnalyzedRecipeInstructions200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetAnalyzedRecipeInstructions200ResponseWithDefaults() *GetAnalyzedRecipeInstructions200Response {
	this := GetAnalyzedRecipeInstructions200Response{}
	return &this
}

// GetParsedInstructions returns the ParsedInstructions field value
func (o *GetAnalyzedRecipeInstructions200Response) GetParsedInstructions() []GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner {
	if o == nil {
		var ret []GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner
		return ret
	}

	return o.ParsedInstructions
}

// GetParsedInstructionsOk returns a tuple with the ParsedInstructions field value
// and a boolean to check if the value has been set.
func (o *GetAnalyzedRecipeInstructions200Response) GetParsedInstructionsOk() ([]GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner, bool) {
	if o == nil {
		return nil, false
	}
	return o.ParsedInstructions, true
}

// SetParsedInstructions sets field value
func (o *GetAnalyzedRecipeInstructions200Response) SetParsedInstructions(v []GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner) {
	o.ParsedInstructions = v
}

// GetIngredients returns the Ingredients field value
func (o *GetAnalyzedRecipeInstructions200Response) GetIngredients() []GetAnalyzedRecipeInstructions200ResponseIngredientsInner {
	if o == nil {
		var ret []GetAnalyzedRecipeInstructions200ResponseIngredientsInner
		return ret
	}

	return o.Ingredients
}

// GetIngredientsOk returns a tuple with the Ingredients field value
// and a boolean to check if the value has been set.
func (o *GetAnalyzedRecipeInstructions200Response) GetIngredientsOk() ([]GetAnalyzedRecipeInstructions200ResponseIngredientsInner, bool) {
	if o == nil {
		return nil, false
	}
	return o.Ingredients, true
}

// SetIngredients sets field value
func (o *GetAnalyzedRecipeInstructions200Response) SetIngredients(v []GetAnalyzedRecipeInstructions200ResponseIngredientsInner) {
	o.Ingredients = v
}

// GetEquipment returns the Equipment field value
func (o *GetAnalyzedRecipeInstructions200Response) GetEquipment() []GetAnalyzedRecipeInstructions200ResponseIngredientsInner {
	if o == nil {
		var ret []GetAnalyzedRecipeInstructions200ResponseIngredientsInner
		return ret
	}

	return o.Equipment
}

// GetEquipmentOk returns a tuple with the Equipment field value
// and a boolean to check if the value has been set.
func (o *GetAnalyzedRecipeInstructions200Response) GetEquipmentOk() ([]GetAnalyzedRecipeInstructions200ResponseIngredientsInner, bool) {
	if o == nil {
		return nil, false
	}
	return o.Equipment, true
}

// SetEquipment sets field value
func (o *GetAnalyzedRecipeInstructions200Response) SetEquipment(v []GetAnalyzedRecipeInstructions200ResponseIngredientsInner) {
	o.Equipment = v
}

func (o GetAnalyzedRecipeInstructions200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GetAnalyzedRecipeInstructions200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["parsedInstructions"] = o.ParsedInstructions
	toSerialize["ingredients"] = o.Ingredients
	toSerialize["equipment"] = o.Equipment
	return toSerialize, nil
}

func (o *GetAnalyzedRecipeInstructions200Response) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"parsedInstructions",
		"ingredients",
		"equipment",
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

	varGetAnalyzedRecipeInstructions200Response := _GetAnalyzedRecipeInstructions200Response{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varGetAnalyzedRecipeInstructions200Response)

	if err != nil {
		return err
	}

	*o = GetAnalyzedRecipeInstructions200Response(varGetAnalyzedRecipeInstructions200Response)

	return err
}

type NullableGetAnalyzedRecipeInstructions200Response struct {
	value *GetAnalyzedRecipeInstructions200Response
	isSet bool
}

func (v NullableGetAnalyzedRecipeInstructions200Response) Get() *GetAnalyzedRecipeInstructions200Response {
	return v.value
}

func (v *NullableGetAnalyzedRecipeInstructions200Response) Set(val *GetAnalyzedRecipeInstructions200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableGetAnalyzedRecipeInstructions200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableGetAnalyzedRecipeInstructions200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetAnalyzedRecipeInstructions200Response(val *GetAnalyzedRecipeInstructions200Response) *NullableGetAnalyzedRecipeInstructions200Response {
	return &NullableGetAnalyzedRecipeInstructions200Response{value: val, isSet: true}
}

func (v NullableGetAnalyzedRecipeInstructions200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetAnalyzedRecipeInstructions200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}



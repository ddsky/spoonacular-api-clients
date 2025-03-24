/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.spoonacular.client.model;

import java.util.Objects;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Arrays;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.spoonacular.client.JSON;

/**
 * GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal {
  public static final String SERIALIZED_NAME_AMOUNT = "amount";
  @SerializedName(SERIALIZED_NAME_AMOUNT)
  private BigDecimal amount;

  public static final String SERIALIZED_NAME_UNIT = "unit";
  @SerializedName(SERIALIZED_NAME_UNIT)
  private String unit;

  public GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal() {
  }

  public GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal amount(BigDecimal amount) {
    this.amount = amount;
    return this;
  }

  /**
   * Get amount
   * @return amount
   */
  @javax.annotation.Nonnull
  public BigDecimal getAmount() {
    return amount;
  }

  public void setAmount(BigDecimal amount) {
    this.amount = amount;
  }


  public GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal unit(String unit) {
    this.unit = unit;
    return this;
  }

  /**
   * Get unit
   * @return unit
   */
  @javax.annotation.Nonnull
  public String getUnit() {
    return unit;
  }

  public void setUnit(String unit) {
    this.unit = unit;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal getShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal = (GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal) o;
    return Objects.equals(this.amount, getShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.amount) &&
        Objects.equals(this.unit, getShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.unit);
  }

  @Override
  public int hashCode() {
    return Objects.hash(amount, unit);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal {\n");
    sb.append("    amount: ").append(toIndentedString(amount)).append("\n");
    sb.append("    unit: ").append(toIndentedString(unit)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("amount");
    openapiFields.add("unit");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("amount");
    openapiRequiredFields.add("unit");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal is not found in the empty JSON string", GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("unit").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `unit` to be a primitive type in the JSON string but got `%s`", jsonObj.get("unit").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.class));

       return (TypeAdapter<T>) new TypeAdapter<GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal>() {
           @Override
           public void write(JsonWriter out, GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal
   * @throws IOException if the JSON string is invalid with respect to GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal
   */
  public static GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.class);
  }

  /**
   * Convert an instance of GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}


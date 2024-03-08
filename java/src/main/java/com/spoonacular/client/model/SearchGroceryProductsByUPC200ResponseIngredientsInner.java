/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
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
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;

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
 * SearchGroceryProductsByUPC200ResponseIngredientsInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-03-08T09:55:50.998178900+01:00[Europe/Berlin]")
public class SearchGroceryProductsByUPC200ResponseIngredientsInner {
  public static final String SERIALIZED_NAME_DESCRIPTION = "description";
  @SerializedName(SERIALIZED_NAME_DESCRIPTION)
  private Object description = null;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_SAFETY_LEVEL = "safety_level";
  @SerializedName(SERIALIZED_NAME_SAFETY_LEVEL)
  private Object safetyLevel = null;

  public SearchGroceryProductsByUPC200ResponseIngredientsInner() {
  }

  public SearchGroceryProductsByUPC200ResponseIngredientsInner description(Object description) {
    this.description = description;
    return this;
  }

   /**
   * Get description
   * @return description
  **/
  @javax.annotation.Nullable
  public Object getDescription() {
    return description;
  }

  public void setDescription(Object description) {
    this.description = description;
  }


  public SearchGroceryProductsByUPC200ResponseIngredientsInner name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @javax.annotation.Nonnull
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public SearchGroceryProductsByUPC200ResponseIngredientsInner safetyLevel(Object safetyLevel) {
    this.safetyLevel = safetyLevel;
    return this;
  }

   /**
   * Get safetyLevel
   * @return safetyLevel
  **/
  @javax.annotation.Nullable
  public Object getSafetyLevel() {
    return safetyLevel;
  }

  public void setSafetyLevel(Object safetyLevel) {
    this.safetyLevel = safetyLevel;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchGroceryProductsByUPC200ResponseIngredientsInner searchGroceryProductsByUPC200ResponseIngredientsInner = (SearchGroceryProductsByUPC200ResponseIngredientsInner) o;
    return Objects.equals(this.description, searchGroceryProductsByUPC200ResponseIngredientsInner.description) &&
        Objects.equals(this.name, searchGroceryProductsByUPC200ResponseIngredientsInner.name) &&
        Objects.equals(this.safetyLevel, searchGroceryProductsByUPC200ResponseIngredientsInner.safetyLevel);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(description, name, safetyLevel);
  }

  private static <T> int hashCodeNullable(JsonNullable<T> a) {
    if (a == null) {
      return 1;
    }
    return a.isPresent() ? Arrays.deepHashCode(new Object[]{a.get()}) : 31;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchGroceryProductsByUPC200ResponseIngredientsInner {\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    safetyLevel: ").append(toIndentedString(safetyLevel)).append("\n");
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
    openapiFields.add("description");
    openapiFields.add("name");
    openapiFields.add("safety_level");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("name");
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to SearchGroceryProductsByUPC200ResponseIngredientsInner
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchGroceryProductsByUPC200ResponseIngredientsInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchGroceryProductsByUPC200ResponseIngredientsInner is not found in the empty JSON string", SearchGroceryProductsByUPC200ResponseIngredientsInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchGroceryProductsByUPC200ResponseIngredientsInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchGroceryProductsByUPC200ResponseIngredientsInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : SearchGroceryProductsByUPC200ResponseIngredientsInner.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchGroceryProductsByUPC200ResponseIngredientsInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchGroceryProductsByUPC200ResponseIngredientsInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchGroceryProductsByUPC200ResponseIngredientsInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchGroceryProductsByUPC200ResponseIngredientsInner.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchGroceryProductsByUPC200ResponseIngredientsInner>() {
           @Override
           public void write(JsonWriter out, SearchGroceryProductsByUPC200ResponseIngredientsInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchGroceryProductsByUPC200ResponseIngredientsInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of SearchGroceryProductsByUPC200ResponseIngredientsInner given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SearchGroceryProductsByUPC200ResponseIngredientsInner
  * @throws IOException if the JSON string is invalid with respect to SearchGroceryProductsByUPC200ResponseIngredientsInner
  */
  public static SearchGroceryProductsByUPC200ResponseIngredientsInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchGroceryProductsByUPC200ResponseIngredientsInner.class);
  }

 /**
  * Convert an instance of SearchGroceryProductsByUPC200ResponseIngredientsInner to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}


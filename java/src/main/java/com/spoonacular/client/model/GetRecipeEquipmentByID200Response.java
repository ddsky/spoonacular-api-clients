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
import com.spoonacular.client.model.GetRecipeEquipmentByID200ResponseEquipmentInner;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;

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
 * 
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.7.0-SNAPSHOT")
public class GetRecipeEquipmentByID200Response {
  public static final String SERIALIZED_NAME_EQUIPMENT = "equipment";
  @SerializedName(SERIALIZED_NAME_EQUIPMENT)
  private Set<GetRecipeEquipmentByID200ResponseEquipmentInner> equipment = new LinkedHashSet<>();

  public GetRecipeEquipmentByID200Response() {
  }

  public GetRecipeEquipmentByID200Response equipment(Set<GetRecipeEquipmentByID200ResponseEquipmentInner> equipment) {
    this.equipment = equipment;
    return this;
  }

  public GetRecipeEquipmentByID200Response addEquipmentItem(GetRecipeEquipmentByID200ResponseEquipmentInner equipmentItem) {
    if (this.equipment == null) {
      this.equipment = new LinkedHashSet<>();
    }
    this.equipment.add(equipmentItem);
    return this;
  }

   /**
   * Get equipment
   * @return equipment
  **/
  @javax.annotation.Nonnull
  public Set<GetRecipeEquipmentByID200ResponseEquipmentInner> getEquipment() {
    return equipment;
  }

  public void setEquipment(Set<GetRecipeEquipmentByID200ResponseEquipmentInner> equipment) {
    this.equipment = equipment;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetRecipeEquipmentByID200Response getRecipeEquipmentByID200Response = (GetRecipeEquipmentByID200Response) o;
    return Objects.equals(this.equipment, getRecipeEquipmentByID200Response.equipment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(equipment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetRecipeEquipmentByID200Response {\n");
    sb.append("    equipment: ").append(toIndentedString(equipment)).append("\n");
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
    openapiFields.add("equipment");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("equipment");
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to GetRecipeEquipmentByID200Response
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!GetRecipeEquipmentByID200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in GetRecipeEquipmentByID200Response is not found in the empty JSON string", GetRecipeEquipmentByID200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!GetRecipeEquipmentByID200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `GetRecipeEquipmentByID200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : GetRecipeEquipmentByID200Response.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // ensure the json data is an array
      if (!jsonObj.get("equipment").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `equipment` to be an array in the JSON string but got `%s`", jsonObj.get("equipment").toString()));
      }

      JsonArray jsonArrayequipment = jsonObj.getAsJsonArray("equipment");
      // validate the required field `equipment` (array)
      for (int i = 0; i < jsonArrayequipment.size(); i++) {
        GetRecipeEquipmentByID200ResponseEquipmentInner.validateJsonElement(jsonArrayequipment.get(i));
      };
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!GetRecipeEquipmentByID200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'GetRecipeEquipmentByID200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<GetRecipeEquipmentByID200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(GetRecipeEquipmentByID200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<GetRecipeEquipmentByID200Response>() {
           @Override
           public void write(JsonWriter out, GetRecipeEquipmentByID200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public GetRecipeEquipmentByID200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of GetRecipeEquipmentByID200Response given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of GetRecipeEquipmentByID200Response
  * @throws IOException if the JSON string is invalid with respect to GetRecipeEquipmentByID200Response
  */
  public static GetRecipeEquipmentByID200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, GetRecipeEquipmentByID200Response.class);
  }

 /**
  * Convert an instance of GetRecipeEquipmentByID200Response to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}


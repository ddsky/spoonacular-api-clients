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
 * AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-03-08T09:55:50.998178900+01:00[Europe/Berlin]")
public class AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private BigDecimal id;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_LOCALIZED_NAME = "localizedName";
  @SerializedName(SERIALIZED_NAME_LOCALIZED_NAME)
  private String localizedName;

  public static final String SERIALIZED_NAME_IMAGE = "image";
  @SerializedName(SERIALIZED_NAME_IMAGE)
  private String image;

  public AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner() {
  }

  public AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner id(BigDecimal id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @javax.annotation.Nonnull
  public BigDecimal getId() {
    return id;
  }

  public void setId(BigDecimal id) {
    this.id = id;
  }


  public AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner name(String name) {
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


  public AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner localizedName(String localizedName) {
    this.localizedName = localizedName;
    return this;
  }

   /**
   * Get localizedName
   * @return localizedName
  **/
  @javax.annotation.Nonnull
  public String getLocalizedName() {
    return localizedName;
  }

  public void setLocalizedName(String localizedName) {
    this.localizedName = localizedName;
  }


  public AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner image(String image) {
    this.image = image;
    return this;
  }

   /**
   * Get image
   * @return image
  **/
  @javax.annotation.Nonnull
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner = (AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner) o;
    return Objects.equals(this.id, analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.id) &&
        Objects.equals(this.name, analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.name) &&
        Objects.equals(this.localizedName, analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.localizedName) &&
        Objects.equals(this.image, analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.image);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, name, localizedName, image);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    localizedName: ").append(toIndentedString(localizedName)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
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
    openapiFields.add("id");
    openapiFields.add("name");
    openapiFields.add("localizedName");
    openapiFields.add("image");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("id");
    openapiRequiredFields.add("name");
    openapiRequiredFields.add("localizedName");
    openapiRequiredFields.add("image");
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner is not found in the empty JSON string", AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if (!jsonObj.get("localizedName").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `localizedName` to be a primitive type in the JSON string but got `%s`", jsonObj.get("localizedName").toString()));
      }
      if (!jsonObj.get("image").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `image` to be a primitive type in the JSON string but got `%s`", jsonObj.get("image").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.class));

       return (TypeAdapter<T>) new TypeAdapter<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner>() {
           @Override
           public void write(JsonWriter out, AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner
  * @throws IOException if the JSON string is invalid with respect to AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner
  */
  public static AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.class);
  }

 /**
  * Convert an instance of AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}


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
 * GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_LOCALIZED_NAME = "localizedName";
  @SerializedName(SERIALIZED_NAME_LOCALIZED_NAME)
  private String localizedName;

  public static final String SERIALIZED_NAME_IMAGE = "image";
  @SerializedName(SERIALIZED_NAME_IMAGE)
  private String image;

  public GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner() {
  }

  public GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner id(Integer id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   */
  @javax.annotation.Nonnull
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   */
  @javax.annotation.Nonnull
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner localizedName(String localizedName) {
    this.localizedName = localizedName;
    return this;
  }

  /**
   * Get localizedName
   * @return localizedName
   */
  @javax.annotation.Nonnull
  public String getLocalizedName() {
    return localizedName;
  }

  public void setLocalizedName(String localizedName) {
    this.localizedName = localizedName;
  }


  public GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner image(String image) {
    this.image = image;
    return this;
  }

  /**
   * Get image
   * @return image
   */
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
    GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner getAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner = (GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner) o;
    return Objects.equals(this.id, getAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.id) &&
        Objects.equals(this.name, getAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.name) &&
        Objects.equals(this.localizedName, getAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.localizedName) &&
        Objects.equals(this.image, getAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.image);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, name, localizedName, image);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner {\n");
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
   * @throws IOException if the JSON Element is invalid with respect to GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner is not found in the empty JSON string", GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.openapiRequiredFields) {
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
       if (!GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.class));

       return (TypeAdapter<T>) new TypeAdapter<GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner>() {
           @Override
           public void write(JsonWriter out, GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner
   * @throws IOException if the JSON string is invalid with respect to GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner
   */
  public static GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.class);
  }

  /**
   * Convert an instance of GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}


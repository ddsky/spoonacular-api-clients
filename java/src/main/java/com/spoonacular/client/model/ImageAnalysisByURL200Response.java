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
import com.spoonacular.client.model.ImageAnalysisByURL200ResponseCategory;
import com.spoonacular.client.model.ImageAnalysisByURL200ResponseNutrition;
import com.spoonacular.client.model.ImageAnalysisByURL200ResponseRecipesInner;
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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-03-08T09:55:50.998178900+01:00[Europe/Berlin]")
public class ImageAnalysisByURL200Response {
  public static final String SERIALIZED_NAME_NUTRITION = "nutrition";
  @SerializedName(SERIALIZED_NAME_NUTRITION)
  private ImageAnalysisByURL200ResponseNutrition nutrition;

  public static final String SERIALIZED_NAME_CATEGORY = "category";
  @SerializedName(SERIALIZED_NAME_CATEGORY)
  private ImageAnalysisByURL200ResponseCategory category;

  public static final String SERIALIZED_NAME_RECIPES = "recipes";
  @SerializedName(SERIALIZED_NAME_RECIPES)
  private Set<ImageAnalysisByURL200ResponseRecipesInner> recipes = new LinkedHashSet<>();

  public ImageAnalysisByURL200Response() {
  }

  public ImageAnalysisByURL200Response nutrition(ImageAnalysisByURL200ResponseNutrition nutrition) {
    this.nutrition = nutrition;
    return this;
  }

   /**
   * Get nutrition
   * @return nutrition
  **/
  @javax.annotation.Nonnull
  public ImageAnalysisByURL200ResponseNutrition getNutrition() {
    return nutrition;
  }

  public void setNutrition(ImageAnalysisByURL200ResponseNutrition nutrition) {
    this.nutrition = nutrition;
  }


  public ImageAnalysisByURL200Response category(ImageAnalysisByURL200ResponseCategory category) {
    this.category = category;
    return this;
  }

   /**
   * Get category
   * @return category
  **/
  @javax.annotation.Nonnull
  public ImageAnalysisByURL200ResponseCategory getCategory() {
    return category;
  }

  public void setCategory(ImageAnalysisByURL200ResponseCategory category) {
    this.category = category;
  }


  public ImageAnalysisByURL200Response recipes(Set<ImageAnalysisByURL200ResponseRecipesInner> recipes) {
    this.recipes = recipes;
    return this;
  }

  public ImageAnalysisByURL200Response addRecipesItem(ImageAnalysisByURL200ResponseRecipesInner recipesItem) {
    if (this.recipes == null) {
      this.recipes = new LinkedHashSet<>();
    }
    this.recipes.add(recipesItem);
    return this;
  }

   /**
   * Get recipes
   * @return recipes
  **/
  @javax.annotation.Nonnull
  public Set<ImageAnalysisByURL200ResponseRecipesInner> getRecipes() {
    return recipes;
  }

  public void setRecipes(Set<ImageAnalysisByURL200ResponseRecipesInner> recipes) {
    this.recipes = recipes;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ImageAnalysisByURL200Response imageAnalysisByURL200Response = (ImageAnalysisByURL200Response) o;
    return Objects.equals(this.nutrition, imageAnalysisByURL200Response.nutrition) &&
        Objects.equals(this.category, imageAnalysisByURL200Response.category) &&
        Objects.equals(this.recipes, imageAnalysisByURL200Response.recipes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(nutrition, category, recipes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ImageAnalysisByURL200Response {\n");
    sb.append("    nutrition: ").append(toIndentedString(nutrition)).append("\n");
    sb.append("    category: ").append(toIndentedString(category)).append("\n");
    sb.append("    recipes: ").append(toIndentedString(recipes)).append("\n");
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
    openapiFields.add("nutrition");
    openapiFields.add("category");
    openapiFields.add("recipes");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("nutrition");
    openapiRequiredFields.add("category");
    openapiRequiredFields.add("recipes");
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to ImageAnalysisByURL200Response
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ImageAnalysisByURL200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ImageAnalysisByURL200Response is not found in the empty JSON string", ImageAnalysisByURL200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ImageAnalysisByURL200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ImageAnalysisByURL200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : ImageAnalysisByURL200Response.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // validate the required field `nutrition`
      ImageAnalysisByURL200ResponseNutrition.validateJsonElement(jsonObj.get("nutrition"));
      // validate the required field `category`
      ImageAnalysisByURL200ResponseCategory.validateJsonElement(jsonObj.get("category"));
      // ensure the json data is an array
      if (!jsonObj.get("recipes").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `recipes` to be an array in the JSON string but got `%s`", jsonObj.get("recipes").toString()));
      }

      JsonArray jsonArrayrecipes = jsonObj.getAsJsonArray("recipes");
      // validate the required field `recipes` (array)
      for (int i = 0; i < jsonArrayrecipes.size(); i++) {
        ImageAnalysisByURL200ResponseRecipesInner.validateJsonElement(jsonArrayrecipes.get(i));
      };
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ImageAnalysisByURL200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ImageAnalysisByURL200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ImageAnalysisByURL200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ImageAnalysisByURL200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<ImageAnalysisByURL200Response>() {
           @Override
           public void write(JsonWriter out, ImageAnalysisByURL200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ImageAnalysisByURL200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of ImageAnalysisByURL200Response given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ImageAnalysisByURL200Response
  * @throws IOException if the JSON string is invalid with respect to ImageAnalysisByURL200Response
  */
  public static ImageAnalysisByURL200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ImageAnalysisByURL200Response.class);
  }

 /**
  * Convert an instance of ImageAnalysisByURL200Response to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}


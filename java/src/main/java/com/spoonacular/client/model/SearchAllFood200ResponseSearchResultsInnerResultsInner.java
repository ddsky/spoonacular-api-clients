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
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.math.BigDecimal;

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

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.spoonacular.client.JSON;

/**
 * SearchAllFood200ResponseSearchResultsInnerResultsInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-03T16:53:39.113+01:00[Europe/Berlin]")
public class SearchAllFood200ResponseSearchResultsInnerResultsInner {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_IMAGE = "image";
  @SerializedName(SERIALIZED_NAME_IMAGE)
  private String image;

  public static final String SERIALIZED_NAME_LINK = "link";
  @SerializedName(SERIALIZED_NAME_LINK)
  private String link;

  public static final String SERIALIZED_NAME_TYPE = "type";
  @SerializedName(SERIALIZED_NAME_TYPE)
  private String type;

  public static final String SERIALIZED_NAME_RELEVANCE = "relevance";
  @SerializedName(SERIALIZED_NAME_RELEVANCE)
  private BigDecimal relevance;

  public static final String SERIALIZED_NAME_CONTENT = "content";
  @SerializedName(SERIALIZED_NAME_CONTENT)
  private String content;

  public SearchAllFood200ResponseSearchResultsInnerResultsInner() { 
  }

  public SearchAllFood200ResponseSearchResultsInnerResultsInner id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public SearchAllFood200ResponseSearchResultsInnerResultsInner name(String name) {
    
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    this.name = name;
  }


  public SearchAllFood200ResponseSearchResultsInnerResultsInner image(String image) {
    
    this.image = image;
    return this;
  }

   /**
   * Get image
   * @return image
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(required = true, value = "")

  public String getImage() {
    return image;
  }


  public void setImage(String image) {
    this.image = image;
  }


  public SearchAllFood200ResponseSearchResultsInnerResultsInner link(String link) {
    
    this.link = link;
    return this;
  }

   /**
   * Get link
   * @return link
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(required = true, value = "")

  public String getLink() {
    return link;
  }


  public void setLink(String link) {
    this.link = link;
  }


  public SearchAllFood200ResponseSearchResultsInnerResultsInner type(String type) {
    
    this.type = type;
    return this;
  }

   /**
   * Get type
   * @return type
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getType() {
    return type;
  }


  public void setType(String type) {
    this.type = type;
  }


  public SearchAllFood200ResponseSearchResultsInnerResultsInner relevance(BigDecimal relevance) {
    
    this.relevance = relevance;
    return this;
  }

   /**
   * Get relevance
   * @return relevance
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public BigDecimal getRelevance() {
    return relevance;
  }


  public void setRelevance(BigDecimal relevance) {
    this.relevance = relevance;
  }


  public SearchAllFood200ResponseSearchResultsInnerResultsInner content(String content) {
    
    this.content = content;
    return this;
  }

   /**
   * Get content
   * @return content
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(required = true, value = "")

  public String getContent() {
    return content;
  }


  public void setContent(String content) {
    this.content = content;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchAllFood200ResponseSearchResultsInnerResultsInner searchAllFood200ResponseSearchResultsInnerResultsInner = (SearchAllFood200ResponseSearchResultsInnerResultsInner) o;
    return Objects.equals(this.id, searchAllFood200ResponseSearchResultsInnerResultsInner.id) &&
        Objects.equals(this.name, searchAllFood200ResponseSearchResultsInnerResultsInner.name) &&
        Objects.equals(this.image, searchAllFood200ResponseSearchResultsInnerResultsInner.image) &&
        Objects.equals(this.link, searchAllFood200ResponseSearchResultsInnerResultsInner.link) &&
        Objects.equals(this.type, searchAllFood200ResponseSearchResultsInnerResultsInner.type) &&
        Objects.equals(this.relevance, searchAllFood200ResponseSearchResultsInnerResultsInner.relevance) &&
        Objects.equals(this.content, searchAllFood200ResponseSearchResultsInnerResultsInner.content);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, name, image, link, type, relevance, content);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchAllFood200ResponseSearchResultsInnerResultsInner {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
    sb.append("    link: ").append(toIndentedString(link)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    relevance: ").append(toIndentedString(relevance)).append("\n");
    sb.append("    content: ").append(toIndentedString(content)).append("\n");
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
    openapiFields.add("image");
    openapiFields.add("link");
    openapiFields.add("type");
    openapiFields.add("relevance");
    openapiFields.add("content");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("id");
    openapiRequiredFields.add("name");
    openapiRequiredFields.add("image");
    openapiRequiredFields.add("link");
    openapiRequiredFields.add("type");
    openapiRequiredFields.add("relevance");
    openapiRequiredFields.add("content");
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to SearchAllFood200ResponseSearchResultsInnerResultsInner
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (SearchAllFood200ResponseSearchResultsInnerResultsInner.openapiRequiredFields.isEmpty()) {
          return;
        } else { // has required fields
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchAllFood200ResponseSearchResultsInnerResultsInner is not found in the empty JSON string", SearchAllFood200ResponseSearchResultsInnerResultsInner.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!SearchAllFood200ResponseSearchResultsInnerResultsInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchAllFood200ResponseSearchResultsInnerResultsInner` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : SearchAllFood200ResponseSearchResultsInnerResultsInner.openapiRequiredFields) {
        if (jsonObj.get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonObj.toString()));
        }
      }
      if (jsonObj.get("id") != null && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if (jsonObj.get("name") != null && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if (jsonObj.get("image") != null && !jsonObj.get("image").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `image` to be a primitive type in the JSON string but got `%s`", jsonObj.get("image").toString()));
      }
      if (jsonObj.get("link") != null && !jsonObj.get("link").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `link` to be a primitive type in the JSON string but got `%s`", jsonObj.get("link").toString()));
      }
      if (jsonObj.get("type") != null && !jsonObj.get("type").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `type` to be a primitive type in the JSON string but got `%s`", jsonObj.get("type").toString()));
      }
      if (jsonObj.get("content") != null && !jsonObj.get("content").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `content` to be a primitive type in the JSON string but got `%s`", jsonObj.get("content").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchAllFood200ResponseSearchResultsInnerResultsInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchAllFood200ResponseSearchResultsInnerResultsInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchAllFood200ResponseSearchResultsInnerResultsInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchAllFood200ResponseSearchResultsInnerResultsInner.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchAllFood200ResponseSearchResultsInnerResultsInner>() {
           @Override
           public void write(JsonWriter out, SearchAllFood200ResponseSearchResultsInnerResultsInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchAllFood200ResponseSearchResultsInnerResultsInner read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of SearchAllFood200ResponseSearchResultsInnerResultsInner given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SearchAllFood200ResponseSearchResultsInnerResultsInner
  * @throws IOException if the JSON string is invalid with respect to SearchAllFood200ResponseSearchResultsInnerResultsInner
  */
  public static SearchAllFood200ResponseSearchResultsInnerResultsInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchAllFood200ResponseSearchResultsInnerResultsInner.class);
  }

 /**
  * Convert an instance of SearchAllFood200ResponseSearchResultsInnerResultsInner to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}


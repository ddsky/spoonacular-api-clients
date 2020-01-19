package com.spoonacular.client.model;

import java.io.File;
import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject3  {
  
  @SerializedName("title")
  private String title = null;
  @SerializedName("image")
  private File image = null;
  @SerializedName("ingredients")
  private String ingredients = null;
  @SerializedName("instructions")
  private String instructions = null;
  @SerializedName("readyInMinutes")
  private BigDecimal readyInMinutes = null;
  @SerializedName("servings")
  private BigDecimal servings = null;
  @SerializedName("mask")
  private String mask = null;
  @SerializedName("backgroundImage")
  private String backgroundImage = null;
  @SerializedName("author")
  private String author = null;
  @SerializedName("backgroundColor")
  private String backgroundColor = null;
  @SerializedName("fontColor")
  private String fontColor = null;
  @SerializedName("source")
  private String source = null;

  /**
   * The title of the recipe.
   **/
  @ApiModelProperty(required = true, value = "The title of the recipe.")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   * The binary image of the recipe as jpg.
   **/
  @ApiModelProperty(required = true, value = "The binary image of the recipe as jpg.")
  public File getImage() {
    return image;
  }
  public void setImage(File image) {
    this.image = image;
  }

  /**
   * The ingredient list of the recipe, one ingredient per line (separate lines with \\n).
   **/
  @ApiModelProperty(required = true, value = "The ingredient list of the recipe, one ingredient per line (separate lines with \\n).")
  public String getIngredients() {
    return ingredients;
  }
  public void setIngredients(String ingredients) {
    this.ingredients = ingredients;
  }

  /**
   * The instructions to make the recipe. One step per line (separate lines with \\n).
   **/
  @ApiModelProperty(required = true, value = "The instructions to make the recipe. One step per line (separate lines with \\n).")
  public String getInstructions() {
    return instructions;
  }
  public void setInstructions(String instructions) {
    this.instructions = instructions;
  }

  /**
   * The number of minutes it takes to get the recipe on the table.
   **/
  @ApiModelProperty(required = true, value = "The number of minutes it takes to get the recipe on the table.")
  public BigDecimal getReadyInMinutes() {
    return readyInMinutes;
  }
  public void setReadyInMinutes(BigDecimal readyInMinutes) {
    this.readyInMinutes = readyInMinutes;
  }

  /**
   * The number of servings the recipe makes.
   **/
  @ApiModelProperty(required = true, value = "The number of servings the recipe makes.")
  public BigDecimal getServings() {
    return servings;
  }
  public void setServings(BigDecimal servings) {
    this.servings = servings;
  }

  /**
   * The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\").
   **/
  @ApiModelProperty(required = true, value = "The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\").")
  public String getMask() {
    return mask;
  }
  public void setMask(String mask) {
    this.mask = mask;
  }

  /**
   * The background image (\"none\",\"background1\", or \"background2\").
   **/
  @ApiModelProperty(required = true, value = "The background image (\"none\",\"background1\", or \"background2\").")
  public String getBackgroundImage() {
    return backgroundImage;
  }
  public void setBackgroundImage(String backgroundImage) {
    this.backgroundImage = backgroundImage;
  }

  /**
   * The author of the recipe.
   **/
  @ApiModelProperty(value = "The author of the recipe.")
  public String getAuthor() {
    return author;
  }
  public void setAuthor(String author) {
    this.author = author;
  }

  /**
   * The background color for the recipe card as a hex-string.
   **/
  @ApiModelProperty(value = "The background color for the recipe card as a hex-string.")
  public String getBackgroundColor() {
    return backgroundColor;
  }
  public void setBackgroundColor(String backgroundColor) {
    this.backgroundColor = backgroundColor;
  }

  /**
   * The font color for the recipe card as a hex-string.
   **/
  @ApiModelProperty(value = "The font color for the recipe card as a hex-string.")
  public String getFontColor() {
    return fontColor;
  }
  public void setFontColor(String fontColor) {
    this.fontColor = fontColor;
  }

  /**
   * The source of the recipe.
   **/
  @ApiModelProperty(value = "The source of the recipe.")
  public String getSource() {
    return source;
  }
  public void setSource(String source) {
    this.source = source;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineObject3 inlineObject3 = (InlineObject3) o;
    return (this.title == null ? inlineObject3.title == null : this.title.equals(inlineObject3.title)) &&
        (this.image == null ? inlineObject3.image == null : this.image.equals(inlineObject3.image)) &&
        (this.ingredients == null ? inlineObject3.ingredients == null : this.ingredients.equals(inlineObject3.ingredients)) &&
        (this.instructions == null ? inlineObject3.instructions == null : this.instructions.equals(inlineObject3.instructions)) &&
        (this.readyInMinutes == null ? inlineObject3.readyInMinutes == null : this.readyInMinutes.equals(inlineObject3.readyInMinutes)) &&
        (this.servings == null ? inlineObject3.servings == null : this.servings.equals(inlineObject3.servings)) &&
        (this.mask == null ? inlineObject3.mask == null : this.mask.equals(inlineObject3.mask)) &&
        (this.backgroundImage == null ? inlineObject3.backgroundImage == null : this.backgroundImage.equals(inlineObject3.backgroundImage)) &&
        (this.author == null ? inlineObject3.author == null : this.author.equals(inlineObject3.author)) &&
        (this.backgroundColor == null ? inlineObject3.backgroundColor == null : this.backgroundColor.equals(inlineObject3.backgroundColor)) &&
        (this.fontColor == null ? inlineObject3.fontColor == null : this.fontColor.equals(inlineObject3.fontColor)) &&
        (this.source == null ? inlineObject3.source == null : this.source.equals(inlineObject3.source));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.ingredients == null ? 0: this.ingredients.hashCode());
    result = 31 * result + (this.instructions == null ? 0: this.instructions.hashCode());
    result = 31 * result + (this.readyInMinutes == null ? 0: this.readyInMinutes.hashCode());
    result = 31 * result + (this.servings == null ? 0: this.servings.hashCode());
    result = 31 * result + (this.mask == null ? 0: this.mask.hashCode());
    result = 31 * result + (this.backgroundImage == null ? 0: this.backgroundImage.hashCode());
    result = 31 * result + (this.author == null ? 0: this.author.hashCode());
    result = 31 * result + (this.backgroundColor == null ? 0: this.backgroundColor.hashCode());
    result = 31 * result + (this.fontColor == null ? 0: this.fontColor.hashCode());
    result = 31 * result + (this.source == null ? 0: this.source.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject3 {\n");
    
    sb.append("  title: ").append(title).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  instructions: ").append(instructions).append("\n");
    sb.append("  readyInMinutes: ").append(readyInMinutes).append("\n");
    sb.append("  servings: ").append(servings).append("\n");
    sb.append("  mask: ").append(mask).append("\n");
    sb.append("  backgroundImage: ").append(backgroundImage).append("\n");
    sb.append("  author: ").append(author).append("\n");
    sb.append("  backgroundColor: ").append(backgroundColor).append("\n");
    sb.append("  fontColor: ").append(fontColor).append("\n");
    sb.append("  source: ").append(source).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

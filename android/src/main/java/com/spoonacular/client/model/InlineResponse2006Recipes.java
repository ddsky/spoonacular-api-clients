package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse2003ExtendedIngredients;
import com.spoonacular.client.model.InlineResponse2003WinePairing;
import java.math.BigDecimal;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2006Recipes  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("imageType")
  private String imageType = null;
  @SerializedName("servings")
  private BigDecimal servings = null;
  @SerializedName("readyInMinutes")
  private Integer readyInMinutes = null;
  @SerializedName("license")
  private String license = null;
  @SerializedName("sourceName")
  private String sourceName = null;
  @SerializedName("sourceUrl")
  private String sourceUrl = null;
  @SerializedName("spoonacularSourceUrl")
  private String spoonacularSourceUrl = null;
  @SerializedName("aggregateLikes")
  private BigDecimal aggregateLikes = null;
  @SerializedName("healthScore")
  private BigDecimal healthScore = null;
  @SerializedName("spoonacularScore")
  private BigDecimal spoonacularScore = null;
  @SerializedName("pricePerServing")
  private BigDecimal pricePerServing = null;
  @SerializedName("analyzedInstructions")
  private List<Object> analyzedInstructions = null;
  @SerializedName("cheap")
  private Boolean cheap = null;
  @SerializedName("creditsText")
  private String creditsText = null;
  @SerializedName("cuisines")
  private List<String> cuisines = null;
  @SerializedName("dairyFree")
  private Boolean dairyFree = null;
  @SerializedName("diets")
  private List<String> diets = null;
  @SerializedName("gaps")
  private String gaps = null;
  @SerializedName("glutenFree")
  private Boolean glutenFree = null;
  @SerializedName("instructions")
  private String instructions = null;
  @SerializedName("ketogenic")
  private Boolean ketogenic = null;
  @SerializedName("lowFodmap")
  private Boolean lowFodmap = null;
  @SerializedName("occasions")
  private List<String> occasions = null;
  @SerializedName("sustainable")
  private Boolean sustainable = null;
  @SerializedName("vegan")
  private Boolean vegan = null;
  @SerializedName("vegetarian")
  private Boolean vegetarian = null;
  @SerializedName("veryHealthy")
  private Boolean veryHealthy = null;
  @SerializedName("veryPopular")
  private Boolean veryPopular = null;
  @SerializedName("whole30")
  private Boolean whole30 = null;
  @SerializedName("weightWatcherSmartPoints")
  private BigDecimal weightWatcherSmartPoints = null;
  @SerializedName("dishTypes")
  private List<String> dishTypes = null;
  @SerializedName("extendedIngredients")
  private List<InlineResponse2003ExtendedIngredients> extendedIngredients = null;
  @SerializedName("summary")
  private String summary = null;
  @SerializedName("winePairing")
  private InlineResponse2003WinePairing winePairing = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getImage() {
    return image;
  }
  public void setImage(String image) {
    this.image = image;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getImageType() {
    return imageType;
  }
  public void setImageType(String imageType) {
    this.imageType = imageType;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getServings() {
    return servings;
  }
  public void setServings(BigDecimal servings) {
    this.servings = servings;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getReadyInMinutes() {
    return readyInMinutes;
  }
  public void setReadyInMinutes(Integer readyInMinutes) {
    this.readyInMinutes = readyInMinutes;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getLicense() {
    return license;
  }
  public void setLicense(String license) {
    this.license = license;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getSourceName() {
    return sourceName;
  }
  public void setSourceName(String sourceName) {
    this.sourceName = sourceName;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getSourceUrl() {
    return sourceUrl;
  }
  public void setSourceUrl(String sourceUrl) {
    this.sourceUrl = sourceUrl;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getSpoonacularSourceUrl() {
    return spoonacularSourceUrl;
  }
  public void setSpoonacularSourceUrl(String spoonacularSourceUrl) {
    this.spoonacularSourceUrl = spoonacularSourceUrl;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getAggregateLikes() {
    return aggregateLikes;
  }
  public void setAggregateLikes(BigDecimal aggregateLikes) {
    this.aggregateLikes = aggregateLikes;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getHealthScore() {
    return healthScore;
  }
  public void setHealthScore(BigDecimal healthScore) {
    this.healthScore = healthScore;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getSpoonacularScore() {
    return spoonacularScore;
  }
  public void setSpoonacularScore(BigDecimal spoonacularScore) {
    this.spoonacularScore = spoonacularScore;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getPricePerServing() {
    return pricePerServing;
  }
  public void setPricePerServing(BigDecimal pricePerServing) {
    this.pricePerServing = pricePerServing;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Object> getAnalyzedInstructions() {
    return analyzedInstructions;
  }
  public void setAnalyzedInstructions(List<Object> analyzedInstructions) {
    this.analyzedInstructions = analyzedInstructions;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getCheap() {
    return cheap;
  }
  public void setCheap(Boolean cheap) {
    this.cheap = cheap;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getCreditsText() {
    return creditsText;
  }
  public void setCreditsText(String creditsText) {
    this.creditsText = creditsText;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getCuisines() {
    return cuisines;
  }
  public void setCuisines(List<String> cuisines) {
    this.cuisines = cuisines;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getDairyFree() {
    return dairyFree;
  }
  public void setDairyFree(Boolean dairyFree) {
    this.dairyFree = dairyFree;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getDiets() {
    return diets;
  }
  public void setDiets(List<String> diets) {
    this.diets = diets;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getGaps() {
    return gaps;
  }
  public void setGaps(String gaps) {
    this.gaps = gaps;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getGlutenFree() {
    return glutenFree;
  }
  public void setGlutenFree(Boolean glutenFree) {
    this.glutenFree = glutenFree;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getInstructions() {
    return instructions;
  }
  public void setInstructions(String instructions) {
    this.instructions = instructions;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getKetogenic() {
    return ketogenic;
  }
  public void setKetogenic(Boolean ketogenic) {
    this.ketogenic = ketogenic;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getLowFodmap() {
    return lowFodmap;
  }
  public void setLowFodmap(Boolean lowFodmap) {
    this.lowFodmap = lowFodmap;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getOccasions() {
    return occasions;
  }
  public void setOccasions(List<String> occasions) {
    this.occasions = occasions;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getSustainable() {
    return sustainable;
  }
  public void setSustainable(Boolean sustainable) {
    this.sustainable = sustainable;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getVegan() {
    return vegan;
  }
  public void setVegan(Boolean vegan) {
    this.vegan = vegan;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getVegetarian() {
    return vegetarian;
  }
  public void setVegetarian(Boolean vegetarian) {
    this.vegetarian = vegetarian;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getVeryHealthy() {
    return veryHealthy;
  }
  public void setVeryHealthy(Boolean veryHealthy) {
    this.veryHealthy = veryHealthy;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getVeryPopular() {
    return veryPopular;
  }
  public void setVeryPopular(Boolean veryPopular) {
    this.veryPopular = veryPopular;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getWhole30() {
    return whole30;
  }
  public void setWhole30(Boolean whole30) {
    this.whole30 = whole30;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getWeightWatcherSmartPoints() {
    return weightWatcherSmartPoints;
  }
  public void setWeightWatcherSmartPoints(BigDecimal weightWatcherSmartPoints) {
    this.weightWatcherSmartPoints = weightWatcherSmartPoints;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getDishTypes() {
    return dishTypes;
  }
  public void setDishTypes(List<String> dishTypes) {
    this.dishTypes = dishTypes;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<InlineResponse2003ExtendedIngredients> getExtendedIngredients() {
    return extendedIngredients;
  }
  public void setExtendedIngredients(List<InlineResponse2003ExtendedIngredients> extendedIngredients) {
    this.extendedIngredients = extendedIngredients;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getSummary() {
    return summary;
  }
  public void setSummary(String summary) {
    this.summary = summary;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public InlineResponse2003WinePairing getWinePairing() {
    return winePairing;
  }
  public void setWinePairing(InlineResponse2003WinePairing winePairing) {
    this.winePairing = winePairing;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2006Recipes inlineResponse2006Recipes = (InlineResponse2006Recipes) o;
    return (this.id == null ? inlineResponse2006Recipes.id == null : this.id.equals(inlineResponse2006Recipes.id)) &&
        (this.title == null ? inlineResponse2006Recipes.title == null : this.title.equals(inlineResponse2006Recipes.title)) &&
        (this.image == null ? inlineResponse2006Recipes.image == null : this.image.equals(inlineResponse2006Recipes.image)) &&
        (this.imageType == null ? inlineResponse2006Recipes.imageType == null : this.imageType.equals(inlineResponse2006Recipes.imageType)) &&
        (this.servings == null ? inlineResponse2006Recipes.servings == null : this.servings.equals(inlineResponse2006Recipes.servings)) &&
        (this.readyInMinutes == null ? inlineResponse2006Recipes.readyInMinutes == null : this.readyInMinutes.equals(inlineResponse2006Recipes.readyInMinutes)) &&
        (this.license == null ? inlineResponse2006Recipes.license == null : this.license.equals(inlineResponse2006Recipes.license)) &&
        (this.sourceName == null ? inlineResponse2006Recipes.sourceName == null : this.sourceName.equals(inlineResponse2006Recipes.sourceName)) &&
        (this.sourceUrl == null ? inlineResponse2006Recipes.sourceUrl == null : this.sourceUrl.equals(inlineResponse2006Recipes.sourceUrl)) &&
        (this.spoonacularSourceUrl == null ? inlineResponse2006Recipes.spoonacularSourceUrl == null : this.spoonacularSourceUrl.equals(inlineResponse2006Recipes.spoonacularSourceUrl)) &&
        (this.aggregateLikes == null ? inlineResponse2006Recipes.aggregateLikes == null : this.aggregateLikes.equals(inlineResponse2006Recipes.aggregateLikes)) &&
        (this.healthScore == null ? inlineResponse2006Recipes.healthScore == null : this.healthScore.equals(inlineResponse2006Recipes.healthScore)) &&
        (this.spoonacularScore == null ? inlineResponse2006Recipes.spoonacularScore == null : this.spoonacularScore.equals(inlineResponse2006Recipes.spoonacularScore)) &&
        (this.pricePerServing == null ? inlineResponse2006Recipes.pricePerServing == null : this.pricePerServing.equals(inlineResponse2006Recipes.pricePerServing)) &&
        (this.analyzedInstructions == null ? inlineResponse2006Recipes.analyzedInstructions == null : this.analyzedInstructions.equals(inlineResponse2006Recipes.analyzedInstructions)) &&
        (this.cheap == null ? inlineResponse2006Recipes.cheap == null : this.cheap.equals(inlineResponse2006Recipes.cheap)) &&
        (this.creditsText == null ? inlineResponse2006Recipes.creditsText == null : this.creditsText.equals(inlineResponse2006Recipes.creditsText)) &&
        (this.cuisines == null ? inlineResponse2006Recipes.cuisines == null : this.cuisines.equals(inlineResponse2006Recipes.cuisines)) &&
        (this.dairyFree == null ? inlineResponse2006Recipes.dairyFree == null : this.dairyFree.equals(inlineResponse2006Recipes.dairyFree)) &&
        (this.diets == null ? inlineResponse2006Recipes.diets == null : this.diets.equals(inlineResponse2006Recipes.diets)) &&
        (this.gaps == null ? inlineResponse2006Recipes.gaps == null : this.gaps.equals(inlineResponse2006Recipes.gaps)) &&
        (this.glutenFree == null ? inlineResponse2006Recipes.glutenFree == null : this.glutenFree.equals(inlineResponse2006Recipes.glutenFree)) &&
        (this.instructions == null ? inlineResponse2006Recipes.instructions == null : this.instructions.equals(inlineResponse2006Recipes.instructions)) &&
        (this.ketogenic == null ? inlineResponse2006Recipes.ketogenic == null : this.ketogenic.equals(inlineResponse2006Recipes.ketogenic)) &&
        (this.lowFodmap == null ? inlineResponse2006Recipes.lowFodmap == null : this.lowFodmap.equals(inlineResponse2006Recipes.lowFodmap)) &&
        (this.occasions == null ? inlineResponse2006Recipes.occasions == null : this.occasions.equals(inlineResponse2006Recipes.occasions)) &&
        (this.sustainable == null ? inlineResponse2006Recipes.sustainable == null : this.sustainable.equals(inlineResponse2006Recipes.sustainable)) &&
        (this.vegan == null ? inlineResponse2006Recipes.vegan == null : this.vegan.equals(inlineResponse2006Recipes.vegan)) &&
        (this.vegetarian == null ? inlineResponse2006Recipes.vegetarian == null : this.vegetarian.equals(inlineResponse2006Recipes.vegetarian)) &&
        (this.veryHealthy == null ? inlineResponse2006Recipes.veryHealthy == null : this.veryHealthy.equals(inlineResponse2006Recipes.veryHealthy)) &&
        (this.veryPopular == null ? inlineResponse2006Recipes.veryPopular == null : this.veryPopular.equals(inlineResponse2006Recipes.veryPopular)) &&
        (this.whole30 == null ? inlineResponse2006Recipes.whole30 == null : this.whole30.equals(inlineResponse2006Recipes.whole30)) &&
        (this.weightWatcherSmartPoints == null ? inlineResponse2006Recipes.weightWatcherSmartPoints == null : this.weightWatcherSmartPoints.equals(inlineResponse2006Recipes.weightWatcherSmartPoints)) &&
        (this.dishTypes == null ? inlineResponse2006Recipes.dishTypes == null : this.dishTypes.equals(inlineResponse2006Recipes.dishTypes)) &&
        (this.extendedIngredients == null ? inlineResponse2006Recipes.extendedIngredients == null : this.extendedIngredients.equals(inlineResponse2006Recipes.extendedIngredients)) &&
        (this.summary == null ? inlineResponse2006Recipes.summary == null : this.summary.equals(inlineResponse2006Recipes.summary)) &&
        (this.winePairing == null ? inlineResponse2006Recipes.winePairing == null : this.winePairing.equals(inlineResponse2006Recipes.winePairing));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.imageType == null ? 0: this.imageType.hashCode());
    result = 31 * result + (this.servings == null ? 0: this.servings.hashCode());
    result = 31 * result + (this.readyInMinutes == null ? 0: this.readyInMinutes.hashCode());
    result = 31 * result + (this.license == null ? 0: this.license.hashCode());
    result = 31 * result + (this.sourceName == null ? 0: this.sourceName.hashCode());
    result = 31 * result + (this.sourceUrl == null ? 0: this.sourceUrl.hashCode());
    result = 31 * result + (this.spoonacularSourceUrl == null ? 0: this.spoonacularSourceUrl.hashCode());
    result = 31 * result + (this.aggregateLikes == null ? 0: this.aggregateLikes.hashCode());
    result = 31 * result + (this.healthScore == null ? 0: this.healthScore.hashCode());
    result = 31 * result + (this.spoonacularScore == null ? 0: this.spoonacularScore.hashCode());
    result = 31 * result + (this.pricePerServing == null ? 0: this.pricePerServing.hashCode());
    result = 31 * result + (this.analyzedInstructions == null ? 0: this.analyzedInstructions.hashCode());
    result = 31 * result + (this.cheap == null ? 0: this.cheap.hashCode());
    result = 31 * result + (this.creditsText == null ? 0: this.creditsText.hashCode());
    result = 31 * result + (this.cuisines == null ? 0: this.cuisines.hashCode());
    result = 31 * result + (this.dairyFree == null ? 0: this.dairyFree.hashCode());
    result = 31 * result + (this.diets == null ? 0: this.diets.hashCode());
    result = 31 * result + (this.gaps == null ? 0: this.gaps.hashCode());
    result = 31 * result + (this.glutenFree == null ? 0: this.glutenFree.hashCode());
    result = 31 * result + (this.instructions == null ? 0: this.instructions.hashCode());
    result = 31 * result + (this.ketogenic == null ? 0: this.ketogenic.hashCode());
    result = 31 * result + (this.lowFodmap == null ? 0: this.lowFodmap.hashCode());
    result = 31 * result + (this.occasions == null ? 0: this.occasions.hashCode());
    result = 31 * result + (this.sustainable == null ? 0: this.sustainable.hashCode());
    result = 31 * result + (this.vegan == null ? 0: this.vegan.hashCode());
    result = 31 * result + (this.vegetarian == null ? 0: this.vegetarian.hashCode());
    result = 31 * result + (this.veryHealthy == null ? 0: this.veryHealthy.hashCode());
    result = 31 * result + (this.veryPopular == null ? 0: this.veryPopular.hashCode());
    result = 31 * result + (this.whole30 == null ? 0: this.whole30.hashCode());
    result = 31 * result + (this.weightWatcherSmartPoints == null ? 0: this.weightWatcherSmartPoints.hashCode());
    result = 31 * result + (this.dishTypes == null ? 0: this.dishTypes.hashCode());
    result = 31 * result + (this.extendedIngredients == null ? 0: this.extendedIngredients.hashCode());
    result = 31 * result + (this.summary == null ? 0: this.summary.hashCode());
    result = 31 * result + (this.winePairing == null ? 0: this.winePairing.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2006Recipes {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  imageType: ").append(imageType).append("\n");
    sb.append("  servings: ").append(servings).append("\n");
    sb.append("  readyInMinutes: ").append(readyInMinutes).append("\n");
    sb.append("  license: ").append(license).append("\n");
    sb.append("  sourceName: ").append(sourceName).append("\n");
    sb.append("  sourceUrl: ").append(sourceUrl).append("\n");
    sb.append("  spoonacularSourceUrl: ").append(spoonacularSourceUrl).append("\n");
    sb.append("  aggregateLikes: ").append(aggregateLikes).append("\n");
    sb.append("  healthScore: ").append(healthScore).append("\n");
    sb.append("  spoonacularScore: ").append(spoonacularScore).append("\n");
    sb.append("  pricePerServing: ").append(pricePerServing).append("\n");
    sb.append("  analyzedInstructions: ").append(analyzedInstructions).append("\n");
    sb.append("  cheap: ").append(cheap).append("\n");
    sb.append("  creditsText: ").append(creditsText).append("\n");
    sb.append("  cuisines: ").append(cuisines).append("\n");
    sb.append("  dairyFree: ").append(dairyFree).append("\n");
    sb.append("  diets: ").append(diets).append("\n");
    sb.append("  gaps: ").append(gaps).append("\n");
    sb.append("  glutenFree: ").append(glutenFree).append("\n");
    sb.append("  instructions: ").append(instructions).append("\n");
    sb.append("  ketogenic: ").append(ketogenic).append("\n");
    sb.append("  lowFodmap: ").append(lowFodmap).append("\n");
    sb.append("  occasions: ").append(occasions).append("\n");
    sb.append("  sustainable: ").append(sustainable).append("\n");
    sb.append("  vegan: ").append(vegan).append("\n");
    sb.append("  vegetarian: ").append(vegetarian).append("\n");
    sb.append("  veryHealthy: ").append(veryHealthy).append("\n");
    sb.append("  veryPopular: ").append(veryPopular).append("\n");
    sb.append("  whole30: ").append(whole30).append("\n");
    sb.append("  weightWatcherSmartPoints: ").append(weightWatcherSmartPoints).append("\n");
    sb.append("  dishTypes: ").append(dishTypes).append("\n");
    sb.append("  extendedIngredients: ").append(extendedIngredients).append("\n");
    sb.append("  summary: ").append(summary).append("\n");
    sb.append("  winePairing: ").append(winePairing).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

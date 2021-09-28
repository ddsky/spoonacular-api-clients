using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace spoonacular.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class InlineResponse2006Recipes {
    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public int? Id { get; set; }

    /// <summary>
    /// Gets or Sets Title
    /// </summary>
    [DataMember(Name="title", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "title")]
    public string Title { get; set; }

    /// <summary>
    /// Gets or Sets Image
    /// </summary>
    [DataMember(Name="image", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "image")]
    public string Image { get; set; }

    /// <summary>
    /// Gets or Sets ImageType
    /// </summary>
    [DataMember(Name="imageType", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "imageType")]
    public string ImageType { get; set; }

    /// <summary>
    /// Gets or Sets Servings
    /// </summary>
    [DataMember(Name="servings", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "servings")]
    public decimal? Servings { get; set; }

    /// <summary>
    /// Gets or Sets ReadyInMinutes
    /// </summary>
    [DataMember(Name="readyInMinutes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "readyInMinutes")]
    public int? ReadyInMinutes { get; set; }

    /// <summary>
    /// Gets or Sets License
    /// </summary>
    [DataMember(Name="license", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "license")]
    public string License { get; set; }

    /// <summary>
    /// Gets or Sets SourceName
    /// </summary>
    [DataMember(Name="sourceName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "sourceName")]
    public string SourceName { get; set; }

    /// <summary>
    /// Gets or Sets SourceUrl
    /// </summary>
    [DataMember(Name="sourceUrl", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "sourceUrl")]
    public string SourceUrl { get; set; }

    /// <summary>
    /// Gets or Sets SpoonacularSourceUrl
    /// </summary>
    [DataMember(Name="spoonacularSourceUrl", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "spoonacularSourceUrl")]
    public string SpoonacularSourceUrl { get; set; }

    /// <summary>
    /// Gets or Sets AggregateLikes
    /// </summary>
    [DataMember(Name="aggregateLikes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "aggregateLikes")]
    public decimal? AggregateLikes { get; set; }

    /// <summary>
    /// Gets or Sets HealthScore
    /// </summary>
    [DataMember(Name="healthScore", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "healthScore")]
    public decimal? HealthScore { get; set; }

    /// <summary>
    /// Gets or Sets SpoonacularScore
    /// </summary>
    [DataMember(Name="spoonacularScore", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "spoonacularScore")]
    public decimal? SpoonacularScore { get; set; }

    /// <summary>
    /// Gets or Sets PricePerServing
    /// </summary>
    [DataMember(Name="pricePerServing", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "pricePerServing")]
    public decimal? PricePerServing { get; set; }

    /// <summary>
    /// Gets or Sets AnalyzedInstructions
    /// </summary>
    [DataMember(Name="analyzedInstructions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "analyzedInstructions")]
    public List<Object> AnalyzedInstructions { get; set; }

    /// <summary>
    /// Gets or Sets Cheap
    /// </summary>
    [DataMember(Name="cheap", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "cheap")]
    public bool? Cheap { get; set; }

    /// <summary>
    /// Gets or Sets CreditsText
    /// </summary>
    [DataMember(Name="creditsText", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "creditsText")]
    public string CreditsText { get; set; }

    /// <summary>
    /// Gets or Sets Cuisines
    /// </summary>
    [DataMember(Name="cuisines", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "cuisines")]
    public List<string> Cuisines { get; set; }

    /// <summary>
    /// Gets or Sets DairyFree
    /// </summary>
    [DataMember(Name="dairyFree", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "dairyFree")]
    public bool? DairyFree { get; set; }

    /// <summary>
    /// Gets or Sets Diets
    /// </summary>
    [DataMember(Name="diets", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "diets")]
    public List<string> Diets { get; set; }

    /// <summary>
    /// Gets or Sets Gaps
    /// </summary>
    [DataMember(Name="gaps", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "gaps")]
    public string Gaps { get; set; }

    /// <summary>
    /// Gets or Sets GlutenFree
    /// </summary>
    [DataMember(Name="glutenFree", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "glutenFree")]
    public bool? GlutenFree { get; set; }

    /// <summary>
    /// Gets or Sets Instructions
    /// </summary>
    [DataMember(Name="instructions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "instructions")]
    public string Instructions { get; set; }

    /// <summary>
    /// Gets or Sets Ketogenic
    /// </summary>
    [DataMember(Name="ketogenic", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ketogenic")]
    public bool? Ketogenic { get; set; }

    /// <summary>
    /// Gets or Sets LowFodmap
    /// </summary>
    [DataMember(Name="lowFodmap", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lowFodmap")]
    public bool? LowFodmap { get; set; }

    /// <summary>
    /// Gets or Sets Occasions
    /// </summary>
    [DataMember(Name="occasions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "occasions")]
    public List<string> Occasions { get; set; }

    /// <summary>
    /// Gets or Sets Sustainable
    /// </summary>
    [DataMember(Name="sustainable", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "sustainable")]
    public bool? Sustainable { get; set; }

    /// <summary>
    /// Gets or Sets Vegan
    /// </summary>
    [DataMember(Name="vegan", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "vegan")]
    public bool? Vegan { get; set; }

    /// <summary>
    /// Gets or Sets Vegetarian
    /// </summary>
    [DataMember(Name="vegetarian", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "vegetarian")]
    public bool? Vegetarian { get; set; }

    /// <summary>
    /// Gets or Sets VeryHealthy
    /// </summary>
    [DataMember(Name="veryHealthy", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "veryHealthy")]
    public bool? VeryHealthy { get; set; }

    /// <summary>
    /// Gets or Sets VeryPopular
    /// </summary>
    [DataMember(Name="veryPopular", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "veryPopular")]
    public bool? VeryPopular { get; set; }

    /// <summary>
    /// Gets or Sets Whole30
    /// </summary>
    [DataMember(Name="whole30", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "whole30")]
    public bool? Whole30 { get; set; }

    /// <summary>
    /// Gets or Sets WeightWatcherSmartPoints
    /// </summary>
    [DataMember(Name="weightWatcherSmartPoints", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "weightWatcherSmartPoints")]
    public decimal? WeightWatcherSmartPoints { get; set; }

    /// <summary>
    /// Gets or Sets DishTypes
    /// </summary>
    [DataMember(Name="dishTypes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "dishTypes")]
    public List<string> DishTypes { get; set; }

    /// <summary>
    /// Gets or Sets ExtendedIngredients
    /// </summary>
    [DataMember(Name="extendedIngredients", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "extendedIngredients")]
    public List<InlineResponse2003ExtendedIngredients> ExtendedIngredients { get; set; }

    /// <summary>
    /// Gets or Sets Summary
    /// </summary>
    [DataMember(Name="summary", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "summary")]
    public string Summary { get; set; }

    /// <summary>
    /// Gets or Sets WinePairing
    /// </summary>
    [DataMember(Name="winePairing", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "winePairing")]
    public InlineResponse2003WinePairing WinePairing { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse2006Recipes {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Title: ").Append(Title).Append("\n");
      sb.Append("  Image: ").Append(Image).Append("\n");
      sb.Append("  ImageType: ").Append(ImageType).Append("\n");
      sb.Append("  Servings: ").Append(Servings).Append("\n");
      sb.Append("  ReadyInMinutes: ").Append(ReadyInMinutes).Append("\n");
      sb.Append("  License: ").Append(License).Append("\n");
      sb.Append("  SourceName: ").Append(SourceName).Append("\n");
      sb.Append("  SourceUrl: ").Append(SourceUrl).Append("\n");
      sb.Append("  SpoonacularSourceUrl: ").Append(SpoonacularSourceUrl).Append("\n");
      sb.Append("  AggregateLikes: ").Append(AggregateLikes).Append("\n");
      sb.Append("  HealthScore: ").Append(HealthScore).Append("\n");
      sb.Append("  SpoonacularScore: ").Append(SpoonacularScore).Append("\n");
      sb.Append("  PricePerServing: ").Append(PricePerServing).Append("\n");
      sb.Append("  AnalyzedInstructions: ").Append(AnalyzedInstructions).Append("\n");
      sb.Append("  Cheap: ").Append(Cheap).Append("\n");
      sb.Append("  CreditsText: ").Append(CreditsText).Append("\n");
      sb.Append("  Cuisines: ").Append(Cuisines).Append("\n");
      sb.Append("  DairyFree: ").Append(DairyFree).Append("\n");
      sb.Append("  Diets: ").Append(Diets).Append("\n");
      sb.Append("  Gaps: ").Append(Gaps).Append("\n");
      sb.Append("  GlutenFree: ").Append(GlutenFree).Append("\n");
      sb.Append("  Instructions: ").Append(Instructions).Append("\n");
      sb.Append("  Ketogenic: ").Append(Ketogenic).Append("\n");
      sb.Append("  LowFodmap: ").Append(LowFodmap).Append("\n");
      sb.Append("  Occasions: ").Append(Occasions).Append("\n");
      sb.Append("  Sustainable: ").Append(Sustainable).Append("\n");
      sb.Append("  Vegan: ").Append(Vegan).Append("\n");
      sb.Append("  Vegetarian: ").Append(Vegetarian).Append("\n");
      sb.Append("  VeryHealthy: ").Append(VeryHealthy).Append("\n");
      sb.Append("  VeryPopular: ").Append(VeryPopular).Append("\n");
      sb.Append("  Whole30: ").Append(Whole30).Append("\n");
      sb.Append("  WeightWatcherSmartPoints: ").Append(WeightWatcherSmartPoints).Append("\n");
      sb.Append("  DishTypes: ").Append(DishTypes).Append("\n");
      sb.Append("  ExtendedIngredients: ").Append(ExtendedIngredients).Append("\n");
      sb.Append("  Summary: ").Append(Summary).Append("\n");
      sb.Append("  WinePairing: ").Append(WinePairing).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return JsonConvert.SerializeObject(this, Formatting.Indented);
    }

}
}

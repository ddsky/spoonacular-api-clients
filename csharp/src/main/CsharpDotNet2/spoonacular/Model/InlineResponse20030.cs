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
  public class InlineResponse20030 {
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
    /// Gets or Sets Breadcrumbs
    /// </summary>
    [DataMember(Name="breadcrumbs", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "breadcrumbs")]
    public List<string> Breadcrumbs { get; set; }

    /// <summary>
    /// Gets or Sets ImageType
    /// </summary>
    [DataMember(Name="imageType", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "imageType")]
    public string ImageType { get; set; }

    /// <summary>
    /// Gets or Sets Badges
    /// </summary>
    [DataMember(Name="badges", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "badges")]
    public List<string> Badges { get; set; }

    /// <summary>
    /// Gets or Sets ImportantBadges
    /// </summary>
    [DataMember(Name="importantBadges", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "importantBadges")]
    public List<string> ImportantBadges { get; set; }

    /// <summary>
    /// Gets or Sets IngredientCount
    /// </summary>
    [DataMember(Name="ingredientCount", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredientCount")]
    public int? IngredientCount { get; set; }

    /// <summary>
    /// Gets or Sets GeneratedText
    /// </summary>
    [DataMember(Name="generatedText", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "generatedText")]
    public Object GeneratedText { get; set; }

    /// <summary>
    /// Gets or Sets IngredientList
    /// </summary>
    [DataMember(Name="ingredientList", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredientList")]
    public string IngredientList { get; set; }

    /// <summary>
    /// Gets or Sets Ingredients
    /// </summary>
    [DataMember(Name="ingredients", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredients")]
    public List<InlineResponse20030Ingredients> Ingredients { get; set; }

    /// <summary>
    /// Gets or Sets Likes
    /// </summary>
    [DataMember(Name="likes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "likes")]
    public decimal? Likes { get; set; }

    /// <summary>
    /// Gets or Sets Aisle
    /// </summary>
    [DataMember(Name="aisle", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "aisle")]
    public string Aisle { get; set; }

    /// <summary>
    /// Gets or Sets Nutrition
    /// </summary>
    [DataMember(Name="nutrition", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "nutrition")]
    public InlineResponse20028Nutrition Nutrition { get; set; }

    /// <summary>
    /// Gets or Sets Price
    /// </summary>
    [DataMember(Name="price", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "price")]
    public decimal? Price { get; set; }

    /// <summary>
    /// Gets or Sets Servings
    /// </summary>
    [DataMember(Name="servings", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "servings")]
    public InlineResponse20028Servings Servings { get; set; }

    /// <summary>
    /// Gets or Sets SpoonacularScore
    /// </summary>
    [DataMember(Name="spoonacularScore", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "spoonacularScore")]
    public decimal? SpoonacularScore { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20030 {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Title: ").Append(Title).Append("\n");
      sb.Append("  Breadcrumbs: ").Append(Breadcrumbs).Append("\n");
      sb.Append("  ImageType: ").Append(ImageType).Append("\n");
      sb.Append("  Badges: ").Append(Badges).Append("\n");
      sb.Append("  ImportantBadges: ").Append(ImportantBadges).Append("\n");
      sb.Append("  IngredientCount: ").Append(IngredientCount).Append("\n");
      sb.Append("  GeneratedText: ").Append(GeneratedText).Append("\n");
      sb.Append("  IngredientList: ").Append(IngredientList).Append("\n");
      sb.Append("  Ingredients: ").Append(Ingredients).Append("\n");
      sb.Append("  Likes: ").Append(Likes).Append("\n");
      sb.Append("  Aisle: ").Append(Aisle).Append("\n");
      sb.Append("  Nutrition: ").Append(Nutrition).Append("\n");
      sb.Append("  Price: ").Append(Price).Append("\n");
      sb.Append("  Servings: ").Append(Servings).Append("\n");
      sb.Append("  SpoonacularScore: ").Append(SpoonacularScore).Append("\n");
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

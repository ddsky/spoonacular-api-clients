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
  public class InlineResponse2001 {
    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public int? Id { get; set; }

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
    /// Gets or Sets Likes
    /// </summary>
    [DataMember(Name="likes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "likes")]
    public int? Likes { get; set; }

    /// <summary>
    /// Gets or Sets MissedIngredientCount
    /// </summary>
    [DataMember(Name="missedIngredientCount", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "missedIngredientCount")]
    public int? MissedIngredientCount { get; set; }

    /// <summary>
    /// Gets or Sets MissedIngredients
    /// </summary>
    [DataMember(Name="missedIngredients", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "missedIngredients")]
    public List<RecipesFindByIngredientsMissedIngredients> MissedIngredients { get; set; }

    /// <summary>
    /// Gets or Sets Title
    /// </summary>
    [DataMember(Name="title", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "title")]
    public string Title { get; set; }

    /// <summary>
    /// Gets or Sets UnusedIngredients
    /// </summary>
    [DataMember(Name="unusedIngredients", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "unusedIngredients")]
    public List<Object> UnusedIngredients { get; set; }

    /// <summary>
    /// Gets or Sets UsedIngredientCount
    /// </summary>
    [DataMember(Name="usedIngredientCount", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "usedIngredientCount")]
    public decimal? UsedIngredientCount { get; set; }

    /// <summary>
    /// Gets or Sets UsedIngredients
    /// </summary>
    [DataMember(Name="usedIngredients", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "usedIngredients")]
    public List<RecipesFindByIngredientsMissedIngredients> UsedIngredients { get; set; }

    /// <summary>
    /// Gets or Sets 
    /// </summary>
    [DataMember(Name="", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "")]
    public string  { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse2001 {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Image: ").Append(Image).Append("\n");
      sb.Append("  ImageType: ").Append(ImageType).Append("\n");
      sb.Append("  Likes: ").Append(Likes).Append("\n");
      sb.Append("  MissedIngredientCount: ").Append(MissedIngredientCount).Append("\n");
      sb.Append("  MissedIngredients: ").Append(MissedIngredients).Append("\n");
      sb.Append("  Title: ").Append(Title).Append("\n");
      sb.Append("  UnusedIngredients: ").Append(UnusedIngredients).Append("\n");
      sb.Append("  UsedIngredientCount: ").Append(UsedIngredientCount).Append("\n");
      sb.Append("  UsedIngredients: ").Append(UsedIngredients).Append("\n");
      sb.Append("  : ").Append().Append("\n");
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

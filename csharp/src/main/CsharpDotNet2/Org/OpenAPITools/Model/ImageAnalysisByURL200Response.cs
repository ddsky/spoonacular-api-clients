using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace Org.OpenAPITools.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class ImageAnalysisByURL200Response {
    /// <summary>
    /// Gets or Sets Nutrition
    /// </summary>
    [DataMember(Name="nutrition", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "nutrition")]
    public ImageAnalysisByURL200ResponseNutrition Nutrition { get; set; }

    /// <summary>
    /// Gets or Sets Category
    /// </summary>
    [DataMember(Name="category", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "category")]
    public ImageAnalysisByURL200ResponseCategory Category { get; set; }

    /// <summary>
    /// Gets or Sets Recipes
    /// </summary>
    [DataMember(Name="recipes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "recipes")]
    public List<ImageAnalysisByURL200ResponseRecipesInner> Recipes { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ImageAnalysisByURL200Response {\n");
      sb.Append("  Nutrition: ").Append(Nutrition).Append("\n");
      sb.Append("  Category: ").Append(Category).Append("\n");
      sb.Append("  Recipes: ").Append(Recipes).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
    }

}
}

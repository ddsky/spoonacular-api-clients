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
  public class AnalyzeRecipeRequest {
    /// <summary>
    /// The input language, either \"en\" or \"de\".
    /// </summary>
    /// <value>The input language, either \"en\" or \"de\".</value>
    [DataMember(Name="language", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "language")]
    public string Language { get; set; }

    /// <summary>
    /// Whether nutrition data should be added to correctly parsed ingredients.
    /// </summary>
    /// <value>Whether nutrition data should be added to correctly parsed ingredients.</value>
    [DataMember(Name="includeNutrition", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "includeNutrition")]
    public bool? IncludeNutrition { get; set; }

    /// <summary>
    /// Whether taste data should be added to correctly parsed ingredients.
    /// </summary>
    /// <value>Whether taste data should be added to correctly parsed ingredients.</value>
    [DataMember(Name="includeTaste", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "includeTaste")]
    public bool? IncludeTaste { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class AnalyzeRecipeRequest {\n");
      sb.Append("  Language: ").Append(Language).Append("\n");
      sb.Append("  IncludeNutrition: ").Append(IncludeNutrition).Append("\n");
      sb.Append("  IncludeTaste: ").Append(IncludeTaste).Append("\n");
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

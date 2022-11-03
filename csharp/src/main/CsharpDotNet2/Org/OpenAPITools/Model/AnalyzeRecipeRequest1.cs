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
  public class AnalyzeRecipeRequest1 {
    /// <summary>
    /// Gets or Sets Title
    /// </summary>
    [DataMember(Name="title", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "title")]
    public string Title { get; set; }

    /// <summary>
    /// Gets or Sets Servings
    /// </summary>
    [DataMember(Name="servings", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "servings")]
    public int? Servings { get; set; }

    /// <summary>
    /// Gets or Sets Ingredients
    /// </summary>
    [DataMember(Name="ingredients", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredients")]
    public List<string> Ingredients { get; set; }

    /// <summary>
    /// Gets or Sets Instructions
    /// </summary>
    [DataMember(Name="instructions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "instructions")]
    public string Instructions { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class AnalyzeRecipeRequest1 {\n");
      sb.Append("  Title: ").Append(Title).Append("\n");
      sb.Append("  Servings: ").Append(Servings).Append("\n");
      sb.Append("  Ingredients: ").Append(Ingredients).Append("\n");
      sb.Append("  Instructions: ").Append(Instructions).Append("\n");
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

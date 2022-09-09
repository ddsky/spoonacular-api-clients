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
  public class AnalyzeRecipeInstructions200Response {
    /// <summary>
    /// Gets or Sets ParsedInstructions
    /// </summary>
    [DataMember(Name="parsedInstructions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "parsedInstructions")]
    public List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInner> ParsedInstructions { get; set; }

    /// <summary>
    /// Gets or Sets Ingredients
    /// </summary>
    [DataMember(Name="ingredients", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredients")]
    public List<AnalyzeRecipeInstructions200ResponseIngredientsInner> Ingredients { get; set; }

    /// <summary>
    /// Gets or Sets Equipment
    /// </summary>
    [DataMember(Name="equipment", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "equipment")]
    public List<AnalyzeRecipeInstructions200ResponseIngredientsInner> Equipment { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class AnalyzeRecipeInstructions200Response {\n");
      sb.Append("  ParsedInstructions: ").Append(ParsedInstructions).Append("\n");
      sb.Append("  Ingredients: ").Append(Ingredients).Append("\n");
      sb.Append("  Equipment: ").Append(Equipment).Append("\n");
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

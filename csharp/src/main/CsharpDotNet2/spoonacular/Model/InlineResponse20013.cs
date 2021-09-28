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
  public class InlineResponse20013 {
    /// <summary>
    /// Gets or Sets ParsedInstructions
    /// </summary>
    [DataMember(Name="parsedInstructions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "parsedInstructions")]
    public List<InlineResponse20013ParsedInstructions> ParsedInstructions { get; set; }

    /// <summary>
    /// Gets or Sets Ingredients
    /// </summary>
    [DataMember(Name="ingredients", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredients")]
    public List<InlineResponse20013Ingredients1> Ingredients { get; set; }

    /// <summary>
    /// Gets or Sets Equipment
    /// </summary>
    [DataMember(Name="equipment", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "equipment")]
    public List<InlineResponse20013Ingredients1> Equipment { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20013 {\n");
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
      return JsonConvert.SerializeObject(this, Formatting.Indented);
    }

}
}

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
  public class InlineResponse20018 {
    /// <summary>
    /// Gets or Sets Dishes
    /// </summary>
    [DataMember(Name="dishes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "dishes")]
    public List<InlineResponse20018Dishes> Dishes { get; set; }

    /// <summary>
    /// Gets or Sets Ingredients
    /// </summary>
    [DataMember(Name="ingredients", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredients")]
    public List<InlineResponse20018Ingredients> Ingredients { get; set; }

    /// <summary>
    /// Gets or Sets Cuisines
    /// </summary>
    [DataMember(Name="cuisines", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "cuisines")]
    public List<string> Cuisines { get; set; }

    /// <summary>
    /// Gets or Sets Modifiers
    /// </summary>
    [DataMember(Name="modifiers", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "modifiers")]
    public List<string> Modifiers { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20018 {\n");
      sb.Append("  Dishes: ").Append(Dishes).Append("\n");
      sb.Append("  Ingredients: ").Append(Ingredients).Append("\n");
      sb.Append("  Cuisines: ").Append(Cuisines).Append("\n");
      sb.Append("  Modifiers: ").Append(Modifiers).Append("\n");
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

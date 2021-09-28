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
  public class InlineResponse20010 {
    /// <summary>
    /// Gets or Sets Ingredients
    /// </summary>
    [DataMember(Name="ingredients", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredients")]
    public List<InlineResponse20010Ingredients> Ingredients { get; set; }

    /// <summary>
    /// Gets or Sets TotalCost
    /// </summary>
    [DataMember(Name="totalCost", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "totalCost")]
    public decimal? TotalCost { get; set; }

    /// <summary>
    /// Gets or Sets TotalCostPerServing
    /// </summary>
    [DataMember(Name="totalCostPerServing", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "totalCostPerServing")]
    public decimal? TotalCostPerServing { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20010 {\n");
      sb.Append("  Ingredients: ").Append(Ingredients).Append("\n");
      sb.Append("  TotalCost: ").Append(TotalCost).Append("\n");
      sb.Append("  TotalCostPerServing: ").Append(TotalCostPerServing).Append("\n");
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

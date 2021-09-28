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
  public class InlineResponse20012 {
    /// <summary>
    /// Gets or Sets Calories
    /// </summary>
    [DataMember(Name="calories", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "calories")]
    public string Calories { get; set; }

    /// <summary>
    /// Gets or Sets Carbs
    /// </summary>
    [DataMember(Name="carbs", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "carbs")]
    public string Carbs { get; set; }

    /// <summary>
    /// Gets or Sets Fat
    /// </summary>
    [DataMember(Name="fat", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fat")]
    public string Fat { get; set; }

    /// <summary>
    /// Gets or Sets Protein
    /// </summary>
    [DataMember(Name="protein", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "protein")]
    public string Protein { get; set; }

    /// <summary>
    /// Gets or Sets Bad
    /// </summary>
    [DataMember(Name="bad", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "bad")]
    public List<Object> Bad { get; set; }

    /// <summary>
    /// Gets or Sets Good
    /// </summary>
    [DataMember(Name="good", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "good")]
    public List<Object> Good { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20012 {\n");
      sb.Append("  Calories: ").Append(Calories).Append("\n");
      sb.Append("  Carbs: ").Append(Carbs).Append("\n");
      sb.Append("  Fat: ").Append(Fat).Append("\n");
      sb.Append("  Protein: ").Append(Protein).Append("\n");
      sb.Append("  Bad: ").Append(Bad).Append("\n");
      sb.Append("  Good: ").Append(Good).Append("\n");
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

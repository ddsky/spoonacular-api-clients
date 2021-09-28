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
  public class InlineResponse2003MeasuresMetric {
    /// <summary>
    /// Gets or Sets Amount
    /// </summary>
    [DataMember(Name="amount", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "amount")]
    public decimal? Amount { get; set; }

    /// <summary>
    /// Gets or Sets UnitLong
    /// </summary>
    [DataMember(Name="unitLong", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "unitLong")]
    public string UnitLong { get; set; }

    /// <summary>
    /// Gets or Sets UnitShort
    /// </summary>
    [DataMember(Name="unitShort", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "unitShort")]
    public string UnitShort { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse2003MeasuresMetric {\n");
      sb.Append("  Amount: ").Append(Amount).Append("\n");
      sb.Append("  UnitLong: ").Append(UnitLong).Append("\n");
      sb.Append("  UnitShort: ").Append(UnitShort).Append("\n");
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

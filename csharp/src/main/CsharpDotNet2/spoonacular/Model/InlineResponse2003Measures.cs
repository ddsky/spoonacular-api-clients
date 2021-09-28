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
  public class InlineResponse2003Measures {
    /// <summary>
    /// Gets or Sets Metric
    /// </summary>
    [DataMember(Name="metric", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "metric")]
    public InlineResponse2003MeasuresMetric Metric { get; set; }

    /// <summary>
    /// Gets or Sets Us
    /// </summary>
    [DataMember(Name="us", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "us")]
    public InlineResponse2003MeasuresMetric Us { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse2003Measures {\n");
      sb.Append("  Metric: ").Append(Metric).Append("\n");
      sb.Append("  Us: ").Append(Us).Append("\n");
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

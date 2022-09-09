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
  public class GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures {
    /// <summary>
    /// Gets or Sets Metric
    /// </summary>
    [DataMember(Name="metric", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "metric")]
    public GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric Metric { get; set; }

    /// <summary>
    /// Gets or Sets Us
    /// </summary>
    [DataMember(Name="us", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "us")]
    public GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric Us { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures {\n");
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
      return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
    }

}
}

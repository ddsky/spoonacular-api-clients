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
  public class GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent {
    /// <summary>
    /// Gets or Sets Max
    /// </summary>
    [DataMember(Name="max", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "max")]
    public decimal? Max { get; set; }

    /// <summary>
    /// Gets or Sets Min
    /// </summary>
    [DataMember(Name="min", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "min")]
    public decimal? Min { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent {\n");
      sb.Append("  Max: ").Append(Max).Append("\n");
      sb.Append("  Min: ").Append(Min).Append("\n");
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

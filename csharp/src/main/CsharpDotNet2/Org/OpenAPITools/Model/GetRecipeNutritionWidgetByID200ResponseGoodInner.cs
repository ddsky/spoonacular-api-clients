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
  public class GetRecipeNutritionWidgetByID200ResponseGoodInner {
    /// <summary>
    /// Gets or Sets Amount
    /// </summary>
    [DataMember(Name="amount", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "amount")]
    public string Amount { get; set; }

    /// <summary>
    /// Gets or Sets Indented
    /// </summary>
    [DataMember(Name="indented", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "indented")]
    public bool? Indented { get; set; }

    /// <summary>
    /// Gets or Sets PercentOfDailyNeeds
    /// </summary>
    [DataMember(Name="percentOfDailyNeeds", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "percentOfDailyNeeds")]
    public decimal? PercentOfDailyNeeds { get; set; }

    /// <summary>
    /// Gets or Sets Name
    /// </summary>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GetRecipeNutritionWidgetByID200ResponseGoodInner {\n");
      sb.Append("  Amount: ").Append(Amount).Append("\n");
      sb.Append("  Indented: ").Append(Indented).Append("\n");
      sb.Append("  PercentOfDailyNeeds: ").Append(PercentOfDailyNeeds).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
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

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
  public class InlineResponse20041Days {
    /// <summary>
    /// Gets or Sets NutritionSummary
    /// </summary>
    [DataMember(Name="nutritionSummary", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "nutritionSummary")]
    public InlineResponse20038NutritionSummary NutritionSummary { get; set; }

    /// <summary>
    /// Gets or Sets NutritionSummaryBreakfast
    /// </summary>
    [DataMember(Name="nutritionSummaryBreakfast", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "nutritionSummaryBreakfast")]
    public InlineResponse20038NutritionSummary NutritionSummaryBreakfast { get; set; }

    /// <summary>
    /// Gets or Sets NutritionSummaryLunch
    /// </summary>
    [DataMember(Name="nutritionSummaryLunch", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "nutritionSummaryLunch")]
    public InlineResponse20038NutritionSummary NutritionSummaryLunch { get; set; }

    /// <summary>
    /// Gets or Sets NutritionSummaryDinner
    /// </summary>
    [DataMember(Name="nutritionSummaryDinner", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "nutritionSummaryDinner")]
    public InlineResponse20038NutritionSummary NutritionSummaryDinner { get; set; }

    /// <summary>
    /// Gets or Sets Day
    /// </summary>
    [DataMember(Name="day", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "day")]
    public string Day { get; set; }

    /// <summary>
    /// Gets or Sets Items
    /// </summary>
    [DataMember(Name="items", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "items")]
    public List<InlineResponse20041Items> Items { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20041Days {\n");
      sb.Append("  NutritionSummary: ").Append(NutritionSummary).Append("\n");
      sb.Append("  NutritionSummaryBreakfast: ").Append(NutritionSummaryBreakfast).Append("\n");
      sb.Append("  NutritionSummaryLunch: ").Append(NutritionSummaryLunch).Append("\n");
      sb.Append("  NutritionSummaryDinner: ").Append(NutritionSummaryDinner).Append("\n");
      sb.Append("  Day: ").Append(Day).Append("\n");
      sb.Append("  Items: ").Append(Items).Append("\n");
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

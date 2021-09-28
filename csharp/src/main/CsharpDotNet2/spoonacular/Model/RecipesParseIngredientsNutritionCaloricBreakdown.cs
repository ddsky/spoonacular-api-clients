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
  public class RecipesParseIngredientsNutritionCaloricBreakdown {
    /// <summary>
    /// Gets or Sets PercentProtein
    /// </summary>
    [DataMember(Name="percentProtein", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "percentProtein")]
    public decimal? PercentProtein { get; set; }

    /// <summary>
    /// Gets or Sets PercentFat
    /// </summary>
    [DataMember(Name="percentFat", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "percentFat")]
    public decimal? PercentFat { get; set; }

    /// <summary>
    /// Gets or Sets PercentCarbs
    /// </summary>
    [DataMember(Name="percentCarbs", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "percentCarbs")]
    public decimal? PercentCarbs { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class RecipesParseIngredientsNutritionCaloricBreakdown {\n");
      sb.Append("  PercentProtein: ").Append(PercentProtein).Append("\n");
      sb.Append("  PercentFat: ").Append(PercentFat).Append("\n");
      sb.Append("  PercentCarbs: ").Append(PercentCarbs).Append("\n");
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

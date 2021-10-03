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
  public class InlineResponse20049Nutrition {
    /// <summary>
    /// Gets or Sets RecipesUsed
    /// </summary>
    [DataMember(Name="recipesUsed", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "recipesUsed")]
    public int? RecipesUsed { get; set; }

    /// <summary>
    /// Gets or Sets Calories
    /// </summary>
    [DataMember(Name="calories", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "calories")]
    public InlineResponse20049NutritionCalories Calories { get; set; }

    /// <summary>
    /// Gets or Sets Fat
    /// </summary>
    [DataMember(Name="fat", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fat")]
    public InlineResponse20049NutritionCalories Fat { get; set; }

    /// <summary>
    /// Gets or Sets Protein
    /// </summary>
    [DataMember(Name="protein", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "protein")]
    public InlineResponse20049NutritionCalories Protein { get; set; }

    /// <summary>
    /// Gets or Sets Carbs
    /// </summary>
    [DataMember(Name="carbs", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "carbs")]
    public InlineResponse20049NutritionCalories Carbs { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20049Nutrition {\n");
      sb.Append("  RecipesUsed: ").Append(RecipesUsed).Append("\n");
      sb.Append("  Calories: ").Append(Calories).Append("\n");
      sb.Append("  Fat: ").Append(Fat).Append("\n");
      sb.Append("  Protein: ").Append(Protein).Append("\n");
      sb.Append("  Carbs: ").Append(Carbs).Append("\n");
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

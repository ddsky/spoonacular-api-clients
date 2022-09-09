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
  public class GuessNutritionByDishName200Response {
    /// <summary>
    /// Gets or Sets Calories
    /// </summary>
    [DataMember(Name="calories", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "calories")]
    public GuessNutritionByDishName200ResponseCalories Calories { get; set; }

    /// <summary>
    /// Gets or Sets Carbs
    /// </summary>
    [DataMember(Name="carbs", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "carbs")]
    public GuessNutritionByDishName200ResponseCalories Carbs { get; set; }

    /// <summary>
    /// Gets or Sets Fat
    /// </summary>
    [DataMember(Name="fat", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fat")]
    public GuessNutritionByDishName200ResponseCalories Fat { get; set; }

    /// <summary>
    /// Gets or Sets Protein
    /// </summary>
    [DataMember(Name="protein", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "protein")]
    public GuessNutritionByDishName200ResponseCalories Protein { get; set; }

    /// <summary>
    /// Gets or Sets RecipesUsed
    /// </summary>
    [DataMember(Name="recipesUsed", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "recipesUsed")]
    public int? RecipesUsed { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GuessNutritionByDishName200Response {\n");
      sb.Append("  Calories: ").Append(Calories).Append("\n");
      sb.Append("  Carbs: ").Append(Carbs).Append("\n");
      sb.Append("  Fat: ").Append(Fat).Append("\n");
      sb.Append("  Protein: ").Append(Protein).Append("\n");
      sb.Append("  RecipesUsed: ").Append(RecipesUsed).Append("\n");
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

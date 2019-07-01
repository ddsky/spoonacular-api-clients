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
  public class InlineObject6 {
    /// <summary>
    /// The ingredient list of the recipe, one ingredient per line.
    /// </summary>
    /// <value>The ingredient list of the recipe, one ingredient per line.</value>
    [DataMember(Name="ingredientList", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredientList")]
    public string IngredientList { get; set; }

    /// <summary>
    /// The number of servings that you can make from the ingredients.
    /// </summary>
    /// <value>The number of servings that you can make from the ingredients.</value>
    [DataMember(Name="servings", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "servings")]
    public decimal? Servings { get; set; }

    /// <summary>
    /// Whether nutrition data should be added to correctly parsed ingredients.
    /// </summary>
    /// <value>Whether nutrition data should be added to correctly parsed ingredients.</value>
    [DataMember(Name="includeNutrition", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "includeNutrition")]
    public bool? IncludeNutrition { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineObject6 {\n");
      sb.Append("  IngredientList: ").Append(IngredientList).Append("\n");
      sb.Append("  Servings: ").Append(Servings).Append("\n");
      sb.Append("  IncludeNutrition: ").Append(IncludeNutrition).Append("\n");
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

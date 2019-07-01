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
  public class InlineObject {
    /// <summary>
    /// The ingredient list of the recipe, one ingredient per line.
    /// </summary>
    /// <value>The ingredient list of the recipe, one ingredient per line.</value>
    [DataMember(Name="ingredientList", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredientList")]
    public string IngredientList { get; set; }

    /// <summary>
    /// The number of servings.
    /// </summary>
    /// <value>The number of servings.</value>
    [DataMember(Name="servings", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "servings")]
    public decimal? Servings { get; set; }

    /// <summary>
    /// Whether the default CSS should be added to the response.
    /// </summary>
    /// <value>Whether the default CSS should be added to the response.</value>
    [DataMember(Name="defaultCss", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "defaultCss")]
    public bool? DefaultCss { get; set; }

    /// <summary>
    /// Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
    /// </summary>
    /// <value>Whether to show a backlink to spoonacular. If set false, this call counts against your quota.</value>
    [DataMember(Name="showBacklink", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "showBacklink")]
    public bool? ShowBacklink { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineObject {\n");
      sb.Append("  IngredientList: ").Append(IngredientList).Append("\n");
      sb.Append("  Servings: ").Append(Servings).Append("\n");
      sb.Append("  DefaultCss: ").Append(DefaultCss).Append("\n");
      sb.Append("  ShowBacklink: ").Append(ShowBacklink).Append("\n");
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

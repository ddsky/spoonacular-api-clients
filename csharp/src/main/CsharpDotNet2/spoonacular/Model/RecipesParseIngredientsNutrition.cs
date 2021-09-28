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
  public class RecipesParseIngredientsNutrition {
    /// <summary>
    /// Gets or Sets Nutrients
    /// </summary>
    [DataMember(Name="nutrients", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "nutrients")]
    public List<RecipesParseIngredientsNutritionNutrients> Nutrients { get; set; }

    /// <summary>
    /// Gets or Sets Properties
    /// </summary>
    [DataMember(Name="properties", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "properties")]
    public List<RecipesParseIngredientsNutritionProperties> Properties { get; set; }

    /// <summary>
    /// Gets or Sets Flavonoids
    /// </summary>
    [DataMember(Name="flavonoids", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "flavonoids")]
    public List<RecipesParseIngredientsNutritionProperties> Flavonoids { get; set; }

    /// <summary>
    /// Gets or Sets CaloricBreakdown
    /// </summary>
    [DataMember(Name="caloricBreakdown", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "caloricBreakdown")]
    public RecipesParseIngredientsNutritionCaloricBreakdown CaloricBreakdown { get; set; }

    /// <summary>
    /// Gets or Sets WeightPerServing
    /// </summary>
    [DataMember(Name="weightPerServing", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "weightPerServing")]
    public RecipesParseIngredientsNutritionWeightPerServing WeightPerServing { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class RecipesParseIngredientsNutrition {\n");
      sb.Append("  Nutrients: ").Append(Nutrients).Append("\n");
      sb.Append("  Properties: ").Append(Properties).Append("\n");
      sb.Append("  Flavonoids: ").Append(Flavonoids).Append("\n");
      sb.Append("  CaloricBreakdown: ").Append(CaloricBreakdown).Append("\n");
      sb.Append("  WeightPerServing: ").Append(WeightPerServing).Append("\n");
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

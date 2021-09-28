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
  public class InlineResponse20019 {
    /// <summary>
    /// Gets or Sets SourceAmount
    /// </summary>
    [DataMember(Name="sourceAmount", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "sourceAmount")]
    public decimal? SourceAmount { get; set; }

    /// <summary>
    /// Gets or Sets SourceUnit
    /// </summary>
    [DataMember(Name="sourceUnit", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "sourceUnit")]
    public string SourceUnit { get; set; }

    /// <summary>
    /// Gets or Sets TargetAmount
    /// </summary>
    [DataMember(Name="targetAmount", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "targetAmount")]
    public decimal? TargetAmount { get; set; }

    /// <summary>
    /// Gets or Sets TargetUnit
    /// </summary>
    [DataMember(Name="targetUnit", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "targetUnit")]
    public string TargetUnit { get; set; }

    /// <summary>
    /// Gets or Sets Answer
    /// </summary>
    [DataMember(Name="answer", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "answer")]
    public string Answer { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20019 {\n");
      sb.Append("  SourceAmount: ").Append(SourceAmount).Append("\n");
      sb.Append("  SourceUnit: ").Append(SourceUnit).Append("\n");
      sb.Append("  TargetAmount: ").Append(TargetAmount).Append("\n");
      sb.Append("  TargetUnit: ").Append(TargetUnit).Append("\n");
      sb.Append("  Answer: ").Append(Answer).Append("\n");
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

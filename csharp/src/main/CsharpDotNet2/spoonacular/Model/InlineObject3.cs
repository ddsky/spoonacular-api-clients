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
  public class InlineObject3 {
    /// <summary>
    /// The title of the recipe.
    /// </summary>
    /// <value>The title of the recipe.</value>
    [DataMember(Name="title", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "title")]
    public string Title { get; set; }

    /// <summary>
    /// The binary image of the recipe as jpg.
    /// </summary>
    /// <value>The binary image of the recipe as jpg.</value>
    [DataMember(Name="image", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "image")]
    public System.IO.Stream Image { get; set; }

    /// <summary>
    /// The ingredient list of the recipe, one ingredient per line (separate lines with \\n).
    /// </summary>
    /// <value>The ingredient list of the recipe, one ingredient per line (separate lines with \\n).</value>
    [DataMember(Name="ingredients", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredients")]
    public string Ingredients { get; set; }

    /// <summary>
    /// The instructions to make the recipe. One step per line (separate lines with \\n).
    /// </summary>
    /// <value>The instructions to make the recipe. One step per line (separate lines with \\n).</value>
    [DataMember(Name="instructions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "instructions")]
    public string Instructions { get; set; }

    /// <summary>
    /// The number of minutes it takes to get the recipe on the table.
    /// </summary>
    /// <value>The number of minutes it takes to get the recipe on the table.</value>
    [DataMember(Name="readyInMinutes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "readyInMinutes")]
    public decimal? ReadyInMinutes { get; set; }

    /// <summary>
    /// The number of servings the recipe makes.
    /// </summary>
    /// <value>The number of servings the recipe makes.</value>
    [DataMember(Name="servings", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "servings")]
    public decimal? Servings { get; set; }

    /// <summary>
    /// The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\").
    /// </summary>
    /// <value>The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\").</value>
    [DataMember(Name="mask", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "mask")]
    public string Mask { get; set; }

    /// <summary>
    /// The background image (\"none\",\"background1\", or \"background2\").
    /// </summary>
    /// <value>The background image (\"none\",\"background1\", or \"background2\").</value>
    [DataMember(Name="backgroundImage", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "backgroundImage")]
    public string BackgroundImage { get; set; }

    /// <summary>
    /// The author of the recipe.
    /// </summary>
    /// <value>The author of the recipe.</value>
    [DataMember(Name="author", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "author")]
    public string Author { get; set; }

    /// <summary>
    /// The background color for the recipe card as a hex-string.
    /// </summary>
    /// <value>The background color for the recipe card as a hex-string.</value>
    [DataMember(Name="backgroundColor", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "backgroundColor")]
    public string BackgroundColor { get; set; }

    /// <summary>
    /// The font color for the recipe card as a hex-string.
    /// </summary>
    /// <value>The font color for the recipe card as a hex-string.</value>
    [DataMember(Name="fontColor", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fontColor")]
    public string FontColor { get; set; }

    /// <summary>
    /// The source of the recipe.
    /// </summary>
    /// <value>The source of the recipe.</value>
    [DataMember(Name="source", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "source")]
    public string Source { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineObject3 {\n");
      sb.Append("  Title: ").Append(Title).Append("\n");
      sb.Append("  Image: ").Append(Image).Append("\n");
      sb.Append("  Ingredients: ").Append(Ingredients).Append("\n");
      sb.Append("  Instructions: ").Append(Instructions).Append("\n");
      sb.Append("  ReadyInMinutes: ").Append(ReadyInMinutes).Append("\n");
      sb.Append("  Servings: ").Append(Servings).Append("\n");
      sb.Append("  Mask: ").Append(Mask).Append("\n");
      sb.Append("  BackgroundImage: ").Append(BackgroundImage).Append("\n");
      sb.Append("  Author: ").Append(Author).Append("\n");
      sb.Append("  BackgroundColor: ").Append(BackgroundColor).Append("\n");
      sb.Append("  FontColor: ").Append(FontColor).Append("\n");
      sb.Append("  Source: ").Append(Source).Append("\n");
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

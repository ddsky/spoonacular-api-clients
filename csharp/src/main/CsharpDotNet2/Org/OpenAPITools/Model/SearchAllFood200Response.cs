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
  public class SearchAllFood200Response {
    /// <summary>
    /// Gets or Sets Query
    /// </summary>
    [DataMember(Name="query", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "query")]
    public string Query { get; set; }

    /// <summary>
    /// Gets or Sets TotalResults
    /// </summary>
    [DataMember(Name="totalResults", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "totalResults")]
    public int? TotalResults { get; set; }

    /// <summary>
    /// Gets or Sets Limit
    /// </summary>
    [DataMember(Name="limit", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "limit")]
    public int? Limit { get; set; }

    /// <summary>
    /// Gets or Sets Offset
    /// </summary>
    [DataMember(Name="offset", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "offset")]
    public int? Offset { get; set; }

    /// <summary>
    /// Gets or Sets SearchResults
    /// </summary>
    [DataMember(Name="searchResults", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "searchResults")]
    public List<SearchAllFood200ResponseSearchResultsInner> SearchResults { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SearchAllFood200Response {\n");
      sb.Append("  Query: ").Append(Query).Append("\n");
      sb.Append("  TotalResults: ").Append(TotalResults).Append("\n");
      sb.Append("  Limit: ").Append(Limit).Append("\n");
      sb.Append("  Offset: ").Append(Offset).Append("\n");
      sb.Append("  SearchResults: ").Append(SearchResults).Append("\n");
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

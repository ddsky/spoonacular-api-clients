/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
 * Contact: mail@spoonacular.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = spoonacular.Client.OpenAPIDateConverter;

namespace spoonacular.Model
{
    /// <summary>
    /// SearchAllFood200Response
    /// </summary>
    [DataContract(Name = "searchAllFood_200_response")]
    public partial class SearchAllFood200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchAllFood200Response" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected SearchAllFood200Response() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchAllFood200Response" /> class.
        /// </summary>
        /// <param name="query">query (required).</param>
        /// <param name="totalResults">totalResults (required).</param>
        /// <param name="limit">limit (required).</param>
        /// <param name="offset">offset (required).</param>
        /// <param name="searchResults">searchResults (required).</param>
        public SearchAllFood200Response(string query = default(string), int totalResults = default(int), int limit = default(int), int offset = default(int), List<SearchAllFood200ResponseSearchResultsInner> searchResults = default(List<SearchAllFood200ResponseSearchResultsInner>))
        {
            // to ensure "query" is required (not null)
            if (query == null)
            {
                throw new ArgumentNullException("query is a required property for SearchAllFood200Response and cannot be null");
            }
            this.Query = query;
            this.TotalResults = totalResults;
            this.Limit = limit;
            this.Offset = offset;
            // to ensure "searchResults" is required (not null)
            if (searchResults == null)
            {
                throw new ArgumentNullException("searchResults is a required property for SearchAllFood200Response and cannot be null");
            }
            this.SearchResults = searchResults;
        }

        /// <summary>
        /// Gets or Sets Query
        /// </summary>
        [DataMember(Name = "query", IsRequired = true, EmitDefaultValue = true)]
        public string Query { get; set; }

        /// <summary>
        /// Gets or Sets TotalResults
        /// </summary>
        [DataMember(Name = "totalResults", IsRequired = true, EmitDefaultValue = true)]
        public int TotalResults { get; set; }

        /// <summary>
        /// Gets or Sets Limit
        /// </summary>
        [DataMember(Name = "limit", IsRequired = true, EmitDefaultValue = true)]
        public int Limit { get; set; }

        /// <summary>
        /// Gets or Sets Offset
        /// </summary>
        [DataMember(Name = "offset", IsRequired = true, EmitDefaultValue = true)]
        public int Offset { get; set; }

        /// <summary>
        /// Gets or Sets SearchResults
        /// </summary>
        [DataMember(Name = "searchResults", IsRequired = true, EmitDefaultValue = true)]
        public List<SearchAllFood200ResponseSearchResultsInner> SearchResults { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
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
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            // Query (string) minLength
            if (this.Query != null && this.Query.Length < 1)
            {
                yield return new ValidationResult("Invalid value for Query, length must be greater than 1.", new [] { "Query" });
            }

            yield break;
        }
    }

}

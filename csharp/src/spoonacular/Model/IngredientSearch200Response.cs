/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
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
    /// IngredientSearch200Response
    /// </summary>
    [DataContract(Name = "ingredientSearch_200_response")]
    public partial class IngredientSearch200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="IngredientSearch200Response" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected IngredientSearch200Response() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="IngredientSearch200Response" /> class.
        /// </summary>
        /// <param name="results">results (required).</param>
        /// <param name="offset">offset (required).</param>
        /// <param name="number">number (required).</param>
        /// <param name="totalResults">totalResults (required).</param>
        public IngredientSearch200Response(List<IngredientSearch200ResponseResultsInner> results = default(List<IngredientSearch200ResponseResultsInner>), int offset = default(int), int number = default(int), int totalResults = default(int))
        {
            // to ensure "results" is required (not null)
            if (results == null)
            {
                throw new ArgumentNullException("results is a required property for IngredientSearch200Response and cannot be null");
            }
            this.Results = results;
            this.Offset = offset;
            this.Number = number;
            this.TotalResults = totalResults;
        }

        /// <summary>
        /// Gets or Sets Results
        /// </summary>
        [DataMember(Name = "results", IsRequired = true, EmitDefaultValue = true)]
        public List<IngredientSearch200ResponseResultsInner> Results { get; set; }

        /// <summary>
        /// Gets or Sets Offset
        /// </summary>
        [DataMember(Name = "offset", IsRequired = true, EmitDefaultValue = true)]
        public int Offset { get; set; }

        /// <summary>
        /// Gets or Sets Number
        /// </summary>
        [DataMember(Name = "number", IsRequired = true, EmitDefaultValue = true)]
        public int Number { get; set; }

        /// <summary>
        /// Gets or Sets TotalResults
        /// </summary>
        [DataMember(Name = "totalResults", IsRequired = true, EmitDefaultValue = true)]
        public int TotalResults { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class IngredientSearch200Response {\n");
            sb.Append("  Results: ").Append(Results).Append("\n");
            sb.Append("  Offset: ").Append(Offset).Append("\n");
            sb.Append("  Number: ").Append(Number).Append("\n");
            sb.Append("  TotalResults: ").Append(TotalResults).Append("\n");
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
            yield break;
        }
    }

}

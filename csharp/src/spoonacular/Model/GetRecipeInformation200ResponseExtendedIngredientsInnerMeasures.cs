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
    /// GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures
    /// </summary>
    [DataContract(Name = "getRecipeInformation_200_response_extendedIngredients_inner_measures")]
    public partial class GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures" /> class.
        /// </summary>
        /// <param name="metric">metric (required).</param>
        /// <param name="us">us (required).</param>
        public GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures(GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric metric = default(GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric), GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric us = default(GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric))
        {
            // to ensure "metric" is required (not null)
            if (metric == null)
            {
                throw new ArgumentNullException("metric is a required property for GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures and cannot be null");
            }
            this.Metric = metric;
            // to ensure "us" is required (not null)
            if (us == null)
            {
                throw new ArgumentNullException("us is a required property for GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures and cannot be null");
            }
            this.Us = us;
        }

        /// <summary>
        /// Gets or Sets Metric
        /// </summary>
        [DataMember(Name = "metric", IsRequired = true, EmitDefaultValue = true)]
        public GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric Metric { get; set; }

        /// <summary>
        /// Gets or Sets Us
        /// </summary>
        [DataMember(Name = "us", IsRequired = true, EmitDefaultValue = true)]
        public GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric Us { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures {\n");
            sb.Append("  Metric: ").Append(Metric).Append("\n");
            sb.Append("  Us: ").Append(Us).Append("\n");
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

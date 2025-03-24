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
    /// AnalyzeARecipeSearchQuery200Response
    /// </summary>
    [DataContract(Name = "analyzeARecipeSearchQuery_200_response")]
    public partial class AnalyzeARecipeSearchQuery200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="AnalyzeARecipeSearchQuery200Response" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected AnalyzeARecipeSearchQuery200Response() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="AnalyzeARecipeSearchQuery200Response" /> class.
        /// </summary>
        /// <param name="dishes">dishes (required).</param>
        /// <param name="ingredients">ingredients (required).</param>
        /// <param name="cuisines">cuisines (required).</param>
        /// <param name="modifiers">modifiers (required).</param>
        public AnalyzeARecipeSearchQuery200Response(List<AnalyzeARecipeSearchQuery200ResponseDishesInner> dishes = default(List<AnalyzeARecipeSearchQuery200ResponseDishesInner>), List<AnalyzeARecipeSearchQuery200ResponseIngredientsInner> ingredients = default(List<AnalyzeARecipeSearchQuery200ResponseIngredientsInner>), List<string> cuisines = default(List<string>), List<string> modifiers = default(List<string>))
        {
            // to ensure "dishes" is required (not null)
            if (dishes == null)
            {
                throw new ArgumentNullException("dishes is a required property for AnalyzeARecipeSearchQuery200Response and cannot be null");
            }
            this.Dishes = dishes;
            // to ensure "ingredients" is required (not null)
            if (ingredients == null)
            {
                throw new ArgumentNullException("ingredients is a required property for AnalyzeARecipeSearchQuery200Response and cannot be null");
            }
            this.Ingredients = ingredients;
            // to ensure "cuisines" is required (not null)
            if (cuisines == null)
            {
                throw new ArgumentNullException("cuisines is a required property for AnalyzeARecipeSearchQuery200Response and cannot be null");
            }
            this.Cuisines = cuisines;
            // to ensure "modifiers" is required (not null)
            if (modifiers == null)
            {
                throw new ArgumentNullException("modifiers is a required property for AnalyzeARecipeSearchQuery200Response and cannot be null");
            }
            this.Modifiers = modifiers;
        }

        /// <summary>
        /// Gets or Sets Dishes
        /// </summary>
        [DataMember(Name = "dishes", IsRequired = true, EmitDefaultValue = true)]
        public List<AnalyzeARecipeSearchQuery200ResponseDishesInner> Dishes { get; set; }

        /// <summary>
        /// Gets or Sets Ingredients
        /// </summary>
        [DataMember(Name = "ingredients", IsRequired = true, EmitDefaultValue = true)]
        public List<AnalyzeARecipeSearchQuery200ResponseIngredientsInner> Ingredients { get; set; }

        /// <summary>
        /// Gets or Sets Cuisines
        /// </summary>
        [DataMember(Name = "cuisines", IsRequired = true, EmitDefaultValue = true)]
        public List<string> Cuisines { get; set; }

        /// <summary>
        /// Gets or Sets Modifiers
        /// </summary>
        [DataMember(Name = "modifiers", IsRequired = true, EmitDefaultValue = true)]
        public List<string> Modifiers { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class AnalyzeARecipeSearchQuery200Response {\n");
            sb.Append("  Dishes: ").Append(Dishes).Append("\n");
            sb.Append("  Ingredients: ").Append(Ingredients).Append("\n");
            sb.Append("  Cuisines: ").Append(Cuisines).Append("\n");
            sb.Append("  Modifiers: ").Append(Modifiers).Append("\n");
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

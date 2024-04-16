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
    /// GenerateMealPlan200Response
    /// </summary>
    [DataContract(Name = "generateMealPlan_200_response")]
    public partial class GenerateMealPlan200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="GenerateMealPlan200Response" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected GenerateMealPlan200Response() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="GenerateMealPlan200Response" /> class.
        /// </summary>
        /// <param name="meals">meals (required).</param>
        /// <param name="nutrients">nutrients (required).</param>
        public GenerateMealPlan200Response(List<GetSimilarRecipes200ResponseInner> meals = default(List<GetSimilarRecipes200ResponseInner>), GenerateMealPlan200ResponseNutrients nutrients = default(GenerateMealPlan200ResponseNutrients))
        {
            // to ensure "meals" is required (not null)
            if (meals == null)
            {
                throw new ArgumentNullException("meals is a required property for GenerateMealPlan200Response and cannot be null");
            }
            this.Meals = meals;
            // to ensure "nutrients" is required (not null)
            if (nutrients == null)
            {
                throw new ArgumentNullException("nutrients is a required property for GenerateMealPlan200Response and cannot be null");
            }
            this.Nutrients = nutrients;
        }

        /// <summary>
        /// Gets or Sets Meals
        /// </summary>
        [DataMember(Name = "meals", IsRequired = true, EmitDefaultValue = true)]
        public List<GetSimilarRecipes200ResponseInner> Meals { get; set; }

        /// <summary>
        /// Gets or Sets Nutrients
        /// </summary>
        [DataMember(Name = "nutrients", IsRequired = true, EmitDefaultValue = true)]
        public GenerateMealPlan200ResponseNutrients Nutrients { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class GenerateMealPlan200Response {\n");
            sb.Append("  Meals: ").Append(Meals).Append("\n");
            sb.Append("  Nutrients: ").Append(Nutrients).Append("\n");
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
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
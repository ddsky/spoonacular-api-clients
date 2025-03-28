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
    /// IngredientInformationNutrition
    /// </summary>
    [DataContract(Name = "IngredientInformation_nutrition")]
    public partial class IngredientInformationNutrition : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="IngredientInformationNutrition" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected IngredientInformationNutrition() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="IngredientInformationNutrition" /> class.
        /// </summary>
        /// <param name="nutrients">nutrients (required).</param>
        /// <param name="properties">properties (required).</param>
        /// <param name="caloricBreakdown">caloricBreakdown (required).</param>
        /// <param name="weightPerServing">weightPerServing (required).</param>
        public IngredientInformationNutrition(List<SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner> nutrients = default(List<SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner>), List<IngredientInformationNutritionPropertiesInner> properties = default(List<IngredientInformationNutritionPropertiesInner>), SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown caloricBreakdown = default(SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown), GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal weightPerServing = default(GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal))
        {
            // to ensure "nutrients" is required (not null)
            if (nutrients == null)
            {
                throw new ArgumentNullException("nutrients is a required property for IngredientInformationNutrition and cannot be null");
            }
            this.Nutrients = nutrients;
            // to ensure "properties" is required (not null)
            if (properties == null)
            {
                throw new ArgumentNullException("properties is a required property for IngredientInformationNutrition and cannot be null");
            }
            this.Properties = properties;
            // to ensure "caloricBreakdown" is required (not null)
            if (caloricBreakdown == null)
            {
                throw new ArgumentNullException("caloricBreakdown is a required property for IngredientInformationNutrition and cannot be null");
            }
            this.CaloricBreakdown = caloricBreakdown;
            // to ensure "weightPerServing" is required (not null)
            if (weightPerServing == null)
            {
                throw new ArgumentNullException("weightPerServing is a required property for IngredientInformationNutrition and cannot be null");
            }
            this.WeightPerServing = weightPerServing;
        }

        /// <summary>
        /// Gets or Sets Nutrients
        /// </summary>
        [DataMember(Name = "nutrients", IsRequired = true, EmitDefaultValue = true)]
        public List<SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner> Nutrients { get; set; }

        /// <summary>
        /// Gets or Sets Properties
        /// </summary>
        [DataMember(Name = "properties", IsRequired = true, EmitDefaultValue = true)]
        public List<IngredientInformationNutritionPropertiesInner> Properties { get; set; }

        /// <summary>
        /// Gets or Sets CaloricBreakdown
        /// </summary>
        [DataMember(Name = "caloricBreakdown", IsRequired = true, EmitDefaultValue = true)]
        public SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown CaloricBreakdown { get; set; }

        /// <summary>
        /// Gets or Sets WeightPerServing
        /// </summary>
        [DataMember(Name = "weightPerServing", IsRequired = true, EmitDefaultValue = true)]
        public GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal WeightPerServing { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class IngredientInformationNutrition {\n");
            sb.Append("  Nutrients: ").Append(Nutrients).Append("\n");
            sb.Append("  Properties: ").Append(Properties).Append("\n");
            sb.Append("  CaloricBreakdown: ").Append(CaloricBreakdown).Append("\n");
            sb.Append("  WeightPerServing: ").Append(WeightPerServing).Append("\n");
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

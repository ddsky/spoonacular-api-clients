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
    /// GetShoppingList200ResponseAislesInnerItemsInner
    /// </summary>
    [DataContract(Name = "getShoppingList_200_response_aisles_inner_items_inner")]
    public partial class GetShoppingList200ResponseAislesInnerItemsInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="GetShoppingList200ResponseAislesInnerItemsInner" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected GetShoppingList200ResponseAislesInnerItemsInner() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="GetShoppingList200ResponseAislesInnerItemsInner" /> class.
        /// </summary>
        /// <param name="id">id (required).</param>
        /// <param name="name">name (required).</param>
        /// <param name="measures">measures.</param>
        /// <param name="pantryItem">pantryItem (required).</param>
        /// <param name="aisle">aisle (required).</param>
        /// <param name="cost">cost (required).</param>
        /// <param name="ingredientId">ingredientId (required).</param>
        public GetShoppingList200ResponseAislesInnerItemsInner(int id = default(int), string name = default(string), GetShoppingList200ResponseAislesInnerItemsInnerMeasures measures = default(GetShoppingList200ResponseAislesInnerItemsInnerMeasures), bool pantryItem = default(bool), string aisle = default(string), decimal cost = default(decimal), int ingredientId = default(int))
        {
            this.Id = id;
            // to ensure "name" is required (not null)
            if (name == null)
            {
                throw new ArgumentNullException("name is a required property for GetShoppingList200ResponseAislesInnerItemsInner and cannot be null");
            }
            this.Name = name;
            this.PantryItem = pantryItem;
            // to ensure "aisle" is required (not null)
            if (aisle == null)
            {
                throw new ArgumentNullException("aisle is a required property for GetShoppingList200ResponseAislesInnerItemsInner and cannot be null");
            }
            this.Aisle = aisle;
            this.Cost = cost;
            this.IngredientId = ingredientId;
            this.Measures = measures;
        }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", IsRequired = true, EmitDefaultValue = true)]
        public int Id { get; set; }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name = "name", IsRequired = true, EmitDefaultValue = true)]
        public string Name { get; set; }

        /// <summary>
        /// Gets or Sets Measures
        /// </summary>
        [DataMember(Name = "measures", EmitDefaultValue = false)]
        public GetShoppingList200ResponseAislesInnerItemsInnerMeasures Measures { get; set; }

        /// <summary>
        /// Gets or Sets PantryItem
        /// </summary>
        [DataMember(Name = "pantryItem", IsRequired = true, EmitDefaultValue = true)]
        public bool PantryItem { get; set; }

        /// <summary>
        /// Gets or Sets Aisle
        /// </summary>
        [DataMember(Name = "aisle", IsRequired = true, EmitDefaultValue = true)]
        public string Aisle { get; set; }

        /// <summary>
        /// Gets or Sets Cost
        /// </summary>
        [DataMember(Name = "cost", IsRequired = true, EmitDefaultValue = true)]
        public decimal Cost { get; set; }

        /// <summary>
        /// Gets or Sets IngredientId
        /// </summary>
        [DataMember(Name = "ingredientId", IsRequired = true, EmitDefaultValue = true)]
        public int IngredientId { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class GetShoppingList200ResponseAislesInnerItemsInner {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Measures: ").Append(Measures).Append("\n");
            sb.Append("  PantryItem: ").Append(PantryItem).Append("\n");
            sb.Append("  Aisle: ").Append(Aisle).Append("\n");
            sb.Append("  Cost: ").Append(Cost).Append("\n");
            sb.Append("  IngredientId: ").Append(IngredientId).Append("\n");
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
            // Name (string) minLength
            if (this.Name != null && this.Name.Length < 1)
            {
                yield return new ValidationResult("Invalid value for Name, length must be greater than 1.", new [] { "Name" });
            }

            // Aisle (string) minLength
            if (this.Aisle != null && this.Aisle.Length < 1)
            {
                yield return new ValidationResult("Invalid value for Aisle, length must be greater than 1.", new [] { "Aisle" });
            }

            yield break;
        }
    }

}

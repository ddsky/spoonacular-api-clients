<?php
/**
 * AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner
 *
 * PHP version 7.4
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 * Generator version: 7.7.0-SNAPSHOT
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Model;

use \ArrayAccess;
use \OpenAPI\Client\ObjectSerializer;

/**
 * AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'analyzeRecipeInstructions_200_response_parsedInstructions_inner_steps_inner';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'number' => 'float',
        'step' => 'string',
        'ingredients' => '\OpenAPI\Client\Model\AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner[]',
        'equipment' => '\OpenAPI\Client\Model\AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner[]'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'number' => null,
        'step' => null,
        'ingredients' => null,
        'equipment' => null
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'number' => false,
        'step' => false,
        'ingredients' => false,
        'equipment' => false
    ];

    /**
      * If a nullable field gets set to null, insert it here
      *
      * @var boolean[]
      */
    protected array $openAPINullablesSetToNull = [];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of nullable properties
     *
     * @return array
     */
    protected static function openAPINullables(): array
    {
        return self::$openAPINullables;
    }

    /**
     * Array of nullable field names deliberately set to null
     *
     * @return boolean[]
     */
    private function getOpenAPINullablesSetToNull(): array
    {
        return $this->openAPINullablesSetToNull;
    }

    /**
     * Setter - Array of nullable field names deliberately set to null
     *
     * @param boolean[] $openAPINullablesSetToNull
     */
    private function setOpenAPINullablesSetToNull(array $openAPINullablesSetToNull): void
    {
        $this->openAPINullablesSetToNull = $openAPINullablesSetToNull;
    }

    /**
     * Checks if a property is nullable
     *
     * @param string $property
     * @return bool
     */
    public static function isNullable(string $property): bool
    {
        return self::openAPINullables()[$property] ?? false;
    }

    /**
     * Checks if a nullable property is set to null.
     *
     * @param string $property
     * @return bool
     */
    public function isNullableSetToNull(string $property): bool
    {
        return in_array($property, $this->getOpenAPINullablesSetToNull(), true);
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'number' => 'number',
        'step' => 'step',
        'ingredients' => 'ingredients',
        'equipment' => 'equipment'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'number' => 'setNumber',
        'step' => 'setStep',
        'ingredients' => 'setIngredients',
        'equipment' => 'setEquipment'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'number' => 'getNumber',
        'step' => 'getStep',
        'ingredients' => 'getIngredients',
        'equipment' => 'getEquipment'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }


    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->setIfExists('number', $data ?? [], null);
        $this->setIfExists('step', $data ?? [], null);
        $this->setIfExists('ingredients', $data ?? [], null);
        $this->setIfExists('equipment', $data ?? [], null);
    }

    /**
    * Sets $this->container[$variableName] to the given data or to the given default Value; if $variableName
    * is nullable and its value is set to null in the $fields array, then mark it as "set to null" in the
    * $this->openAPINullablesSetToNull array
    *
    * @param string $variableName
    * @param array  $fields
    * @param mixed  $defaultValue
    */
    private function setIfExists(string $variableName, array $fields, $defaultValue): void
    {
        if (self::isNullable($variableName) && array_key_exists($variableName, $fields) && is_null($fields[$variableName])) {
            $this->openAPINullablesSetToNull[] = $variableName;
        }

        $this->container[$variableName] = $fields[$variableName] ?? $defaultValue;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['number'] === null) {
            $invalidProperties[] = "'number' can't be null";
        }
        if ($this->container['step'] === null) {
            $invalidProperties[] = "'step' can't be null";
        }
        if ((mb_strlen($this->container['step']) < 1)) {
            $invalidProperties[] = "invalid value for 'step', the character length must be bigger than or equal to 1.";
        }

        if (!is_null($this->container['ingredients']) && (count($this->container['ingredients']) < 0)) {
            $invalidProperties[] = "invalid value for 'ingredients', number of items must be greater than or equal to 0.";
        }

        if (!is_null($this->container['equipment']) && (count($this->container['equipment']) < 0)) {
            $invalidProperties[] = "invalid value for 'equipment', number of items must be greater than or equal to 0.";
        }

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets number
     *
     * @return float
     */
    public function getNumber()
    {
        return $this->container['number'];
    }

    /**
     * Sets number
     *
     * @param float $number number
     *
     * @return self
     */
    public function setNumber($number)
    {
        if (is_null($number)) {
            throw new \InvalidArgumentException('non-nullable number cannot be null');
        }
        $this->container['number'] = $number;

        return $this;
    }

    /**
     * Gets step
     *
     * @return string
     */
    public function getStep()
    {
        return $this->container['step'];
    }

    /**
     * Sets step
     *
     * @param string $step step
     *
     * @return self
     */
    public function setStep($step)
    {
        if (is_null($step)) {
            throw new \InvalidArgumentException('non-nullable step cannot be null');
        }

        if ((mb_strlen($step) < 1)) {
            throw new \InvalidArgumentException('invalid length for $step when calling AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner., must be bigger than or equal to 1.');
        }

        $this->container['step'] = $step;

        return $this;
    }

    /**
     * Gets ingredients
     *
     * @return \OpenAPI\Client\Model\AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner[]|null
     */
    public function getIngredients()
    {
        return $this->container['ingredients'];
    }

    /**
     * Sets ingredients
     *
     * @param \OpenAPI\Client\Model\AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner[]|null $ingredients ingredients
     *
     * @return self
     */
    public function setIngredients($ingredients)
    {
        if (is_null($ingredients)) {
            throw new \InvalidArgumentException('non-nullable ingredients cannot be null');
        }


        if ((count($ingredients) < 0)) {
            throw new \InvalidArgumentException('invalid length for $ingredients when calling AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner., number of items must be greater than or equal to 0.');
        }
        $this->container['ingredients'] = $ingredients;

        return $this;
    }

    /**
     * Gets equipment
     *
     * @return \OpenAPI\Client\Model\AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner[]|null
     */
    public function getEquipment()
    {
        return $this->container['equipment'];
    }

    /**
     * Sets equipment
     *
     * @param \OpenAPI\Client\Model\AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner[]|null $equipment equipment
     *
     * @return self
     */
    public function setEquipment($equipment)
    {
        if (is_null($equipment)) {
            throw new \InvalidArgumentException('non-nullable equipment cannot be null');
        }


        if ((count($equipment) < 0)) {
            throw new \InvalidArgumentException('invalid length for $equipment when calling AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner., number of items must be greater than or equal to 0.');
        }
        $this->container['equipment'] = $equipment;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset): bool
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    #[\ReturnTypeWillChange]
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value): void
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset): void
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    #[\ReturnTypeWillChange]
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}



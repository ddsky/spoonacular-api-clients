<?php
/**
 * ConvertAmounts200Response
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
 * OpenAPI Generator version: 7.3.0
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
 * ConvertAmounts200Response Class Doc Comment
 *
 * @category Class
 * @description 
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class ConvertAmounts200Response implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'convertAmounts_200_response';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'source_amount' => 'float',
        'source_unit' => 'string',
        'target_amount' => 'float',
        'target_unit' => 'string',
        'answer' => 'string'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'source_amount' => null,
        'source_unit' => null,
        'target_amount' => null,
        'target_unit' => null,
        'answer' => null
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'source_amount' => false,
        'source_unit' => false,
        'target_amount' => false,
        'target_unit' => false,
        'answer' => false
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
        'source_amount' => 'sourceAmount',
        'source_unit' => 'sourceUnit',
        'target_amount' => 'targetAmount',
        'target_unit' => 'targetUnit',
        'answer' => 'answer'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'source_amount' => 'setSourceAmount',
        'source_unit' => 'setSourceUnit',
        'target_amount' => 'setTargetAmount',
        'target_unit' => 'setTargetUnit',
        'answer' => 'setAnswer'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'source_amount' => 'getSourceAmount',
        'source_unit' => 'getSourceUnit',
        'target_amount' => 'getTargetAmount',
        'target_unit' => 'getTargetUnit',
        'answer' => 'getAnswer'
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
        $this->setIfExists('source_amount', $data ?? [], null);
        $this->setIfExists('source_unit', $data ?? [], null);
        $this->setIfExists('target_amount', $data ?? [], null);
        $this->setIfExists('target_unit', $data ?? [], null);
        $this->setIfExists('answer', $data ?? [], null);
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

        if ($this->container['source_amount'] === null) {
            $invalidProperties[] = "'source_amount' can't be null";
        }
        if ($this->container['source_unit'] === null) {
            $invalidProperties[] = "'source_unit' can't be null";
        }
        if ((mb_strlen($this->container['source_unit']) < 1)) {
            $invalidProperties[] = "invalid value for 'source_unit', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['target_amount'] === null) {
            $invalidProperties[] = "'target_amount' can't be null";
        }
        if ($this->container['target_unit'] === null) {
            $invalidProperties[] = "'target_unit' can't be null";
        }
        if ((mb_strlen($this->container['target_unit']) < 1)) {
            $invalidProperties[] = "invalid value for 'target_unit', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['answer'] === null) {
            $invalidProperties[] = "'answer' can't be null";
        }
        if ((mb_strlen($this->container['answer']) < 1)) {
            $invalidProperties[] = "invalid value for 'answer', the character length must be bigger than or equal to 1.";
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
     * Gets source_amount
     *
     * @return float
     */
    public function getSourceAmount()
    {
        return $this->container['source_amount'];
    }

    /**
     * Sets source_amount
     *
     * @param float $source_amount source_amount
     *
     * @return self
     */
    public function setSourceAmount($source_amount)
    {
        if (is_null($source_amount)) {
            throw new \InvalidArgumentException('non-nullable source_amount cannot be null');
        }
        $this->container['source_amount'] = $source_amount;

        return $this;
    }

    /**
     * Gets source_unit
     *
     * @return string
     */
    public function getSourceUnit()
    {
        return $this->container['source_unit'];
    }

    /**
     * Sets source_unit
     *
     * @param string $source_unit source_unit
     *
     * @return self
     */
    public function setSourceUnit($source_unit)
    {
        if (is_null($source_unit)) {
            throw new \InvalidArgumentException('non-nullable source_unit cannot be null');
        }

        if ((mb_strlen($source_unit) < 1)) {
            throw new \InvalidArgumentException('invalid length for $source_unit when calling ConvertAmounts200Response., must be bigger than or equal to 1.');
        }

        $this->container['source_unit'] = $source_unit;

        return $this;
    }

    /**
     * Gets target_amount
     *
     * @return float
     */
    public function getTargetAmount()
    {
        return $this->container['target_amount'];
    }

    /**
     * Sets target_amount
     *
     * @param float $target_amount target_amount
     *
     * @return self
     */
    public function setTargetAmount($target_amount)
    {
        if (is_null($target_amount)) {
            throw new \InvalidArgumentException('non-nullable target_amount cannot be null');
        }
        $this->container['target_amount'] = $target_amount;

        return $this;
    }

    /**
     * Gets target_unit
     *
     * @return string
     */
    public function getTargetUnit()
    {
        return $this->container['target_unit'];
    }

    /**
     * Sets target_unit
     *
     * @param string $target_unit target_unit
     *
     * @return self
     */
    public function setTargetUnit($target_unit)
    {
        if (is_null($target_unit)) {
            throw new \InvalidArgumentException('non-nullable target_unit cannot be null');
        }

        if ((mb_strlen($target_unit) < 1)) {
            throw new \InvalidArgumentException('invalid length for $target_unit when calling ConvertAmounts200Response., must be bigger than or equal to 1.');
        }

        $this->container['target_unit'] = $target_unit;

        return $this;
    }

    /**
     * Gets answer
     *
     * @return string
     */
    public function getAnswer()
    {
        return $this->container['answer'];
    }

    /**
     * Sets answer
     *
     * @param string $answer answer
     *
     * @return self
     */
    public function setAnswer($answer)
    {
        if (is_null($answer)) {
            throw new \InvalidArgumentException('non-nullable answer cannot be null');
        }

        if ((mb_strlen($answer) < 1)) {
            throw new \InvalidArgumentException('invalid length for $answer when calling ConvertAmounts200Response., must be bigger than or equal to 1.');
        }

        $this->container['answer'] = $answer;

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


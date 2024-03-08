<?php
/**
 * ParseIngredients200ResponseInner
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
 * ParseIngredients200ResponseInner Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class ParseIngredients200ResponseInner implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'parseIngredients_200_response_inner';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'id' => 'int',
        'original' => 'string',
        'original_name' => 'string',
        'name' => 'string',
        'name_clean' => 'string',
        'amount' => 'float',
        'unit' => 'string',
        'unit_short' => 'string',
        'unit_long' => 'string',
        'possible_units' => 'string[]',
        'estimated_cost' => '\OpenAPI\Client\Model\ParseIngredients200ResponseInnerEstimatedCost',
        'consistency' => 'string',
        'aisle' => 'string',
        'image' => 'string',
        'meta' => 'string[]',
        'nutrition' => '\OpenAPI\Client\Model\ParseIngredients200ResponseInnerNutrition'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'id' => null,
        'original' => null,
        'original_name' => null,
        'name' => null,
        'name_clean' => null,
        'amount' => null,
        'unit' => null,
        'unit_short' => null,
        'unit_long' => null,
        'possible_units' => null,
        'estimated_cost' => null,
        'consistency' => null,
        'aisle' => null,
        'image' => null,
        'meta' => null,
        'nutrition' => null
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'id' => false,
        'original' => false,
        'original_name' => false,
        'name' => false,
        'name_clean' => false,
        'amount' => false,
        'unit' => false,
        'unit_short' => false,
        'unit_long' => false,
        'possible_units' => false,
        'estimated_cost' => false,
        'consistency' => false,
        'aisle' => false,
        'image' => false,
        'meta' => false,
        'nutrition' => false
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
        'id' => 'id',
        'original' => 'original',
        'original_name' => 'originalName',
        'name' => 'name',
        'name_clean' => 'nameClean',
        'amount' => 'amount',
        'unit' => 'unit',
        'unit_short' => 'unitShort',
        'unit_long' => 'unitLong',
        'possible_units' => 'possibleUnits',
        'estimated_cost' => 'estimatedCost',
        'consistency' => 'consistency',
        'aisle' => 'aisle',
        'image' => 'image',
        'meta' => 'meta',
        'nutrition' => 'nutrition'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'id' => 'setId',
        'original' => 'setOriginal',
        'original_name' => 'setOriginalName',
        'name' => 'setName',
        'name_clean' => 'setNameClean',
        'amount' => 'setAmount',
        'unit' => 'setUnit',
        'unit_short' => 'setUnitShort',
        'unit_long' => 'setUnitLong',
        'possible_units' => 'setPossibleUnits',
        'estimated_cost' => 'setEstimatedCost',
        'consistency' => 'setConsistency',
        'aisle' => 'setAisle',
        'image' => 'setImage',
        'meta' => 'setMeta',
        'nutrition' => 'setNutrition'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'id' => 'getId',
        'original' => 'getOriginal',
        'original_name' => 'getOriginalName',
        'name' => 'getName',
        'name_clean' => 'getNameClean',
        'amount' => 'getAmount',
        'unit' => 'getUnit',
        'unit_short' => 'getUnitShort',
        'unit_long' => 'getUnitLong',
        'possible_units' => 'getPossibleUnits',
        'estimated_cost' => 'getEstimatedCost',
        'consistency' => 'getConsistency',
        'aisle' => 'getAisle',
        'image' => 'getImage',
        'meta' => 'getMeta',
        'nutrition' => 'getNutrition'
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
        $this->setIfExists('id', $data ?? [], null);
        $this->setIfExists('original', $data ?? [], null);
        $this->setIfExists('original_name', $data ?? [], null);
        $this->setIfExists('name', $data ?? [], null);
        $this->setIfExists('name_clean', $data ?? [], null);
        $this->setIfExists('amount', $data ?? [], null);
        $this->setIfExists('unit', $data ?? [], null);
        $this->setIfExists('unit_short', $data ?? [], null);
        $this->setIfExists('unit_long', $data ?? [], null);
        $this->setIfExists('possible_units', $data ?? [], null);
        $this->setIfExists('estimated_cost', $data ?? [], null);
        $this->setIfExists('consistency', $data ?? [], null);
        $this->setIfExists('aisle', $data ?? [], null);
        $this->setIfExists('image', $data ?? [], null);
        $this->setIfExists('meta', $data ?? [], null);
        $this->setIfExists('nutrition', $data ?? [], null);
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

        if ($this->container['id'] === null) {
            $invalidProperties[] = "'id' can't be null";
        }
        if ($this->container['original'] === null) {
            $invalidProperties[] = "'original' can't be null";
        }
        if ((mb_strlen($this->container['original']) < 1)) {
            $invalidProperties[] = "invalid value for 'original', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['original_name'] === null) {
            $invalidProperties[] = "'original_name' can't be null";
        }
        if ((mb_strlen($this->container['original_name']) < 1)) {
            $invalidProperties[] = "invalid value for 'original_name', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['name'] === null) {
            $invalidProperties[] = "'name' can't be null";
        }
        if ((mb_strlen($this->container['name']) < 1)) {
            $invalidProperties[] = "invalid value for 'name', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['name_clean'] === null) {
            $invalidProperties[] = "'name_clean' can't be null";
        }
        if ((mb_strlen($this->container['name_clean']) < 1)) {
            $invalidProperties[] = "invalid value for 'name_clean', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['amount'] === null) {
            $invalidProperties[] = "'amount' can't be null";
        }
        if ($this->container['unit'] === null) {
            $invalidProperties[] = "'unit' can't be null";
        }
        if ((mb_strlen($this->container['unit']) < 1)) {
            $invalidProperties[] = "invalid value for 'unit', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['unit_short'] === null) {
            $invalidProperties[] = "'unit_short' can't be null";
        }
        if ((mb_strlen($this->container['unit_short']) < 1)) {
            $invalidProperties[] = "invalid value for 'unit_short', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['unit_long'] === null) {
            $invalidProperties[] = "'unit_long' can't be null";
        }
        if ((mb_strlen($this->container['unit_long']) < 1)) {
            $invalidProperties[] = "invalid value for 'unit_long', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['possible_units'] === null) {
            $invalidProperties[] = "'possible_units' can't be null";
        }
        if ($this->container['estimated_cost'] === null) {
            $invalidProperties[] = "'estimated_cost' can't be null";
        }
        if ($this->container['consistency'] === null) {
            $invalidProperties[] = "'consistency' can't be null";
        }
        if ((mb_strlen($this->container['consistency']) < 1)) {
            $invalidProperties[] = "invalid value for 'consistency', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['aisle'] === null) {
            $invalidProperties[] = "'aisle' can't be null";
        }
        if ((mb_strlen($this->container['aisle']) < 1)) {
            $invalidProperties[] = "invalid value for 'aisle', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['image'] === null) {
            $invalidProperties[] = "'image' can't be null";
        }
        if ((mb_strlen($this->container['image']) < 1)) {
            $invalidProperties[] = "invalid value for 'image', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['meta'] === null) {
            $invalidProperties[] = "'meta' can't be null";
        }
        if ($this->container['nutrition'] === null) {
            $invalidProperties[] = "'nutrition' can't be null";
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
     * Gets id
     *
     * @return int
     */
    public function getId()
    {
        return $this->container['id'];
    }

    /**
     * Sets id
     *
     * @param int $id id
     *
     * @return self
     */
    public function setId($id)
    {
        if (is_null($id)) {
            throw new \InvalidArgumentException('non-nullable id cannot be null');
        }
        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets original
     *
     * @return string
     */
    public function getOriginal()
    {
        return $this->container['original'];
    }

    /**
     * Sets original
     *
     * @param string $original original
     *
     * @return self
     */
    public function setOriginal($original)
    {
        if (is_null($original)) {
            throw new \InvalidArgumentException('non-nullable original cannot be null');
        }

        if ((mb_strlen($original) < 1)) {
            throw new \InvalidArgumentException('invalid length for $original when calling ParseIngredients200ResponseInner., must be bigger than or equal to 1.');
        }

        $this->container['original'] = $original;

        return $this;
    }

    /**
     * Gets original_name
     *
     * @return string
     */
    public function getOriginalName()
    {
        return $this->container['original_name'];
    }

    /**
     * Sets original_name
     *
     * @param string $original_name original_name
     *
     * @return self
     */
    public function setOriginalName($original_name)
    {
        if (is_null($original_name)) {
            throw new \InvalidArgumentException('non-nullable original_name cannot be null');
        }

        if ((mb_strlen($original_name) < 1)) {
            throw new \InvalidArgumentException('invalid length for $original_name when calling ParseIngredients200ResponseInner., must be bigger than or equal to 1.');
        }

        $this->container['original_name'] = $original_name;

        return $this;
    }

    /**
     * Gets name
     *
     * @return string
     */
    public function getName()
    {
        return $this->container['name'];
    }

    /**
     * Sets name
     *
     * @param string $name name
     *
     * @return self
     */
    public function setName($name)
    {
        if (is_null($name)) {
            throw new \InvalidArgumentException('non-nullable name cannot be null');
        }

        if ((mb_strlen($name) < 1)) {
            throw new \InvalidArgumentException('invalid length for $name when calling ParseIngredients200ResponseInner., must be bigger than or equal to 1.');
        }

        $this->container['name'] = $name;

        return $this;
    }

    /**
     * Gets name_clean
     *
     * @return string
     */
    public function getNameClean()
    {
        return $this->container['name_clean'];
    }

    /**
     * Sets name_clean
     *
     * @param string $name_clean name_clean
     *
     * @return self
     */
    public function setNameClean($name_clean)
    {
        if (is_null($name_clean)) {
            throw new \InvalidArgumentException('non-nullable name_clean cannot be null');
        }

        if ((mb_strlen($name_clean) < 1)) {
            throw new \InvalidArgumentException('invalid length for $name_clean when calling ParseIngredients200ResponseInner., must be bigger than or equal to 1.');
        }

        $this->container['name_clean'] = $name_clean;

        return $this;
    }

    /**
     * Gets amount
     *
     * @return float
     */
    public function getAmount()
    {
        return $this->container['amount'];
    }

    /**
     * Sets amount
     *
     * @param float $amount amount
     *
     * @return self
     */
    public function setAmount($amount)
    {
        if (is_null($amount)) {
            throw new \InvalidArgumentException('non-nullable amount cannot be null');
        }
        $this->container['amount'] = $amount;

        return $this;
    }

    /**
     * Gets unit
     *
     * @return string
     */
    public function getUnit()
    {
        return $this->container['unit'];
    }

    /**
     * Sets unit
     *
     * @param string $unit unit
     *
     * @return self
     */
    public function setUnit($unit)
    {
        if (is_null($unit)) {
            throw new \InvalidArgumentException('non-nullable unit cannot be null');
        }

        if ((mb_strlen($unit) < 1)) {
            throw new \InvalidArgumentException('invalid length for $unit when calling ParseIngredients200ResponseInner., must be bigger than or equal to 1.');
        }

        $this->container['unit'] = $unit;

        return $this;
    }

    /**
     * Gets unit_short
     *
     * @return string
     */
    public function getUnitShort()
    {
        return $this->container['unit_short'];
    }

    /**
     * Sets unit_short
     *
     * @param string $unit_short unit_short
     *
     * @return self
     */
    public function setUnitShort($unit_short)
    {
        if (is_null($unit_short)) {
            throw new \InvalidArgumentException('non-nullable unit_short cannot be null');
        }

        if ((mb_strlen($unit_short) < 1)) {
            throw new \InvalidArgumentException('invalid length for $unit_short when calling ParseIngredients200ResponseInner., must be bigger than or equal to 1.');
        }

        $this->container['unit_short'] = $unit_short;

        return $this;
    }

    /**
     * Gets unit_long
     *
     * @return string
     */
    public function getUnitLong()
    {
        return $this->container['unit_long'];
    }

    /**
     * Sets unit_long
     *
     * @param string $unit_long unit_long
     *
     * @return self
     */
    public function setUnitLong($unit_long)
    {
        if (is_null($unit_long)) {
            throw new \InvalidArgumentException('non-nullable unit_long cannot be null');
        }

        if ((mb_strlen($unit_long) < 1)) {
            throw new \InvalidArgumentException('invalid length for $unit_long when calling ParseIngredients200ResponseInner., must be bigger than or equal to 1.');
        }

        $this->container['unit_long'] = $unit_long;

        return $this;
    }

    /**
     * Gets possible_units
     *
     * @return string[]
     */
    public function getPossibleUnits()
    {
        return $this->container['possible_units'];
    }

    /**
     * Sets possible_units
     *
     * @param string[] $possible_units possible_units
     *
     * @return self
     */
    public function setPossibleUnits($possible_units)
    {
        if (is_null($possible_units)) {
            throw new \InvalidArgumentException('non-nullable possible_units cannot be null');
        }
        $this->container['possible_units'] = $possible_units;

        return $this;
    }

    /**
     * Gets estimated_cost
     *
     * @return \OpenAPI\Client\Model\ParseIngredients200ResponseInnerEstimatedCost
     */
    public function getEstimatedCost()
    {
        return $this->container['estimated_cost'];
    }

    /**
     * Sets estimated_cost
     *
     * @param \OpenAPI\Client\Model\ParseIngredients200ResponseInnerEstimatedCost $estimated_cost estimated_cost
     *
     * @return self
     */
    public function setEstimatedCost($estimated_cost)
    {
        if (is_null($estimated_cost)) {
            throw new \InvalidArgumentException('non-nullable estimated_cost cannot be null');
        }
        $this->container['estimated_cost'] = $estimated_cost;

        return $this;
    }

    /**
     * Gets consistency
     *
     * @return string
     */
    public function getConsistency()
    {
        return $this->container['consistency'];
    }

    /**
     * Sets consistency
     *
     * @param string $consistency consistency
     *
     * @return self
     */
    public function setConsistency($consistency)
    {
        if (is_null($consistency)) {
            throw new \InvalidArgumentException('non-nullable consistency cannot be null');
        }

        if ((mb_strlen($consistency) < 1)) {
            throw new \InvalidArgumentException('invalid length for $consistency when calling ParseIngredients200ResponseInner., must be bigger than or equal to 1.');
        }

        $this->container['consistency'] = $consistency;

        return $this;
    }

    /**
     * Gets aisle
     *
     * @return string
     */
    public function getAisle()
    {
        return $this->container['aisle'];
    }

    /**
     * Sets aisle
     *
     * @param string $aisle aisle
     *
     * @return self
     */
    public function setAisle($aisle)
    {
        if (is_null($aisle)) {
            throw new \InvalidArgumentException('non-nullable aisle cannot be null');
        }

        if ((mb_strlen($aisle) < 1)) {
            throw new \InvalidArgumentException('invalid length for $aisle when calling ParseIngredients200ResponseInner., must be bigger than or equal to 1.');
        }

        $this->container['aisle'] = $aisle;

        return $this;
    }

    /**
     * Gets image
     *
     * @return string
     */
    public function getImage()
    {
        return $this->container['image'];
    }

    /**
     * Sets image
     *
     * @param string $image image
     *
     * @return self
     */
    public function setImage($image)
    {
        if (is_null($image)) {
            throw new \InvalidArgumentException('non-nullable image cannot be null');
        }

        if ((mb_strlen($image) < 1)) {
            throw new \InvalidArgumentException('invalid length for $image when calling ParseIngredients200ResponseInner., must be bigger than or equal to 1.');
        }

        $this->container['image'] = $image;

        return $this;
    }

    /**
     * Gets meta
     *
     * @return string[]
     */
    public function getMeta()
    {
        return $this->container['meta'];
    }

    /**
     * Sets meta
     *
     * @param string[] $meta meta
     *
     * @return self
     */
    public function setMeta($meta)
    {
        if (is_null($meta)) {
            throw new \InvalidArgumentException('non-nullable meta cannot be null');
        }
        $this->container['meta'] = $meta;

        return $this;
    }

    /**
     * Gets nutrition
     *
     * @return \OpenAPI\Client\Model\ParseIngredients200ResponseInnerNutrition
     */
    public function getNutrition()
    {
        return $this->container['nutrition'];
    }

    /**
     * Sets nutrition
     *
     * @param \OpenAPI\Client\Model\ParseIngredients200ResponseInnerNutrition $nutrition nutrition
     *
     * @return self
     */
    public function setNutrition($nutrition)
    {
        if (is_null($nutrition)) {
            throw new \InvalidArgumentException('non-nullable nutrition cannot be null');
        }
        $this->container['nutrition'] = $nutrition;

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



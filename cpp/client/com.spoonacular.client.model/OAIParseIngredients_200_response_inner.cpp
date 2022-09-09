/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIParseIngredients_200_response_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIParseIngredients_200_response_inner::OAIParseIngredients_200_response_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIParseIngredients_200_response_inner::OAIParseIngredients_200_response_inner() {
    this->initializeModel();
}

OAIParseIngredients_200_response_inner::~OAIParseIngredients_200_response_inner() {}

void OAIParseIngredients_200_response_inner::initializeModel() {

    m_id_isSet = false;
    m_id_isValid = false;

    m_original_isSet = false;
    m_original_isValid = false;

    m_original_name_isSet = false;
    m_original_name_isValid = false;

    m_name_isSet = false;
    m_name_isValid = false;

    m_name_clean_isSet = false;
    m_name_clean_isValid = false;

    m_amount_isSet = false;
    m_amount_isValid = false;

    m_unit_isSet = false;
    m_unit_isValid = false;

    m_unit_short_isSet = false;
    m_unit_short_isValid = false;

    m_unit_long_isSet = false;
    m_unit_long_isValid = false;

    m_possible_units_isSet = false;
    m_possible_units_isValid = false;

    m_estimated_cost_isSet = false;
    m_estimated_cost_isValid = false;

    m_consistency_isSet = false;
    m_consistency_isValid = false;

    m_aisle_isSet = false;
    m_aisle_isValid = false;

    m_image_isSet = false;
    m_image_isValid = false;

    m_meta_isSet = false;
    m_meta_isValid = false;

    m_nutrition_isSet = false;
    m_nutrition_isValid = false;
}

void OAIParseIngredients_200_response_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIParseIngredients_200_response_inner::fromJsonObject(QJsonObject json) {

    m_id_isValid = ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_original_isValid = ::OpenAPI::fromJsonValue(original, json[QString("original")]);
    m_original_isSet = !json[QString("original")].isNull() && m_original_isValid;

    m_original_name_isValid = ::OpenAPI::fromJsonValue(original_name, json[QString("originalName")]);
    m_original_name_isSet = !json[QString("originalName")].isNull() && m_original_name_isValid;

    m_name_isValid = ::OpenAPI::fromJsonValue(name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_name_clean_isValid = ::OpenAPI::fromJsonValue(name_clean, json[QString("nameClean")]);
    m_name_clean_isSet = !json[QString("nameClean")].isNull() && m_name_clean_isValid;

    m_amount_isValid = ::OpenAPI::fromJsonValue(amount, json[QString("amount")]);
    m_amount_isSet = !json[QString("amount")].isNull() && m_amount_isValid;

    m_unit_isValid = ::OpenAPI::fromJsonValue(unit, json[QString("unit")]);
    m_unit_isSet = !json[QString("unit")].isNull() && m_unit_isValid;

    m_unit_short_isValid = ::OpenAPI::fromJsonValue(unit_short, json[QString("unitShort")]);
    m_unit_short_isSet = !json[QString("unitShort")].isNull() && m_unit_short_isValid;

    m_unit_long_isValid = ::OpenAPI::fromJsonValue(unit_long, json[QString("unitLong")]);
    m_unit_long_isSet = !json[QString("unitLong")].isNull() && m_unit_long_isValid;

    m_possible_units_isValid = ::OpenAPI::fromJsonValue(possible_units, json[QString("possibleUnits")]);
    m_possible_units_isSet = !json[QString("possibleUnits")].isNull() && m_possible_units_isValid;

    m_estimated_cost_isValid = ::OpenAPI::fromJsonValue(estimated_cost, json[QString("estimatedCost")]);
    m_estimated_cost_isSet = !json[QString("estimatedCost")].isNull() && m_estimated_cost_isValid;

    m_consistency_isValid = ::OpenAPI::fromJsonValue(consistency, json[QString("consistency")]);
    m_consistency_isSet = !json[QString("consistency")].isNull() && m_consistency_isValid;

    m_aisle_isValid = ::OpenAPI::fromJsonValue(aisle, json[QString("aisle")]);
    m_aisle_isSet = !json[QString("aisle")].isNull() && m_aisle_isValid;

    m_image_isValid = ::OpenAPI::fromJsonValue(image, json[QString("image")]);
    m_image_isSet = !json[QString("image")].isNull() && m_image_isValid;

    m_meta_isValid = ::OpenAPI::fromJsonValue(meta, json[QString("meta")]);
    m_meta_isSet = !json[QString("meta")].isNull() && m_meta_isValid;

    m_nutrition_isValid = ::OpenAPI::fromJsonValue(nutrition, json[QString("nutrition")]);
    m_nutrition_isSet = !json[QString("nutrition")].isNull() && m_nutrition_isValid;
}

QString OAIParseIngredients_200_response_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIParseIngredients_200_response_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(id));
    }
    if (m_original_isSet) {
        obj.insert(QString("original"), ::OpenAPI::toJsonValue(original));
    }
    if (m_original_name_isSet) {
        obj.insert(QString("originalName"), ::OpenAPI::toJsonValue(original_name));
    }
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(name));
    }
    if (m_name_clean_isSet) {
        obj.insert(QString("nameClean"), ::OpenAPI::toJsonValue(name_clean));
    }
    if (m_amount_isSet) {
        obj.insert(QString("amount"), ::OpenAPI::toJsonValue(amount));
    }
    if (m_unit_isSet) {
        obj.insert(QString("unit"), ::OpenAPI::toJsonValue(unit));
    }
    if (m_unit_short_isSet) {
        obj.insert(QString("unitShort"), ::OpenAPI::toJsonValue(unit_short));
    }
    if (m_unit_long_isSet) {
        obj.insert(QString("unitLong"), ::OpenAPI::toJsonValue(unit_long));
    }
    if (possible_units.size() > 0) {
        obj.insert(QString("possibleUnits"), ::OpenAPI::toJsonValue(possible_units));
    }
    if (estimated_cost.isSet()) {
        obj.insert(QString("estimatedCost"), ::OpenAPI::toJsonValue(estimated_cost));
    }
    if (m_consistency_isSet) {
        obj.insert(QString("consistency"), ::OpenAPI::toJsonValue(consistency));
    }
    if (m_aisle_isSet) {
        obj.insert(QString("aisle"), ::OpenAPI::toJsonValue(aisle));
    }
    if (m_image_isSet) {
        obj.insert(QString("image"), ::OpenAPI::toJsonValue(image));
    }
    if (meta.size() > 0) {
        obj.insert(QString("meta"), ::OpenAPI::toJsonValue(meta));
    }
    if (nutrition.isSet()) {
        obj.insert(QString("nutrition"), ::OpenAPI::toJsonValue(nutrition));
    }
    return obj;
}

qint32 OAIParseIngredients_200_response_inner::getId() const {
    return id;
}
void OAIParseIngredients_200_response_inner::setId(const qint32 &id) {
    this->id = id;
    this->m_id_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_id_Set() const{
    return m_id_isSet;
}

bool OAIParseIngredients_200_response_inner::is_id_Valid() const{
    return m_id_isValid;
}

QString OAIParseIngredients_200_response_inner::getOriginal() const {
    return original;
}
void OAIParseIngredients_200_response_inner::setOriginal(const QString &original) {
    this->original = original;
    this->m_original_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_original_Set() const{
    return m_original_isSet;
}

bool OAIParseIngredients_200_response_inner::is_original_Valid() const{
    return m_original_isValid;
}

QString OAIParseIngredients_200_response_inner::getOriginalName() const {
    return original_name;
}
void OAIParseIngredients_200_response_inner::setOriginalName(const QString &original_name) {
    this->original_name = original_name;
    this->m_original_name_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_original_name_Set() const{
    return m_original_name_isSet;
}

bool OAIParseIngredients_200_response_inner::is_original_name_Valid() const{
    return m_original_name_isValid;
}

QString OAIParseIngredients_200_response_inner::getName() const {
    return name;
}
void OAIParseIngredients_200_response_inner::setName(const QString &name) {
    this->name = name;
    this->m_name_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_name_Set() const{
    return m_name_isSet;
}

bool OAIParseIngredients_200_response_inner::is_name_Valid() const{
    return m_name_isValid;
}

QString OAIParseIngredients_200_response_inner::getNameClean() const {
    return name_clean;
}
void OAIParseIngredients_200_response_inner::setNameClean(const QString &name_clean) {
    this->name_clean = name_clean;
    this->m_name_clean_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_name_clean_Set() const{
    return m_name_clean_isSet;
}

bool OAIParseIngredients_200_response_inner::is_name_clean_Valid() const{
    return m_name_clean_isValid;
}

double OAIParseIngredients_200_response_inner::getAmount() const {
    return amount;
}
void OAIParseIngredients_200_response_inner::setAmount(const double &amount) {
    this->amount = amount;
    this->m_amount_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_amount_Set() const{
    return m_amount_isSet;
}

bool OAIParseIngredients_200_response_inner::is_amount_Valid() const{
    return m_amount_isValid;
}

QString OAIParseIngredients_200_response_inner::getUnit() const {
    return unit;
}
void OAIParseIngredients_200_response_inner::setUnit(const QString &unit) {
    this->unit = unit;
    this->m_unit_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_unit_Set() const{
    return m_unit_isSet;
}

bool OAIParseIngredients_200_response_inner::is_unit_Valid() const{
    return m_unit_isValid;
}

QString OAIParseIngredients_200_response_inner::getUnitShort() const {
    return unit_short;
}
void OAIParseIngredients_200_response_inner::setUnitShort(const QString &unit_short) {
    this->unit_short = unit_short;
    this->m_unit_short_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_unit_short_Set() const{
    return m_unit_short_isSet;
}

bool OAIParseIngredients_200_response_inner::is_unit_short_Valid() const{
    return m_unit_short_isValid;
}

QString OAIParseIngredients_200_response_inner::getUnitLong() const {
    return unit_long;
}
void OAIParseIngredients_200_response_inner::setUnitLong(const QString &unit_long) {
    this->unit_long = unit_long;
    this->m_unit_long_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_unit_long_Set() const{
    return m_unit_long_isSet;
}

bool OAIParseIngredients_200_response_inner::is_unit_long_Valid() const{
    return m_unit_long_isValid;
}

QList<QString> OAIParseIngredients_200_response_inner::getPossibleUnits() const {
    return possible_units;
}
void OAIParseIngredients_200_response_inner::setPossibleUnits(const QList<QString> &possible_units) {
    this->possible_units = possible_units;
    this->m_possible_units_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_possible_units_Set() const{
    return m_possible_units_isSet;
}

bool OAIParseIngredients_200_response_inner::is_possible_units_Valid() const{
    return m_possible_units_isValid;
}

OAIParseIngredients_200_response_inner_estimatedCost OAIParseIngredients_200_response_inner::getEstimatedCost() const {
    return estimated_cost;
}
void OAIParseIngredients_200_response_inner::setEstimatedCost(const OAIParseIngredients_200_response_inner_estimatedCost &estimated_cost) {
    this->estimated_cost = estimated_cost;
    this->m_estimated_cost_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_estimated_cost_Set() const{
    return m_estimated_cost_isSet;
}

bool OAIParseIngredients_200_response_inner::is_estimated_cost_Valid() const{
    return m_estimated_cost_isValid;
}

QString OAIParseIngredients_200_response_inner::getConsistency() const {
    return consistency;
}
void OAIParseIngredients_200_response_inner::setConsistency(const QString &consistency) {
    this->consistency = consistency;
    this->m_consistency_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_consistency_Set() const{
    return m_consistency_isSet;
}

bool OAIParseIngredients_200_response_inner::is_consistency_Valid() const{
    return m_consistency_isValid;
}

QString OAIParseIngredients_200_response_inner::getAisle() const {
    return aisle;
}
void OAIParseIngredients_200_response_inner::setAisle(const QString &aisle) {
    this->aisle = aisle;
    this->m_aisle_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_aisle_Set() const{
    return m_aisle_isSet;
}

bool OAIParseIngredients_200_response_inner::is_aisle_Valid() const{
    return m_aisle_isValid;
}

QString OAIParseIngredients_200_response_inner::getImage() const {
    return image;
}
void OAIParseIngredients_200_response_inner::setImage(const QString &image) {
    this->image = image;
    this->m_image_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_image_Set() const{
    return m_image_isSet;
}

bool OAIParseIngredients_200_response_inner::is_image_Valid() const{
    return m_image_isValid;
}

QList<QString> OAIParseIngredients_200_response_inner::getMeta() const {
    return meta;
}
void OAIParseIngredients_200_response_inner::setMeta(const QList<QString> &meta) {
    this->meta = meta;
    this->m_meta_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_meta_Set() const{
    return m_meta_isSet;
}

bool OAIParseIngredients_200_response_inner::is_meta_Valid() const{
    return m_meta_isValid;
}

OAIParseIngredients_200_response_inner_nutrition OAIParseIngredients_200_response_inner::getNutrition() const {
    return nutrition;
}
void OAIParseIngredients_200_response_inner::setNutrition(const OAIParseIngredients_200_response_inner_nutrition &nutrition) {
    this->nutrition = nutrition;
    this->m_nutrition_isSet = true;
}

bool OAIParseIngredients_200_response_inner::is_nutrition_Set() const{
    return m_nutrition_isSet;
}

bool OAIParseIngredients_200_response_inner::is_nutrition_Valid() const{
    return m_nutrition_isValid;
}

bool OAIParseIngredients_200_response_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_original_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_original_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_name_clean_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_amount_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_unit_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_unit_short_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_unit_long_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (possible_units.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (estimated_cost.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_consistency_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_aisle_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_image_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (meta.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (nutrition.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIParseIngredients_200_response_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_id_isValid && m_original_isValid && m_original_name_isValid && m_name_isValid && m_name_clean_isValid && m_amount_isValid && m_unit_isValid && m_unit_short_isValid && m_unit_long_isValid && m_possible_units_isValid && m_estimated_cost_isValid && m_consistency_isValid && m_aisle_isValid && m_image_isValid && m_meta_isValid && m_nutrition_isValid && true;
}

} // namespace OpenAPI

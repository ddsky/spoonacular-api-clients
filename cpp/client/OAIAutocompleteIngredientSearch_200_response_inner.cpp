/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIAutocompleteIngredientSearch_200_response_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIAutocompleteIngredientSearch_200_response_inner::OAIAutocompleteIngredientSearch_200_response_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIAutocompleteIngredientSearch_200_response_inner::OAIAutocompleteIngredientSearch_200_response_inner() {
    this->initializeModel();
}

OAIAutocompleteIngredientSearch_200_response_inner::~OAIAutocompleteIngredientSearch_200_response_inner() {}

void OAIAutocompleteIngredientSearch_200_response_inner::initializeModel() {

    m_name_isSet = false;
    m_name_isValid = false;

    m_image_isSet = false;
    m_image_isValid = false;

    m_id_isSet = false;
    m_id_isValid = false;

    m_aisle_isSet = false;
    m_aisle_isValid = false;

    m_possible_units_isSet = false;
    m_possible_units_isValid = false;
}

void OAIAutocompleteIngredientSearch_200_response_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIAutocompleteIngredientSearch_200_response_inner::fromJsonObject(QJsonObject json) {

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_image_isValid = ::OpenAPI::fromJsonValue(m_image, json[QString("image")]);
    m_image_isSet = !json[QString("image")].isNull() && m_image_isValid;

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_aisle_isValid = ::OpenAPI::fromJsonValue(m_aisle, json[QString("aisle")]);
    m_aisle_isSet = !json[QString("aisle")].isNull() && m_aisle_isValid;

    m_possible_units_isValid = ::OpenAPI::fromJsonValue(m_possible_units, json[QString("possibleUnits")]);
    m_possible_units_isSet = !json[QString("possibleUnits")].isNull() && m_possible_units_isValid;
}

QString OAIAutocompleteIngredientSearch_200_response_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIAutocompleteIngredientSearch_200_response_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    if (m_image_isSet) {
        obj.insert(QString("image"), ::OpenAPI::toJsonValue(m_image));
    }
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    if (m_aisle_isSet) {
        obj.insert(QString("aisle"), ::OpenAPI::toJsonValue(m_aisle));
    }
    if (m_possible_units.size() > 0) {
        obj.insert(QString("possibleUnits"), ::OpenAPI::toJsonValue(m_possible_units));
    }
    return obj;
}

QString OAIAutocompleteIngredientSearch_200_response_inner::getName() const {
    return m_name;
}
void OAIAutocompleteIngredientSearch_200_response_inner::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAIAutocompleteIngredientSearch_200_response_inner::is_name_Set() const{
    return m_name_isSet;
}

bool OAIAutocompleteIngredientSearch_200_response_inner::is_name_Valid() const{
    return m_name_isValid;
}

QString OAIAutocompleteIngredientSearch_200_response_inner::getImage() const {
    return m_image;
}
void OAIAutocompleteIngredientSearch_200_response_inner::setImage(const QString &image) {
    m_image = image;
    m_image_isSet = true;
}

bool OAIAutocompleteIngredientSearch_200_response_inner::is_image_Set() const{
    return m_image_isSet;
}

bool OAIAutocompleteIngredientSearch_200_response_inner::is_image_Valid() const{
    return m_image_isValid;
}

qint32 OAIAutocompleteIngredientSearch_200_response_inner::getId() const {
    return m_id;
}
void OAIAutocompleteIngredientSearch_200_response_inner::setId(const qint32 &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAIAutocompleteIngredientSearch_200_response_inner::is_id_Set() const{
    return m_id_isSet;
}

bool OAIAutocompleteIngredientSearch_200_response_inner::is_id_Valid() const{
    return m_id_isValid;
}

QString OAIAutocompleteIngredientSearch_200_response_inner::getAisle() const {
    return m_aisle;
}
void OAIAutocompleteIngredientSearch_200_response_inner::setAisle(const QString &aisle) {
    m_aisle = aisle;
    m_aisle_isSet = true;
}

bool OAIAutocompleteIngredientSearch_200_response_inner::is_aisle_Set() const{
    return m_aisle_isSet;
}

bool OAIAutocompleteIngredientSearch_200_response_inner::is_aisle_Valid() const{
    return m_aisle_isValid;
}

QList<QString> OAIAutocompleteIngredientSearch_200_response_inner::getPossibleUnits() const {
    return m_possible_units;
}
void OAIAutocompleteIngredientSearch_200_response_inner::setPossibleUnits(const QList<QString> &possible_units) {
    m_possible_units = possible_units;
    m_possible_units_isSet = true;
}

bool OAIAutocompleteIngredientSearch_200_response_inner::is_possible_units_Set() const{
    return m_possible_units_isSet;
}

bool OAIAutocompleteIngredientSearch_200_response_inner::is_possible_units_Valid() const{
    return m_possible_units_isValid;
}

bool OAIAutocompleteIngredientSearch_200_response_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_image_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_aisle_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_possible_units.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIAutocompleteIngredientSearch_200_response_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_name_isValid && m_image_isValid && true;
}

} // namespace OpenAPI

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

#include "OAIAddToMealPlan_request.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIAddToMealPlan_request::OAIAddToMealPlan_request(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIAddToMealPlan_request::OAIAddToMealPlan_request() {
    this->initializeModel();
}

OAIAddToMealPlan_request::~OAIAddToMealPlan_request() {}

void OAIAddToMealPlan_request::initializeModel() {

    m_date_isSet = false;
    m_date_isValid = false;

    m_slot_isSet = false;
    m_slot_isValid = false;

    m_position_isSet = false;
    m_position_isValid = false;

    m_type_isSet = false;
    m_type_isValid = false;

    m_value_isSet = false;
    m_value_isValid = false;
}

void OAIAddToMealPlan_request::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIAddToMealPlan_request::fromJsonObject(QJsonObject json) {

    m_date_isValid = ::OpenAPI::fromJsonValue(m_date, json[QString("date")]);
    m_date_isSet = !json[QString("date")].isNull() && m_date_isValid;

    m_slot_isValid = ::OpenAPI::fromJsonValue(m_slot, json[QString("slot")]);
    m_slot_isSet = !json[QString("slot")].isNull() && m_slot_isValid;

    m_position_isValid = ::OpenAPI::fromJsonValue(m_position, json[QString("position")]);
    m_position_isSet = !json[QString("position")].isNull() && m_position_isValid;

    m_type_isValid = ::OpenAPI::fromJsonValue(m_type, json[QString("type")]);
    m_type_isSet = !json[QString("type")].isNull() && m_type_isValid;

    m_value_isValid = ::OpenAPI::fromJsonValue(m_value, json[QString("value")]);
    m_value_isSet = !json[QString("value")].isNull() && m_value_isValid;
}

QString OAIAddToMealPlan_request::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIAddToMealPlan_request::asJsonObject() const {
    QJsonObject obj;
    if (m_date_isSet) {
        obj.insert(QString("date"), ::OpenAPI::toJsonValue(m_date));
    }
    if (m_slot_isSet) {
        obj.insert(QString("slot"), ::OpenAPI::toJsonValue(m_slot));
    }
    if (m_position_isSet) {
        obj.insert(QString("position"), ::OpenAPI::toJsonValue(m_position));
    }
    if (m_type_isSet) {
        obj.insert(QString("type"), ::OpenAPI::toJsonValue(m_type));
    }
    if (m_value.isSet()) {
        obj.insert(QString("value"), ::OpenAPI::toJsonValue(m_value));
    }
    return obj;
}

double OAIAddToMealPlan_request::getDate() const {
    return m_date;
}
void OAIAddToMealPlan_request::setDate(const double &date) {
    m_date = date;
    m_date_isSet = true;
}

bool OAIAddToMealPlan_request::is_date_Set() const{
    return m_date_isSet;
}

bool OAIAddToMealPlan_request::is_date_Valid() const{
    return m_date_isValid;
}

qint32 OAIAddToMealPlan_request::getSlot() const {
    return m_slot;
}
void OAIAddToMealPlan_request::setSlot(const qint32 &slot) {
    m_slot = slot;
    m_slot_isSet = true;
}

bool OAIAddToMealPlan_request::is_slot_Set() const{
    return m_slot_isSet;
}

bool OAIAddToMealPlan_request::is_slot_Valid() const{
    return m_slot_isValid;
}

qint32 OAIAddToMealPlan_request::getPosition() const {
    return m_position;
}
void OAIAddToMealPlan_request::setPosition(const qint32 &position) {
    m_position = position;
    m_position_isSet = true;
}

bool OAIAddToMealPlan_request::is_position_Set() const{
    return m_position_isSet;
}

bool OAIAddToMealPlan_request::is_position_Valid() const{
    return m_position_isValid;
}

QString OAIAddToMealPlan_request::getType() const {
    return m_type;
}
void OAIAddToMealPlan_request::setType(const QString &type) {
    m_type = type;
    m_type_isSet = true;
}

bool OAIAddToMealPlan_request::is_type_Set() const{
    return m_type_isSet;
}

bool OAIAddToMealPlan_request::is_type_Valid() const{
    return m_type_isValid;
}

OAIAddToMealPlan_request_value OAIAddToMealPlan_request::getValue() const {
    return m_value;
}
void OAIAddToMealPlan_request::setValue(const OAIAddToMealPlan_request_value &value) {
    m_value = value;
    m_value_isSet = true;
}

bool OAIAddToMealPlan_request::is_value_Set() const{
    return m_value_isSet;
}

bool OAIAddToMealPlan_request::is_value_Valid() const{
    return m_value_isValid;
}

bool OAIAddToMealPlan_request::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_date_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_slot_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_position_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_type_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_value.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIAddToMealPlan_request::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_date_isValid && m_slot_isValid && m_position_isValid && m_type_isValid && m_value_isValid && true;
}

} // namespace OpenAPI

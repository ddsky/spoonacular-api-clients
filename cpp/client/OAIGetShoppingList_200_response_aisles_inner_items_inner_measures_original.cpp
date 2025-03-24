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

#include "OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original() {
    this->initializeModel();
}

OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::~OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original() {}

void OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::initializeModel() {

    m_amount_isSet = false;
    m_amount_isValid = false;

    m_unit_isSet = false;
    m_unit_isValid = false;
}

void OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::fromJsonObject(QJsonObject json) {

    m_amount_isValid = ::OpenAPI::fromJsonValue(m_amount, json[QString("amount")]);
    m_amount_isSet = !json[QString("amount")].isNull() && m_amount_isValid;

    m_unit_isValid = ::OpenAPI::fromJsonValue(m_unit, json[QString("unit")]);
    m_unit_isSet = !json[QString("unit")].isNull() && m_unit_isValid;
}

QString OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::asJsonObject() const {
    QJsonObject obj;
    if (m_amount_isSet) {
        obj.insert(QString("amount"), ::OpenAPI::toJsonValue(m_amount));
    }
    if (m_unit_isSet) {
        obj.insert(QString("unit"), ::OpenAPI::toJsonValue(m_unit));
    }
    return obj;
}

double OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::getAmount() const {
    return m_amount;
}
void OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::setAmount(const double &amount) {
    m_amount = amount;
    m_amount_isSet = true;
}

bool OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::is_amount_Set() const{
    return m_amount_isSet;
}

bool OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::is_amount_Valid() const{
    return m_amount_isValid;
}

QString OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::getUnit() const {
    return m_unit;
}
void OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::setUnit(const QString &unit) {
    m_unit = unit;
    m_unit_isSet = true;
}

bool OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::is_unit_Set() const{
    return m_unit_isSet;
}

bool OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::is_unit_Valid() const{
    return m_unit_isValid;
}

bool OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_amount_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_unit_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_amount_isValid && m_unit_isValid && true;
}

} // namespace OpenAPI

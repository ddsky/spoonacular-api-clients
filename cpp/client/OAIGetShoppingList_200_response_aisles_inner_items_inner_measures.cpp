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

#include "OAIGetShoppingList_200_response_aisles_inner_items_inner_measures.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::OAIGetShoppingList_200_response_aisles_inner_items_inner_measures(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::OAIGetShoppingList_200_response_aisles_inner_items_inner_measures() {
    this->initializeModel();
}

OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::~OAIGetShoppingList_200_response_aisles_inner_items_inner_measures() {}

void OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::initializeModel() {

    m_original_isSet = false;
    m_original_isValid = false;

    m_metric_isSet = false;
    m_metric_isValid = false;

    m_us_isSet = false;
    m_us_isValid = false;
}

void OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::fromJsonObject(QJsonObject json) {

    m_original_isValid = ::OpenAPI::fromJsonValue(m_original, json[QString("original")]);
    m_original_isSet = !json[QString("original")].isNull() && m_original_isValid;

    m_metric_isValid = ::OpenAPI::fromJsonValue(m_metric, json[QString("metric")]);
    m_metric_isSet = !json[QString("metric")].isNull() && m_metric_isValid;

    m_us_isValid = ::OpenAPI::fromJsonValue(m_us, json[QString("us")]);
    m_us_isSet = !json[QString("us")].isNull() && m_us_isValid;
}

QString OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::asJsonObject() const {
    QJsonObject obj;
    if (m_original.isSet()) {
        obj.insert(QString("original"), ::OpenAPI::toJsonValue(m_original));
    }
    if (m_metric.isSet()) {
        obj.insert(QString("metric"), ::OpenAPI::toJsonValue(m_metric));
    }
    if (m_us.isSet()) {
        obj.insert(QString("us"), ::OpenAPI::toJsonValue(m_us));
    }
    return obj;
}

OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::getOriginal() const {
    return m_original;
}
void OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::setOriginal(const OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original &original) {
    m_original = original;
    m_original_isSet = true;
}

bool OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::is_original_Set() const{
    return m_original_isSet;
}

bool OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::is_original_Valid() const{
    return m_original_isValid;
}

OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::getMetric() const {
    return m_metric;
}
void OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::setMetric(const OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original &metric) {
    m_metric = metric;
    m_metric_isSet = true;
}

bool OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::is_metric_Set() const{
    return m_metric_isSet;
}

bool OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::is_metric_Valid() const{
    return m_metric_isValid;
}

OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::getUs() const {
    return m_us;
}
void OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::setUs(const OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original &us) {
    m_us = us;
    m_us_isSet = true;
}

bool OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::is_us_Set() const{
    return m_us_isSet;
}

bool OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::is_us_Valid() const{
    return m_us_isValid;
}

bool OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_original.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_metric.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_us.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIGetShoppingList_200_response_aisles_inner_items_inner_measures::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_original_isValid && m_metric_isValid && m_us_isValid && true;
}

} // namespace OpenAPI

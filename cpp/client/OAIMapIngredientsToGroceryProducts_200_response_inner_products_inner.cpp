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

#include "OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner() {
    this->initializeModel();
}

OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::~OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner() {}

void OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::initializeModel() {

    m_id_isSet = false;
    m_id_isValid = false;

    m_title_isSet = false;
    m_title_isValid = false;

    m_upc_isSet = false;
    m_upc_isValid = false;
}

void OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::fromJsonObject(QJsonObject json) {

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_title_isValid = ::OpenAPI::fromJsonValue(m_title, json[QString("title")]);
    m_title_isSet = !json[QString("title")].isNull() && m_title_isValid;

    m_upc_isValid = ::OpenAPI::fromJsonValue(m_upc, json[QString("upc")]);
    m_upc_isSet = !json[QString("upc")].isNull() && m_upc_isValid;
}

QString OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    if (m_title_isSet) {
        obj.insert(QString("title"), ::OpenAPI::toJsonValue(m_title));
    }
    if (m_upc_isSet) {
        obj.insert(QString("upc"), ::OpenAPI::toJsonValue(m_upc));
    }
    return obj;
}

qint32 OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::getId() const {
    return m_id;
}
void OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::setId(const qint32 &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::is_id_Set() const{
    return m_id_isSet;
}

bool OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::is_id_Valid() const{
    return m_id_isValid;
}

QString OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::getTitle() const {
    return m_title;
}
void OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::setTitle(const QString &title) {
    m_title = title;
    m_title_isSet = true;
}

bool OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::is_title_Set() const{
    return m_title_isSet;
}

bool OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::is_title_Valid() const{
    return m_title_isValid;
}

QString OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::getUpc() const {
    return m_upc;
}
void OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::setUpc(const QString &upc) {
    m_upc = upc;
    m_upc_isSet = true;
}

bool OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::is_upc_Set() const{
    return m_upc_isSet;
}

bool OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::is_upc_Valid() const{
    return m_upc_isValid;
}

bool OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_title_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_upc_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_id_isValid && m_title_isValid && m_upc_isValid && true;
}

} // namespace OpenAPI

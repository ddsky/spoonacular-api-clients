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

#include "OAIClassifyGroceryProductBulk_request_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIClassifyGroceryProductBulk_request_inner::OAIClassifyGroceryProductBulk_request_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIClassifyGroceryProductBulk_request_inner::OAIClassifyGroceryProductBulk_request_inner() {
    this->initializeModel();
}

OAIClassifyGroceryProductBulk_request_inner::~OAIClassifyGroceryProductBulk_request_inner() {}

void OAIClassifyGroceryProductBulk_request_inner::initializeModel() {

    m_title_isSet = false;
    m_title_isValid = false;

    m_upc_isSet = false;
    m_upc_isValid = false;

    m_plu_code_isSet = false;
    m_plu_code_isValid = false;
}

void OAIClassifyGroceryProductBulk_request_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIClassifyGroceryProductBulk_request_inner::fromJsonObject(QJsonObject json) {

    m_title_isValid = ::OpenAPI::fromJsonValue(m_title, json[QString("title")]);
    m_title_isSet = !json[QString("title")].isNull() && m_title_isValid;

    m_upc_isValid = ::OpenAPI::fromJsonValue(m_upc, json[QString("upc")]);
    m_upc_isSet = !json[QString("upc")].isNull() && m_upc_isValid;

    m_plu_code_isValid = ::OpenAPI::fromJsonValue(m_plu_code, json[QString("plu_code")]);
    m_plu_code_isSet = !json[QString("plu_code")].isNull() && m_plu_code_isValid;
}

QString OAIClassifyGroceryProductBulk_request_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIClassifyGroceryProductBulk_request_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_title_isSet) {
        obj.insert(QString("title"), ::OpenAPI::toJsonValue(m_title));
    }
    if (m_upc_isSet) {
        obj.insert(QString("upc"), ::OpenAPI::toJsonValue(m_upc));
    }
    if (m_plu_code_isSet) {
        obj.insert(QString("plu_code"), ::OpenAPI::toJsonValue(m_plu_code));
    }
    return obj;
}

QString OAIClassifyGroceryProductBulk_request_inner::getTitle() const {
    return m_title;
}
void OAIClassifyGroceryProductBulk_request_inner::setTitle(const QString &title) {
    m_title = title;
    m_title_isSet = true;
}

bool OAIClassifyGroceryProductBulk_request_inner::is_title_Set() const{
    return m_title_isSet;
}

bool OAIClassifyGroceryProductBulk_request_inner::is_title_Valid() const{
    return m_title_isValid;
}

QString OAIClassifyGroceryProductBulk_request_inner::getUpc() const {
    return m_upc;
}
void OAIClassifyGroceryProductBulk_request_inner::setUpc(const QString &upc) {
    m_upc = upc;
    m_upc_isSet = true;
}

bool OAIClassifyGroceryProductBulk_request_inner::is_upc_Set() const{
    return m_upc_isSet;
}

bool OAIClassifyGroceryProductBulk_request_inner::is_upc_Valid() const{
    return m_upc_isValid;
}

QString OAIClassifyGroceryProductBulk_request_inner::getPluCode() const {
    return m_plu_code;
}
void OAIClassifyGroceryProductBulk_request_inner::setPluCode(const QString &plu_code) {
    m_plu_code = plu_code;
    m_plu_code_isSet = true;
}

bool OAIClassifyGroceryProductBulk_request_inner::is_plu_code_Set() const{
    return m_plu_code_isSet;
}

bool OAIClassifyGroceryProductBulk_request_inner::is_plu_code_Valid() const{
    return m_plu_code_isValid;
}

bool OAIClassifyGroceryProductBulk_request_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_title_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_upc_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_plu_code_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIClassifyGroceryProductBulk_request_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_title_isValid && m_upc_isValid && m_plu_code_isValid && true;
}

} // namespace OpenAPI

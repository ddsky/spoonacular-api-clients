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

#include "OAIIngredientSearch_200_response_results_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIIngredientSearch_200_response_results_inner::OAIIngredientSearch_200_response_results_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIIngredientSearch_200_response_results_inner::OAIIngredientSearch_200_response_results_inner() {
    this->initializeModel();
}

OAIIngredientSearch_200_response_results_inner::~OAIIngredientSearch_200_response_results_inner() {}

void OAIIngredientSearch_200_response_results_inner::initializeModel() {

    m_id_isSet = false;
    m_id_isValid = false;

    m_name_isSet = false;
    m_name_isValid = false;

    m_image_isSet = false;
    m_image_isValid = false;
}

void OAIIngredientSearch_200_response_results_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIIngredientSearch_200_response_results_inner::fromJsonObject(QJsonObject json) {

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_image_isValid = ::OpenAPI::fromJsonValue(m_image, json[QString("image")]);
    m_image_isSet = !json[QString("image")].isNull() && m_image_isValid;
}

QString OAIIngredientSearch_200_response_results_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIIngredientSearch_200_response_results_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    if (m_image_isSet) {
        obj.insert(QString("image"), ::OpenAPI::toJsonValue(m_image));
    }
    return obj;
}

qint32 OAIIngredientSearch_200_response_results_inner::getId() const {
    return m_id;
}
void OAIIngredientSearch_200_response_results_inner::setId(const qint32 &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAIIngredientSearch_200_response_results_inner::is_id_Set() const{
    return m_id_isSet;
}

bool OAIIngredientSearch_200_response_results_inner::is_id_Valid() const{
    return m_id_isValid;
}

QString OAIIngredientSearch_200_response_results_inner::getName() const {
    return m_name;
}
void OAIIngredientSearch_200_response_results_inner::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAIIngredientSearch_200_response_results_inner::is_name_Set() const{
    return m_name_isSet;
}

bool OAIIngredientSearch_200_response_results_inner::is_name_Valid() const{
    return m_name_isValid;
}

QString OAIIngredientSearch_200_response_results_inner::getImage() const {
    return m_image;
}
void OAIIngredientSearch_200_response_results_inner::setImage(const QString &image) {
    m_image = image;
    m_image_isSet = true;
}

bool OAIIngredientSearch_200_response_results_inner::is_image_Set() const{
    return m_image_isSet;
}

bool OAIIngredientSearch_200_response_results_inner::is_image_Valid() const{
    return m_image_isValid;
}

bool OAIIngredientSearch_200_response_results_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_image_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIIngredientSearch_200_response_results_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_id_isValid && m_name_isValid && m_image_isValid && true;
}

} // namespace OpenAPI

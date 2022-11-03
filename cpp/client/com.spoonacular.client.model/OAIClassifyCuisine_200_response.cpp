/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIClassifyCuisine_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIClassifyCuisine_200_response::OAIClassifyCuisine_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIClassifyCuisine_200_response::OAIClassifyCuisine_200_response() {
    this->initializeModel();
}

OAIClassifyCuisine_200_response::~OAIClassifyCuisine_200_response() {}

void OAIClassifyCuisine_200_response::initializeModel() {

    m_cuisine_isSet = false;
    m_cuisine_isValid = false;

    m_cuisines_isSet = false;
    m_cuisines_isValid = false;

    m_confidence_isSet = false;
    m_confidence_isValid = false;
}

void OAIClassifyCuisine_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIClassifyCuisine_200_response::fromJsonObject(QJsonObject json) {

    m_cuisine_isValid = ::OpenAPI::fromJsonValue(cuisine, json[QString("cuisine")]);
    m_cuisine_isSet = !json[QString("cuisine")].isNull() && m_cuisine_isValid;

    m_cuisines_isValid = ::OpenAPI::fromJsonValue(cuisines, json[QString("cuisines")]);
    m_cuisines_isSet = !json[QString("cuisines")].isNull() && m_cuisines_isValid;

    m_confidence_isValid = ::OpenAPI::fromJsonValue(confidence, json[QString("confidence")]);
    m_confidence_isSet = !json[QString("confidence")].isNull() && m_confidence_isValid;
}

QString OAIClassifyCuisine_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIClassifyCuisine_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_cuisine_isSet) {
        obj.insert(QString("cuisine"), ::OpenAPI::toJsonValue(cuisine));
    }
    if (cuisines.size() > 0) {
        obj.insert(QString("cuisines"), ::OpenAPI::toJsonValue(cuisines));
    }
    if (m_confidence_isSet) {
        obj.insert(QString("confidence"), ::OpenAPI::toJsonValue(confidence));
    }
    return obj;
}

QString OAIClassifyCuisine_200_response::getCuisine() const {
    return cuisine;
}
void OAIClassifyCuisine_200_response::setCuisine(const QString &cuisine) {
    this->cuisine = cuisine;
    this->m_cuisine_isSet = true;
}

bool OAIClassifyCuisine_200_response::is_cuisine_Set() const{
    return m_cuisine_isSet;
}

bool OAIClassifyCuisine_200_response::is_cuisine_Valid() const{
    return m_cuisine_isValid;
}

QList<QString> OAIClassifyCuisine_200_response::getCuisines() const {
    return cuisines;
}
void OAIClassifyCuisine_200_response::setCuisines(const QList<QString> &cuisines) {
    this->cuisines = cuisines;
    this->m_cuisines_isSet = true;
}

bool OAIClassifyCuisine_200_response::is_cuisines_Set() const{
    return m_cuisines_isSet;
}

bool OAIClassifyCuisine_200_response::is_cuisines_Valid() const{
    return m_cuisines_isValid;
}

double OAIClassifyCuisine_200_response::getConfidence() const {
    return confidence;
}
void OAIClassifyCuisine_200_response::setConfidence(const double &confidence) {
    this->confidence = confidence;
    this->m_confidence_isSet = true;
}

bool OAIClassifyCuisine_200_response::is_confidence_Set() const{
    return m_confidence_isSet;
}

bool OAIClassifyCuisine_200_response::is_confidence_Valid() const{
    return m_confidence_isValid;
}

bool OAIClassifyCuisine_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_cuisine_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (cuisines.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_confidence_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIClassifyCuisine_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_cuisine_isValid && m_cuisines_isValid && m_confidence_isValid && true;
}

} // namespace OpenAPI

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

#include "OAIGetWineRecommendation_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIGetWineRecommendation_200_response::OAIGetWineRecommendation_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIGetWineRecommendation_200_response::OAIGetWineRecommendation_200_response() {
    this->initializeModel();
}

OAIGetWineRecommendation_200_response::~OAIGetWineRecommendation_200_response() {}

void OAIGetWineRecommendation_200_response::initializeModel() {

    m_recommended_wines_isSet = false;
    m_recommended_wines_isValid = false;

    m_total_found_isSet = false;
    m_total_found_isValid = false;
}

void OAIGetWineRecommendation_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIGetWineRecommendation_200_response::fromJsonObject(QJsonObject json) {

    m_recommended_wines_isValid = ::OpenAPI::fromJsonValue(m_recommended_wines, json[QString("recommendedWines")]);
    m_recommended_wines_isSet = !json[QString("recommendedWines")].isNull() && m_recommended_wines_isValid;

    m_total_found_isValid = ::OpenAPI::fromJsonValue(m_total_found, json[QString("totalFound")]);
    m_total_found_isSet = !json[QString("totalFound")].isNull() && m_total_found_isValid;
}

QString OAIGetWineRecommendation_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIGetWineRecommendation_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_recommended_wines.size() > 0) {
        obj.insert(QString("recommendedWines"), ::OpenAPI::toJsonValue(m_recommended_wines));
    }
    if (m_total_found_isSet) {
        obj.insert(QString("totalFound"), ::OpenAPI::toJsonValue(m_total_found));
    }
    return obj;
}

QSet<OAIGetWineRecommendation_200_response_recommendedWines_inner> OAIGetWineRecommendation_200_response::getRecommendedWines() const {
    return m_recommended_wines;
}
void OAIGetWineRecommendation_200_response::setRecommendedWines(const QSet<OAIGetWineRecommendation_200_response_recommendedWines_inner> &recommended_wines) {
    m_recommended_wines = recommended_wines;
    m_recommended_wines_isSet = true;
}

bool OAIGetWineRecommendation_200_response::is_recommended_wines_Set() const{
    return m_recommended_wines_isSet;
}

bool OAIGetWineRecommendation_200_response::is_recommended_wines_Valid() const{
    return m_recommended_wines_isValid;
}

qint32 OAIGetWineRecommendation_200_response::getTotalFound() const {
    return m_total_found;
}
void OAIGetWineRecommendation_200_response::setTotalFound(const qint32 &total_found) {
    m_total_found = total_found;
    m_total_found_isSet = true;
}

bool OAIGetWineRecommendation_200_response::is_total_found_Set() const{
    return m_total_found_isSet;
}

bool OAIGetWineRecommendation_200_response::is_total_found_Valid() const{
    return m_total_found_isValid;
}

bool OAIGetWineRecommendation_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_recommended_wines.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_total_found_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIGetWineRecommendation_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_recommended_wines_isValid && m_total_found_isValid && true;
}

} // namespace OpenAPI

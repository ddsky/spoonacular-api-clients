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

#include "OAIRecipeInformation_winePairing.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRecipeInformation_winePairing::OAIRecipeInformation_winePairing(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRecipeInformation_winePairing::OAIRecipeInformation_winePairing() {
    this->initializeModel();
}

OAIRecipeInformation_winePairing::~OAIRecipeInformation_winePairing() {}

void OAIRecipeInformation_winePairing::initializeModel() {

    m_paired_wines_isSet = false;
    m_paired_wines_isValid = false;

    m_pairing_text_isSet = false;
    m_pairing_text_isValid = false;

    m_product_matches_isSet = false;
    m_product_matches_isValid = false;
}

void OAIRecipeInformation_winePairing::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRecipeInformation_winePairing::fromJsonObject(QJsonObject json) {

    m_paired_wines_isValid = ::OpenAPI::fromJsonValue(m_paired_wines, json[QString("pairedWines")]);
    m_paired_wines_isSet = !json[QString("pairedWines")].isNull() && m_paired_wines_isValid;

    m_pairing_text_isValid = ::OpenAPI::fromJsonValue(m_pairing_text, json[QString("pairingText")]);
    m_pairing_text_isSet = !json[QString("pairingText")].isNull() && m_pairing_text_isValid;

    m_product_matches_isValid = ::OpenAPI::fromJsonValue(m_product_matches, json[QString("productMatches")]);
    m_product_matches_isSet = !json[QString("productMatches")].isNull() && m_product_matches_isValid;
}

QString OAIRecipeInformation_winePairing::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRecipeInformation_winePairing::asJsonObject() const {
    QJsonObject obj;
    if (m_paired_wines.size() > 0) {
        obj.insert(QString("pairedWines"), ::OpenAPI::toJsonValue(m_paired_wines));
    }
    if (m_pairing_text_isSet) {
        obj.insert(QString("pairingText"), ::OpenAPI::toJsonValue(m_pairing_text));
    }
    if (m_product_matches.size() > 0) {
        obj.insert(QString("productMatches"), ::OpenAPI::toJsonValue(m_product_matches));
    }
    return obj;
}

QList<QString> OAIRecipeInformation_winePairing::getPairedWines() const {
    return m_paired_wines;
}
void OAIRecipeInformation_winePairing::setPairedWines(const QList<QString> &paired_wines) {
    m_paired_wines = paired_wines;
    m_paired_wines_isSet = true;
}

bool OAIRecipeInformation_winePairing::is_paired_wines_Set() const{
    return m_paired_wines_isSet;
}

bool OAIRecipeInformation_winePairing::is_paired_wines_Valid() const{
    return m_paired_wines_isValid;
}

QString OAIRecipeInformation_winePairing::getPairingText() const {
    return m_pairing_text;
}
void OAIRecipeInformation_winePairing::setPairingText(const QString &pairing_text) {
    m_pairing_text = pairing_text;
    m_pairing_text_isSet = true;
}

bool OAIRecipeInformation_winePairing::is_pairing_text_Set() const{
    return m_pairing_text_isSet;
}

bool OAIRecipeInformation_winePairing::is_pairing_text_Valid() const{
    return m_pairing_text_isValid;
}

QSet<OAIRecipeInformation_winePairing_productMatches_inner> OAIRecipeInformation_winePairing::getProductMatches() const {
    return m_product_matches;
}
void OAIRecipeInformation_winePairing::setProductMatches(const QSet<OAIRecipeInformation_winePairing_productMatches_inner> &product_matches) {
    m_product_matches = product_matches;
    m_product_matches_isSet = true;
}

bool OAIRecipeInformation_winePairing::is_product_matches_Set() const{
    return m_product_matches_isSet;
}

bool OAIRecipeInformation_winePairing::is_product_matches_Valid() const{
    return m_product_matches_isValid;
}

bool OAIRecipeInformation_winePairing::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_paired_wines.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_pairing_text_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_product_matches.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRecipeInformation_winePairing::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI

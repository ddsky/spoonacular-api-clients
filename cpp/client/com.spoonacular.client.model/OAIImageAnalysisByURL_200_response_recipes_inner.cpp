/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIImageAnalysisByURL_200_response_recipes_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIImageAnalysisByURL_200_response_recipes_inner::OAIImageAnalysisByURL_200_response_recipes_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIImageAnalysisByURL_200_response_recipes_inner::OAIImageAnalysisByURL_200_response_recipes_inner() {
    this->initializeModel();
}

OAIImageAnalysisByURL_200_response_recipes_inner::~OAIImageAnalysisByURL_200_response_recipes_inner() {}

void OAIImageAnalysisByURL_200_response_recipes_inner::initializeModel() {

    m_id_isSet = false;
    m_id_isValid = false;

    m_title_isSet = false;
    m_title_isValid = false;

    m_image_type_isSet = false;
    m_image_type_isValid = false;

    m_url_isSet = false;
    m_url_isValid = false;
}

void OAIImageAnalysisByURL_200_response_recipes_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIImageAnalysisByURL_200_response_recipes_inner::fromJsonObject(QJsonObject json) {

    m_id_isValid = ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_title_isValid = ::OpenAPI::fromJsonValue(title, json[QString("title")]);
    m_title_isSet = !json[QString("title")].isNull() && m_title_isValid;

    m_image_type_isValid = ::OpenAPI::fromJsonValue(image_type, json[QString("imageType")]);
    m_image_type_isSet = !json[QString("imageType")].isNull() && m_image_type_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;
}

QString OAIImageAnalysisByURL_200_response_recipes_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIImageAnalysisByURL_200_response_recipes_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(id));
    }
    if (m_title_isSet) {
        obj.insert(QString("title"), ::OpenAPI::toJsonValue(title));
    }
    if (m_image_type_isSet) {
        obj.insert(QString("imageType"), ::OpenAPI::toJsonValue(image_type));
    }
    if (m_url_isSet) {
        obj.insert(QString("url"), ::OpenAPI::toJsonValue(url));
    }
    return obj;
}

qint32 OAIImageAnalysisByURL_200_response_recipes_inner::getId() const {
    return id;
}
void OAIImageAnalysisByURL_200_response_recipes_inner::setId(const qint32 &id) {
    this->id = id;
    this->m_id_isSet = true;
}

bool OAIImageAnalysisByURL_200_response_recipes_inner::is_id_Set() const{
    return m_id_isSet;
}

bool OAIImageAnalysisByURL_200_response_recipes_inner::is_id_Valid() const{
    return m_id_isValid;
}

QString OAIImageAnalysisByURL_200_response_recipes_inner::getTitle() const {
    return title;
}
void OAIImageAnalysisByURL_200_response_recipes_inner::setTitle(const QString &title) {
    this->title = title;
    this->m_title_isSet = true;
}

bool OAIImageAnalysisByURL_200_response_recipes_inner::is_title_Set() const{
    return m_title_isSet;
}

bool OAIImageAnalysisByURL_200_response_recipes_inner::is_title_Valid() const{
    return m_title_isValid;
}

QString OAIImageAnalysisByURL_200_response_recipes_inner::getImageType() const {
    return image_type;
}
void OAIImageAnalysisByURL_200_response_recipes_inner::setImageType(const QString &image_type) {
    this->image_type = image_type;
    this->m_image_type_isSet = true;
}

bool OAIImageAnalysisByURL_200_response_recipes_inner::is_image_type_Set() const{
    return m_image_type_isSet;
}

bool OAIImageAnalysisByURL_200_response_recipes_inner::is_image_type_Valid() const{
    return m_image_type_isValid;
}

QString OAIImageAnalysisByURL_200_response_recipes_inner::getUrl() const {
    return url;
}
void OAIImageAnalysisByURL_200_response_recipes_inner::setUrl(const QString &url) {
    this->url = url;
    this->m_url_isSet = true;
}

bool OAIImageAnalysisByURL_200_response_recipes_inner::is_url_Set() const{
    return m_url_isSet;
}

bool OAIImageAnalysisByURL_200_response_recipes_inner::is_url_Valid() const{
    return m_url_isValid;
}

bool OAIImageAnalysisByURL_200_response_recipes_inner::isSet() const {
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

        if (m_image_type_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_url_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIImageAnalysisByURL_200_response_recipes_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_id_isValid && m_title_isValid && m_image_type_isValid && m_url_isValid && true;
}

} // namespace OpenAPI

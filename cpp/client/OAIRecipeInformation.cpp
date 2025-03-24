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

#include "OAIRecipeInformation.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRecipeInformation::OAIRecipeInformation(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRecipeInformation::OAIRecipeInformation() {
    this->initializeModel();
}

OAIRecipeInformation::~OAIRecipeInformation() {}

void OAIRecipeInformation::initializeModel() {

    m_id_isSet = false;
    m_id_isValid = false;

    m_title_isSet = false;
    m_title_isValid = false;

    m_image_isSet = false;
    m_image_isValid = false;

    m_image_type_isSet = false;
    m_image_type_isValid = false;

    m_servings_isSet = false;
    m_servings_isValid = false;

    m_ready_in_minutes_isSet = false;
    m_ready_in_minutes_isValid = false;

    m_preparation_minutes_isSet = false;
    m_preparation_minutes_isValid = false;

    m_cooking_minutes_isSet = false;
    m_cooking_minutes_isValid = false;

    m_license_isSet = false;
    m_license_isValid = false;

    m_source_name_isSet = false;
    m_source_name_isValid = false;

    m_source_url_isSet = false;
    m_source_url_isValid = false;

    m_spoonacular_source_url_isSet = false;
    m_spoonacular_source_url_isValid = false;

    m_aggregate_likes_isSet = false;
    m_aggregate_likes_isValid = false;

    m_health_score_isSet = false;
    m_health_score_isValid = false;

    m_spoonacular_score_isSet = false;
    m_spoonacular_score_isValid = false;

    m_price_per_serving_isSet = false;
    m_price_per_serving_isValid = false;

    m_analyzed_instructions_isSet = false;
    m_analyzed_instructions_isValid = false;

    m_cheap_isSet = false;
    m_cheap_isValid = false;

    m_credits_text_isSet = false;
    m_credits_text_isValid = false;

    m_cuisines_isSet = false;
    m_cuisines_isValid = false;

    m_dairy_free_isSet = false;
    m_dairy_free_isValid = false;

    m_diets_isSet = false;
    m_diets_isValid = false;

    m_gaps_isSet = false;
    m_gaps_isValid = false;

    m_gluten_free_isSet = false;
    m_gluten_free_isValid = false;

    m_instructions_isSet = false;
    m_instructions_isValid = false;

    m_low_fodmap_isSet = false;
    m_low_fodmap_isValid = false;

    m_occasions_isSet = false;
    m_occasions_isValid = false;

    m_sustainable_isSet = false;
    m_sustainable_isValid = false;

    m_vegan_isSet = false;
    m_vegan_isValid = false;

    m_vegetarian_isSet = false;
    m_vegetarian_isValid = false;

    m_very_healthy_isSet = false;
    m_very_healthy_isValid = false;

    m_very_popular_isSet = false;
    m_very_popular_isValid = false;

    m_weight_watcher_smart_points_isSet = false;
    m_weight_watcher_smart_points_isValid = false;

    m_dish_types_isSet = false;
    m_dish_types_isValid = false;

    m_extended_ingredients_isSet = false;
    m_extended_ingredients_isValid = false;

    m_summary_isSet = false;
    m_summary_isValid = false;

    m_wine_pairing_isSet = false;
    m_wine_pairing_isValid = false;

    m_taste_isSet = false;
    m_taste_isValid = false;
}

void OAIRecipeInformation::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRecipeInformation::fromJsonObject(QJsonObject json) {

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_title_isValid = ::OpenAPI::fromJsonValue(m_title, json[QString("title")]);
    m_title_isSet = !json[QString("title")].isNull() && m_title_isValid;

    m_image_isValid = ::OpenAPI::fromJsonValue(m_image, json[QString("image")]);
    m_image_isSet = !json[QString("image")].isNull() && m_image_isValid;

    m_image_type_isValid = ::OpenAPI::fromJsonValue(m_image_type, json[QString("imageType")]);
    m_image_type_isSet = !json[QString("imageType")].isNull() && m_image_type_isValid;

    m_servings_isValid = ::OpenAPI::fromJsonValue(m_servings, json[QString("servings")]);
    m_servings_isSet = !json[QString("servings")].isNull() && m_servings_isValid;

    m_ready_in_minutes_isValid = ::OpenAPI::fromJsonValue(m_ready_in_minutes, json[QString("readyInMinutes")]);
    m_ready_in_minutes_isSet = !json[QString("readyInMinutes")].isNull() && m_ready_in_minutes_isValid;

    m_preparation_minutes_isValid = ::OpenAPI::fromJsonValue(m_preparation_minutes, json[QString("preparationMinutes")]);
    m_preparation_minutes_isSet = !json[QString("preparationMinutes")].isNull() && m_preparation_minutes_isValid;

    m_cooking_minutes_isValid = ::OpenAPI::fromJsonValue(m_cooking_minutes, json[QString("cookingMinutes")]);
    m_cooking_minutes_isSet = !json[QString("cookingMinutes")].isNull() && m_cooking_minutes_isValid;

    m_license_isValid = ::OpenAPI::fromJsonValue(m_license, json[QString("license")]);
    m_license_isSet = !json[QString("license")].isNull() && m_license_isValid;

    m_source_name_isValid = ::OpenAPI::fromJsonValue(m_source_name, json[QString("sourceName")]);
    m_source_name_isSet = !json[QString("sourceName")].isNull() && m_source_name_isValid;

    m_source_url_isValid = ::OpenAPI::fromJsonValue(m_source_url, json[QString("sourceUrl")]);
    m_source_url_isSet = !json[QString("sourceUrl")].isNull() && m_source_url_isValid;

    m_spoonacular_source_url_isValid = ::OpenAPI::fromJsonValue(m_spoonacular_source_url, json[QString("spoonacularSourceUrl")]);
    m_spoonacular_source_url_isSet = !json[QString("spoonacularSourceUrl")].isNull() && m_spoonacular_source_url_isValid;

    m_aggregate_likes_isValid = ::OpenAPI::fromJsonValue(m_aggregate_likes, json[QString("aggregateLikes")]);
    m_aggregate_likes_isSet = !json[QString("aggregateLikes")].isNull() && m_aggregate_likes_isValid;

    m_health_score_isValid = ::OpenAPI::fromJsonValue(m_health_score, json[QString("healthScore")]);
    m_health_score_isSet = !json[QString("healthScore")].isNull() && m_health_score_isValid;

    m_spoonacular_score_isValid = ::OpenAPI::fromJsonValue(m_spoonacular_score, json[QString("spoonacularScore")]);
    m_spoonacular_score_isSet = !json[QString("spoonacularScore")].isNull() && m_spoonacular_score_isValid;

    m_price_per_serving_isValid = ::OpenAPI::fromJsonValue(m_price_per_serving, json[QString("pricePerServing")]);
    m_price_per_serving_isSet = !json[QString("pricePerServing")].isNull() && m_price_per_serving_isValid;

    m_analyzed_instructions_isValid = ::OpenAPI::fromJsonValue(m_analyzed_instructions, json[QString("analyzedInstructions")]);
    m_analyzed_instructions_isSet = !json[QString("analyzedInstructions")].isNull() && m_analyzed_instructions_isValid;

    m_cheap_isValid = ::OpenAPI::fromJsonValue(m_cheap, json[QString("cheap")]);
    m_cheap_isSet = !json[QString("cheap")].isNull() && m_cheap_isValid;

    m_credits_text_isValid = ::OpenAPI::fromJsonValue(m_credits_text, json[QString("creditsText")]);
    m_credits_text_isSet = !json[QString("creditsText")].isNull() && m_credits_text_isValid;

    m_cuisines_isValid = ::OpenAPI::fromJsonValue(m_cuisines, json[QString("cuisines")]);
    m_cuisines_isSet = !json[QString("cuisines")].isNull() && m_cuisines_isValid;

    m_dairy_free_isValid = ::OpenAPI::fromJsonValue(m_dairy_free, json[QString("dairyFree")]);
    m_dairy_free_isSet = !json[QString("dairyFree")].isNull() && m_dairy_free_isValid;

    m_diets_isValid = ::OpenAPI::fromJsonValue(m_diets, json[QString("diets")]);
    m_diets_isSet = !json[QString("diets")].isNull() && m_diets_isValid;

    m_gaps_isValid = ::OpenAPI::fromJsonValue(m_gaps, json[QString("gaps")]);
    m_gaps_isSet = !json[QString("gaps")].isNull() && m_gaps_isValid;

    m_gluten_free_isValid = ::OpenAPI::fromJsonValue(m_gluten_free, json[QString("glutenFree")]);
    m_gluten_free_isSet = !json[QString("glutenFree")].isNull() && m_gluten_free_isValid;

    m_instructions_isValid = ::OpenAPI::fromJsonValue(m_instructions, json[QString("instructions")]);
    m_instructions_isSet = !json[QString("instructions")].isNull() && m_instructions_isValid;

    m_low_fodmap_isValid = ::OpenAPI::fromJsonValue(m_low_fodmap, json[QString("lowFodmap")]);
    m_low_fodmap_isSet = !json[QString("lowFodmap")].isNull() && m_low_fodmap_isValid;

    m_occasions_isValid = ::OpenAPI::fromJsonValue(m_occasions, json[QString("occasions")]);
    m_occasions_isSet = !json[QString("occasions")].isNull() && m_occasions_isValid;

    m_sustainable_isValid = ::OpenAPI::fromJsonValue(m_sustainable, json[QString("sustainable")]);
    m_sustainable_isSet = !json[QString("sustainable")].isNull() && m_sustainable_isValid;

    m_vegan_isValid = ::OpenAPI::fromJsonValue(m_vegan, json[QString("vegan")]);
    m_vegan_isSet = !json[QString("vegan")].isNull() && m_vegan_isValid;

    m_vegetarian_isValid = ::OpenAPI::fromJsonValue(m_vegetarian, json[QString("vegetarian")]);
    m_vegetarian_isSet = !json[QString("vegetarian")].isNull() && m_vegetarian_isValid;

    m_very_healthy_isValid = ::OpenAPI::fromJsonValue(m_very_healthy, json[QString("veryHealthy")]);
    m_very_healthy_isSet = !json[QString("veryHealthy")].isNull() && m_very_healthy_isValid;

    m_very_popular_isValid = ::OpenAPI::fromJsonValue(m_very_popular, json[QString("veryPopular")]);
    m_very_popular_isSet = !json[QString("veryPopular")].isNull() && m_very_popular_isValid;

    m_weight_watcher_smart_points_isValid = ::OpenAPI::fromJsonValue(m_weight_watcher_smart_points, json[QString("weightWatcherSmartPoints")]);
    m_weight_watcher_smart_points_isSet = !json[QString("weightWatcherSmartPoints")].isNull() && m_weight_watcher_smart_points_isValid;

    m_dish_types_isValid = ::OpenAPI::fromJsonValue(m_dish_types, json[QString("dishTypes")]);
    m_dish_types_isSet = !json[QString("dishTypes")].isNull() && m_dish_types_isValid;

    m_extended_ingredients_isValid = ::OpenAPI::fromJsonValue(m_extended_ingredients, json[QString("extendedIngredients")]);
    m_extended_ingredients_isSet = !json[QString("extendedIngredients")].isNull() && m_extended_ingredients_isValid;

    m_summary_isValid = ::OpenAPI::fromJsonValue(m_summary, json[QString("summary")]);
    m_summary_isSet = !json[QString("summary")].isNull() && m_summary_isValid;

    m_wine_pairing_isValid = ::OpenAPI::fromJsonValue(m_wine_pairing, json[QString("winePairing")]);
    m_wine_pairing_isSet = !json[QString("winePairing")].isNull() && m_wine_pairing_isValid;

    m_taste_isValid = ::OpenAPI::fromJsonValue(m_taste, json[QString("taste")]);
    m_taste_isSet = !json[QString("taste")].isNull() && m_taste_isValid;
}

QString OAIRecipeInformation::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRecipeInformation::asJsonObject() const {
    QJsonObject obj;
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    if (m_title_isSet) {
        obj.insert(QString("title"), ::OpenAPI::toJsonValue(m_title));
    }
    if (m_image_isSet) {
        obj.insert(QString("image"), ::OpenAPI::toJsonValue(m_image));
    }
    if (m_image_type_isSet) {
        obj.insert(QString("imageType"), ::OpenAPI::toJsonValue(m_image_type));
    }
    if (m_servings_isSet) {
        obj.insert(QString("servings"), ::OpenAPI::toJsonValue(m_servings));
    }
    if (m_ready_in_minutes_isSet) {
        obj.insert(QString("readyInMinutes"), ::OpenAPI::toJsonValue(m_ready_in_minutes));
    }
    if (m_preparation_minutes_isSet) {
        obj.insert(QString("preparationMinutes"), ::OpenAPI::toJsonValue(m_preparation_minutes));
    }
    if (m_cooking_minutes_isSet) {
        obj.insert(QString("cookingMinutes"), ::OpenAPI::toJsonValue(m_cooking_minutes));
    }
    if (m_license_isSet) {
        obj.insert(QString("license"), ::OpenAPI::toJsonValue(m_license));
    }
    if (m_source_name_isSet) {
        obj.insert(QString("sourceName"), ::OpenAPI::toJsonValue(m_source_name));
    }
    if (m_source_url_isSet) {
        obj.insert(QString("sourceUrl"), ::OpenAPI::toJsonValue(m_source_url));
    }
    if (m_spoonacular_source_url_isSet) {
        obj.insert(QString("spoonacularSourceUrl"), ::OpenAPI::toJsonValue(m_spoonacular_source_url));
    }
    if (m_aggregate_likes_isSet) {
        obj.insert(QString("aggregateLikes"), ::OpenAPI::toJsonValue(m_aggregate_likes));
    }
    if (m_health_score_isSet) {
        obj.insert(QString("healthScore"), ::OpenAPI::toJsonValue(m_health_score));
    }
    if (m_spoonacular_score_isSet) {
        obj.insert(QString("spoonacularScore"), ::OpenAPI::toJsonValue(m_spoonacular_score));
    }
    if (m_price_per_serving_isSet) {
        obj.insert(QString("pricePerServing"), ::OpenAPI::toJsonValue(m_price_per_serving));
    }
    if (m_analyzed_instructions.size() > 0) {
        obj.insert(QString("analyzedInstructions"), ::OpenAPI::toJsonValue(m_analyzed_instructions));
    }
    if (m_cheap_isSet) {
        obj.insert(QString("cheap"), ::OpenAPI::toJsonValue(m_cheap));
    }
    if (m_credits_text_isSet) {
        obj.insert(QString("creditsText"), ::OpenAPI::toJsonValue(m_credits_text));
    }
    if (m_cuisines.size() > 0) {
        obj.insert(QString("cuisines"), ::OpenAPI::toJsonValue(m_cuisines));
    }
    if (m_dairy_free_isSet) {
        obj.insert(QString("dairyFree"), ::OpenAPI::toJsonValue(m_dairy_free));
    }
    if (m_diets.size() > 0) {
        obj.insert(QString("diets"), ::OpenAPI::toJsonValue(m_diets));
    }
    if (m_gaps_isSet) {
        obj.insert(QString("gaps"), ::OpenAPI::toJsonValue(m_gaps));
    }
    if (m_gluten_free_isSet) {
        obj.insert(QString("glutenFree"), ::OpenAPI::toJsonValue(m_gluten_free));
    }
    if (m_instructions_isSet) {
        obj.insert(QString("instructions"), ::OpenAPI::toJsonValue(m_instructions));
    }
    if (m_low_fodmap_isSet) {
        obj.insert(QString("lowFodmap"), ::OpenAPI::toJsonValue(m_low_fodmap));
    }
    if (m_occasions.size() > 0) {
        obj.insert(QString("occasions"), ::OpenAPI::toJsonValue(m_occasions));
    }
    if (m_sustainable_isSet) {
        obj.insert(QString("sustainable"), ::OpenAPI::toJsonValue(m_sustainable));
    }
    if (m_vegan_isSet) {
        obj.insert(QString("vegan"), ::OpenAPI::toJsonValue(m_vegan));
    }
    if (m_vegetarian_isSet) {
        obj.insert(QString("vegetarian"), ::OpenAPI::toJsonValue(m_vegetarian));
    }
    if (m_very_healthy_isSet) {
        obj.insert(QString("veryHealthy"), ::OpenAPI::toJsonValue(m_very_healthy));
    }
    if (m_very_popular_isSet) {
        obj.insert(QString("veryPopular"), ::OpenAPI::toJsonValue(m_very_popular));
    }
    if (m_weight_watcher_smart_points_isSet) {
        obj.insert(QString("weightWatcherSmartPoints"), ::OpenAPI::toJsonValue(m_weight_watcher_smart_points));
    }
    if (m_dish_types.size() > 0) {
        obj.insert(QString("dishTypes"), ::OpenAPI::toJsonValue(m_dish_types));
    }
    if (m_extended_ingredients.size() > 0) {
        obj.insert(QString("extendedIngredients"), ::OpenAPI::toJsonValue(m_extended_ingredients));
    }
    if (m_summary_isSet) {
        obj.insert(QString("summary"), ::OpenAPI::toJsonValue(m_summary));
    }
    if (m_wine_pairing.isSet()) {
        obj.insert(QString("winePairing"), ::OpenAPI::toJsonValue(m_wine_pairing));
    }
    if (m_taste.isSet()) {
        obj.insert(QString("taste"), ::OpenAPI::toJsonValue(m_taste));
    }
    return obj;
}

qint32 OAIRecipeInformation::getId() const {
    return m_id;
}
void OAIRecipeInformation::setId(const qint32 &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAIRecipeInformation::is_id_Set() const{
    return m_id_isSet;
}

bool OAIRecipeInformation::is_id_Valid() const{
    return m_id_isValid;
}

QString OAIRecipeInformation::getTitle() const {
    return m_title;
}
void OAIRecipeInformation::setTitle(const QString &title) {
    m_title = title;
    m_title_isSet = true;
}

bool OAIRecipeInformation::is_title_Set() const{
    return m_title_isSet;
}

bool OAIRecipeInformation::is_title_Valid() const{
    return m_title_isValid;
}

QString OAIRecipeInformation::getImage() const {
    return m_image;
}
void OAIRecipeInformation::setImage(const QString &image) {
    m_image = image;
    m_image_isSet = true;
}

bool OAIRecipeInformation::is_image_Set() const{
    return m_image_isSet;
}

bool OAIRecipeInformation::is_image_Valid() const{
    return m_image_isValid;
}

QString OAIRecipeInformation::getImageType() const {
    return m_image_type;
}
void OAIRecipeInformation::setImageType(const QString &image_type) {
    m_image_type = image_type;
    m_image_type_isSet = true;
}

bool OAIRecipeInformation::is_image_type_Set() const{
    return m_image_type_isSet;
}

bool OAIRecipeInformation::is_image_type_Valid() const{
    return m_image_type_isValid;
}

double OAIRecipeInformation::getServings() const {
    return m_servings;
}
void OAIRecipeInformation::setServings(const double &servings) {
    m_servings = servings;
    m_servings_isSet = true;
}

bool OAIRecipeInformation::is_servings_Set() const{
    return m_servings_isSet;
}

bool OAIRecipeInformation::is_servings_Valid() const{
    return m_servings_isValid;
}

qint32 OAIRecipeInformation::getReadyInMinutes() const {
    return m_ready_in_minutes;
}
void OAIRecipeInformation::setReadyInMinutes(const qint32 &ready_in_minutes) {
    m_ready_in_minutes = ready_in_minutes;
    m_ready_in_minutes_isSet = true;
}

bool OAIRecipeInformation::is_ready_in_minutes_Set() const{
    return m_ready_in_minutes_isSet;
}

bool OAIRecipeInformation::is_ready_in_minutes_Valid() const{
    return m_ready_in_minutes_isValid;
}

qint32 OAIRecipeInformation::getPreparationMinutes() const {
    return m_preparation_minutes;
}
void OAIRecipeInformation::setPreparationMinutes(const qint32 &preparation_minutes) {
    m_preparation_minutes = preparation_minutes;
    m_preparation_minutes_isSet = true;
}

bool OAIRecipeInformation::is_preparation_minutes_Set() const{
    return m_preparation_minutes_isSet;
}

bool OAIRecipeInformation::is_preparation_minutes_Valid() const{
    return m_preparation_minutes_isValid;
}

qint32 OAIRecipeInformation::getCookingMinutes() const {
    return m_cooking_minutes;
}
void OAIRecipeInformation::setCookingMinutes(const qint32 &cooking_minutes) {
    m_cooking_minutes = cooking_minutes;
    m_cooking_minutes_isSet = true;
}

bool OAIRecipeInformation::is_cooking_minutes_Set() const{
    return m_cooking_minutes_isSet;
}

bool OAIRecipeInformation::is_cooking_minutes_Valid() const{
    return m_cooking_minutes_isValid;
}

QString OAIRecipeInformation::getLicense() const {
    return m_license;
}
void OAIRecipeInformation::setLicense(const QString &license) {
    m_license = license;
    m_license_isSet = true;
}

bool OAIRecipeInformation::is_license_Set() const{
    return m_license_isSet;
}

bool OAIRecipeInformation::is_license_Valid() const{
    return m_license_isValid;
}

QString OAIRecipeInformation::getSourceName() const {
    return m_source_name;
}
void OAIRecipeInformation::setSourceName(const QString &source_name) {
    m_source_name = source_name;
    m_source_name_isSet = true;
}

bool OAIRecipeInformation::is_source_name_Set() const{
    return m_source_name_isSet;
}

bool OAIRecipeInformation::is_source_name_Valid() const{
    return m_source_name_isValid;
}

QString OAIRecipeInformation::getSourceUrl() const {
    return m_source_url;
}
void OAIRecipeInformation::setSourceUrl(const QString &source_url) {
    m_source_url = source_url;
    m_source_url_isSet = true;
}

bool OAIRecipeInformation::is_source_url_Set() const{
    return m_source_url_isSet;
}

bool OAIRecipeInformation::is_source_url_Valid() const{
    return m_source_url_isValid;
}

QString OAIRecipeInformation::getSpoonacularSourceUrl() const {
    return m_spoonacular_source_url;
}
void OAIRecipeInformation::setSpoonacularSourceUrl(const QString &spoonacular_source_url) {
    m_spoonacular_source_url = spoonacular_source_url;
    m_spoonacular_source_url_isSet = true;
}

bool OAIRecipeInformation::is_spoonacular_source_url_Set() const{
    return m_spoonacular_source_url_isSet;
}

bool OAIRecipeInformation::is_spoonacular_source_url_Valid() const{
    return m_spoonacular_source_url_isValid;
}

qint32 OAIRecipeInformation::getAggregateLikes() const {
    return m_aggregate_likes;
}
void OAIRecipeInformation::setAggregateLikes(const qint32 &aggregate_likes) {
    m_aggregate_likes = aggregate_likes;
    m_aggregate_likes_isSet = true;
}

bool OAIRecipeInformation::is_aggregate_likes_Set() const{
    return m_aggregate_likes_isSet;
}

bool OAIRecipeInformation::is_aggregate_likes_Valid() const{
    return m_aggregate_likes_isValid;
}

double OAIRecipeInformation::getHealthScore() const {
    return m_health_score;
}
void OAIRecipeInformation::setHealthScore(const double &health_score) {
    m_health_score = health_score;
    m_health_score_isSet = true;
}

bool OAIRecipeInformation::is_health_score_Set() const{
    return m_health_score_isSet;
}

bool OAIRecipeInformation::is_health_score_Valid() const{
    return m_health_score_isValid;
}

double OAIRecipeInformation::getSpoonacularScore() const {
    return m_spoonacular_score;
}
void OAIRecipeInformation::setSpoonacularScore(const double &spoonacular_score) {
    m_spoonacular_score = spoonacular_score;
    m_spoonacular_score_isSet = true;
}

bool OAIRecipeInformation::is_spoonacular_score_Set() const{
    return m_spoonacular_score_isSet;
}

bool OAIRecipeInformation::is_spoonacular_score_Valid() const{
    return m_spoonacular_score_isValid;
}

double OAIRecipeInformation::getPricePerServing() const {
    return m_price_per_serving;
}
void OAIRecipeInformation::setPricePerServing(const double &price_per_serving) {
    m_price_per_serving = price_per_serving;
    m_price_per_serving_isSet = true;
}

bool OAIRecipeInformation::is_price_per_serving_Set() const{
    return m_price_per_serving_isSet;
}

bool OAIRecipeInformation::is_price_per_serving_Valid() const{
    return m_price_per_serving_isValid;
}

QList<OAIObject> OAIRecipeInformation::getAnalyzedInstructions() const {
    return m_analyzed_instructions;
}
void OAIRecipeInformation::setAnalyzedInstructions(const QList<OAIObject> &analyzed_instructions) {
    m_analyzed_instructions = analyzed_instructions;
    m_analyzed_instructions_isSet = true;
}

bool OAIRecipeInformation::is_analyzed_instructions_Set() const{
    return m_analyzed_instructions_isSet;
}

bool OAIRecipeInformation::is_analyzed_instructions_Valid() const{
    return m_analyzed_instructions_isValid;
}

bool OAIRecipeInformation::isCheap() const {
    return m_cheap;
}
void OAIRecipeInformation::setCheap(const bool &cheap) {
    m_cheap = cheap;
    m_cheap_isSet = true;
}

bool OAIRecipeInformation::is_cheap_Set() const{
    return m_cheap_isSet;
}

bool OAIRecipeInformation::is_cheap_Valid() const{
    return m_cheap_isValid;
}

QString OAIRecipeInformation::getCreditsText() const {
    return m_credits_text;
}
void OAIRecipeInformation::setCreditsText(const QString &credits_text) {
    m_credits_text = credits_text;
    m_credits_text_isSet = true;
}

bool OAIRecipeInformation::is_credits_text_Set() const{
    return m_credits_text_isSet;
}

bool OAIRecipeInformation::is_credits_text_Valid() const{
    return m_credits_text_isValid;
}

QList<QString> OAIRecipeInformation::getCuisines() const {
    return m_cuisines;
}
void OAIRecipeInformation::setCuisines(const QList<QString> &cuisines) {
    m_cuisines = cuisines;
    m_cuisines_isSet = true;
}

bool OAIRecipeInformation::is_cuisines_Set() const{
    return m_cuisines_isSet;
}

bool OAIRecipeInformation::is_cuisines_Valid() const{
    return m_cuisines_isValid;
}

bool OAIRecipeInformation::isDairyFree() const {
    return m_dairy_free;
}
void OAIRecipeInformation::setDairyFree(const bool &dairy_free) {
    m_dairy_free = dairy_free;
    m_dairy_free_isSet = true;
}

bool OAIRecipeInformation::is_dairy_free_Set() const{
    return m_dairy_free_isSet;
}

bool OAIRecipeInformation::is_dairy_free_Valid() const{
    return m_dairy_free_isValid;
}

QList<QString> OAIRecipeInformation::getDiets() const {
    return m_diets;
}
void OAIRecipeInformation::setDiets(const QList<QString> &diets) {
    m_diets = diets;
    m_diets_isSet = true;
}

bool OAIRecipeInformation::is_diets_Set() const{
    return m_diets_isSet;
}

bool OAIRecipeInformation::is_diets_Valid() const{
    return m_diets_isValid;
}

QString OAIRecipeInformation::getGaps() const {
    return m_gaps;
}
void OAIRecipeInformation::setGaps(const QString &gaps) {
    m_gaps = gaps;
    m_gaps_isSet = true;
}

bool OAIRecipeInformation::is_gaps_Set() const{
    return m_gaps_isSet;
}

bool OAIRecipeInformation::is_gaps_Valid() const{
    return m_gaps_isValid;
}

bool OAIRecipeInformation::isGlutenFree() const {
    return m_gluten_free;
}
void OAIRecipeInformation::setGlutenFree(const bool &gluten_free) {
    m_gluten_free = gluten_free;
    m_gluten_free_isSet = true;
}

bool OAIRecipeInformation::is_gluten_free_Set() const{
    return m_gluten_free_isSet;
}

bool OAIRecipeInformation::is_gluten_free_Valid() const{
    return m_gluten_free_isValid;
}

QString OAIRecipeInformation::getInstructions() const {
    return m_instructions;
}
void OAIRecipeInformation::setInstructions(const QString &instructions) {
    m_instructions = instructions;
    m_instructions_isSet = true;
}

bool OAIRecipeInformation::is_instructions_Set() const{
    return m_instructions_isSet;
}

bool OAIRecipeInformation::is_instructions_Valid() const{
    return m_instructions_isValid;
}

bool OAIRecipeInformation::isLowFodmap() const {
    return m_low_fodmap;
}
void OAIRecipeInformation::setLowFodmap(const bool &low_fodmap) {
    m_low_fodmap = low_fodmap;
    m_low_fodmap_isSet = true;
}

bool OAIRecipeInformation::is_low_fodmap_Set() const{
    return m_low_fodmap_isSet;
}

bool OAIRecipeInformation::is_low_fodmap_Valid() const{
    return m_low_fodmap_isValid;
}

QList<QString> OAIRecipeInformation::getOccasions() const {
    return m_occasions;
}
void OAIRecipeInformation::setOccasions(const QList<QString> &occasions) {
    m_occasions = occasions;
    m_occasions_isSet = true;
}

bool OAIRecipeInformation::is_occasions_Set() const{
    return m_occasions_isSet;
}

bool OAIRecipeInformation::is_occasions_Valid() const{
    return m_occasions_isValid;
}

bool OAIRecipeInformation::isSustainable() const {
    return m_sustainable;
}
void OAIRecipeInformation::setSustainable(const bool &sustainable) {
    m_sustainable = sustainable;
    m_sustainable_isSet = true;
}

bool OAIRecipeInformation::is_sustainable_Set() const{
    return m_sustainable_isSet;
}

bool OAIRecipeInformation::is_sustainable_Valid() const{
    return m_sustainable_isValid;
}

bool OAIRecipeInformation::isVegan() const {
    return m_vegan;
}
void OAIRecipeInformation::setVegan(const bool &vegan) {
    m_vegan = vegan;
    m_vegan_isSet = true;
}

bool OAIRecipeInformation::is_vegan_Set() const{
    return m_vegan_isSet;
}

bool OAIRecipeInformation::is_vegan_Valid() const{
    return m_vegan_isValid;
}

bool OAIRecipeInformation::isVegetarian() const {
    return m_vegetarian;
}
void OAIRecipeInformation::setVegetarian(const bool &vegetarian) {
    m_vegetarian = vegetarian;
    m_vegetarian_isSet = true;
}

bool OAIRecipeInformation::is_vegetarian_Set() const{
    return m_vegetarian_isSet;
}

bool OAIRecipeInformation::is_vegetarian_Valid() const{
    return m_vegetarian_isValid;
}

bool OAIRecipeInformation::isVeryHealthy() const {
    return m_very_healthy;
}
void OAIRecipeInformation::setVeryHealthy(const bool &very_healthy) {
    m_very_healthy = very_healthy;
    m_very_healthy_isSet = true;
}

bool OAIRecipeInformation::is_very_healthy_Set() const{
    return m_very_healthy_isSet;
}

bool OAIRecipeInformation::is_very_healthy_Valid() const{
    return m_very_healthy_isValid;
}

bool OAIRecipeInformation::isVeryPopular() const {
    return m_very_popular;
}
void OAIRecipeInformation::setVeryPopular(const bool &very_popular) {
    m_very_popular = very_popular;
    m_very_popular_isSet = true;
}

bool OAIRecipeInformation::is_very_popular_Set() const{
    return m_very_popular_isSet;
}

bool OAIRecipeInformation::is_very_popular_Valid() const{
    return m_very_popular_isValid;
}

double OAIRecipeInformation::getWeightWatcherSmartPoints() const {
    return m_weight_watcher_smart_points;
}
void OAIRecipeInformation::setWeightWatcherSmartPoints(const double &weight_watcher_smart_points) {
    m_weight_watcher_smart_points = weight_watcher_smart_points;
    m_weight_watcher_smart_points_isSet = true;
}

bool OAIRecipeInformation::is_weight_watcher_smart_points_Set() const{
    return m_weight_watcher_smart_points_isSet;
}

bool OAIRecipeInformation::is_weight_watcher_smart_points_Valid() const{
    return m_weight_watcher_smart_points_isValid;
}

QList<QString> OAIRecipeInformation::getDishTypes() const {
    return m_dish_types;
}
void OAIRecipeInformation::setDishTypes(const QList<QString> &dish_types) {
    m_dish_types = dish_types;
    m_dish_types_isSet = true;
}

bool OAIRecipeInformation::is_dish_types_Set() const{
    return m_dish_types_isSet;
}

bool OAIRecipeInformation::is_dish_types_Valid() const{
    return m_dish_types_isValid;
}

QSet<OAIRecipeInformation_extendedIngredients_inner> OAIRecipeInformation::getExtendedIngredients() const {
    return m_extended_ingredients;
}
void OAIRecipeInformation::setExtendedIngredients(const QSet<OAIRecipeInformation_extendedIngredients_inner> &extended_ingredients) {
    m_extended_ingredients = extended_ingredients;
    m_extended_ingredients_isSet = true;
}

bool OAIRecipeInformation::is_extended_ingredients_Set() const{
    return m_extended_ingredients_isSet;
}

bool OAIRecipeInformation::is_extended_ingredients_Valid() const{
    return m_extended_ingredients_isValid;
}

QString OAIRecipeInformation::getSummary() const {
    return m_summary;
}
void OAIRecipeInformation::setSummary(const QString &summary) {
    m_summary = summary;
    m_summary_isSet = true;
}

bool OAIRecipeInformation::is_summary_Set() const{
    return m_summary_isSet;
}

bool OAIRecipeInformation::is_summary_Valid() const{
    return m_summary_isValid;
}

OAIRecipeInformation_winePairing OAIRecipeInformation::getWinePairing() const {
    return m_wine_pairing;
}
void OAIRecipeInformation::setWinePairing(const OAIRecipeInformation_winePairing &wine_pairing) {
    m_wine_pairing = wine_pairing;
    m_wine_pairing_isSet = true;
}

bool OAIRecipeInformation::is_wine_pairing_Set() const{
    return m_wine_pairing_isSet;
}

bool OAIRecipeInformation::is_wine_pairing_Valid() const{
    return m_wine_pairing_isValid;
}

OAITasteInformation OAIRecipeInformation::getTaste() const {
    return m_taste;
}
void OAIRecipeInformation::setTaste(const OAITasteInformation &taste) {
    m_taste = taste;
    m_taste_isSet = true;
}

bool OAIRecipeInformation::is_taste_Set() const{
    return m_taste_isSet;
}

bool OAIRecipeInformation::is_taste_Valid() const{
    return m_taste_isValid;
}

bool OAIRecipeInformation::isSet() const {
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

        if (m_image_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_image_type_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_servings_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_ready_in_minutes_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_preparation_minutes_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_cooking_minutes_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_license_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_source_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_source_url_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_spoonacular_source_url_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_aggregate_likes_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_health_score_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_spoonacular_score_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_price_per_serving_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_analyzed_instructions.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_cheap_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_credits_text_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_cuisines.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_dairy_free_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_diets.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_gaps_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_gluten_free_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_instructions_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_low_fodmap_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_occasions.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_sustainable_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_vegan_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_vegetarian_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_very_healthy_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_very_popular_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_weight_watcher_smart_points_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_dish_types.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_extended_ingredients.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_summary_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_wine_pairing.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_taste.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRecipeInformation::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_id_isValid && m_title_isValid && m_image_isValid && m_servings_isValid && m_ready_in_minutes_isValid && m_source_name_isValid && m_source_url_isValid && m_spoonacular_source_url_isValid && m_aggregate_likes_isValid && m_health_score_isValid && m_spoonacular_score_isValid && m_price_per_serving_isValid && m_analyzed_instructions_isValid && m_cheap_isValid && m_credits_text_isValid && m_cuisines_isValid && m_dairy_free_isValid && m_diets_isValid && m_gaps_isValid && m_gluten_free_isValid && m_instructions_isValid && m_low_fodmap_isValid && m_occasions_isValid && m_sustainable_isValid && m_vegan_isValid && m_vegetarian_isValid && m_very_healthy_isValid && m_very_popular_isValid && m_weight_watcher_smart_points_isValid && m_dish_types_isValid && m_extended_ingredients_isValid && m_summary_isValid && true;
}

} // namespace OpenAPI

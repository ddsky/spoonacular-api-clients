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

/*
 * OAIGetWineRecommendation_200_response.h
 *
 * 
 */

#ifndef OAIGetWineRecommendation_200_response_H
#define OAIGetWineRecommendation_200_response_H

#include <QJsonObject>

#include "OAIGetWineRecommendation_200_response_recommendedWines_inner.h"
#include <QSet>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIGetWineRecommendation_200_response_recommendedWines_inner;

class OAIGetWineRecommendation_200_response : public OAIObject {
public:
    OAIGetWineRecommendation_200_response();
    OAIGetWineRecommendation_200_response(QString json);
    ~OAIGetWineRecommendation_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QSet<OAIGetWineRecommendation_200_response_recommendedWines_inner> getRecommendedWines() const;
    void setRecommendedWines(const QSet<OAIGetWineRecommendation_200_response_recommendedWines_inner> &recommended_wines);
    bool is_recommended_wines_Set() const;
    bool is_recommended_wines_Valid() const;

    qint32 getTotalFound() const;
    void setTotalFound(const qint32 &total_found);
    bool is_total_found_Set() const;
    bool is_total_found_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QSet<OAIGetWineRecommendation_200_response_recommendedWines_inner> m_recommended_wines;
    bool m_recommended_wines_isSet;
    bool m_recommended_wines_isValid;

    qint32 m_total_found;
    bool m_total_found_isSet;
    bool m_total_found_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIGetWineRecommendation_200_response)

#endif // OAIGetWineRecommendation_200_response_H

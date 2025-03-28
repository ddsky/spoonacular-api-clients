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
 * OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent.h
 *
 * 
 */

#ifndef OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent_H
#define OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent : public OAIObject {
public:
    OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent();
    OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent(QString json);
    ~OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    double getMin() const;
    void setMin(const double &min);
    bool is_min_Set() const;
    bool is_min_Valid() const;

    double getMax() const;
    void setMax(const double &max);
    bool is_max_Set() const;
    bool is_max_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    double m_min;
    bool m_min_isSet;
    bool m_min_isValid;

    double m_max;
    bool m_max_isSet;
    bool m_max_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent)

#endif // OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent_H

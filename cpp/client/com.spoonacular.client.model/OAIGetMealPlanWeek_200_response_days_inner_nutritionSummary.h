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

/*
 * OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary.h
 *
 * 
 */

#ifndef OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary_H
#define OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary_H

#include <QJsonObject>

#include "com.spoonacular.client.model\OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary_nutrients_inner.h"
#include <QList>
#include <QSet>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary_nutrients_inner;

class OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary : public OAIObject {
public:
    OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary();
    OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary(QString json);
    ~OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QSet<OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary_nutrients_inner> getNutrients() const;
    void setNutrients(const QSet<OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary_nutrients_inner> &nutrients);
    bool is_nutrients_Set() const;
    bool is_nutrients_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QSet<OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary_nutrients_inner> nutrients;
    bool m_nutrients_isSet;
    bool m_nutrients_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary)

#endif // OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary_H

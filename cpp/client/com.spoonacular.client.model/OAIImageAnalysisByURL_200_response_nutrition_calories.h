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

/*
 * OAIImageAnalysisByURL_200_response_nutrition_calories.h
 *
 * 
 */

#ifndef OAIImageAnalysisByURL_200_response_nutrition_calories_H
#define OAIImageAnalysisByURL_200_response_nutrition_calories_H

#include <QJsonObject>

#include "com.spoonacular.client.model\OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent.h"
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent;

class OAIImageAnalysisByURL_200_response_nutrition_calories : public OAIObject {
public:
    OAIImageAnalysisByURL_200_response_nutrition_calories();
    OAIImageAnalysisByURL_200_response_nutrition_calories(QString json);
    ~OAIImageAnalysisByURL_200_response_nutrition_calories() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    double getValue() const;
    void setValue(const double &value);
    bool is_value_Set() const;
    bool is_value_Valid() const;

    QString getUnit() const;
    void setUnit(const QString &unit);
    bool is_unit_Set() const;
    bool is_unit_Valid() const;

    OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent getConfidenceRange95Percent() const;
    void setConfidenceRange95Percent(const OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent &confidence_range95_percent);
    bool is_confidence_range95_percent_Set() const;
    bool is_confidence_range95_percent_Valid() const;

    double getStandardDeviation() const;
    void setStandardDeviation(const double &standard_deviation);
    bool is_standard_deviation_Set() const;
    bool is_standard_deviation_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    double value;
    bool m_value_isSet;
    bool m_value_isValid;

    QString unit;
    bool m_unit_isSet;
    bool m_unit_isValid;

    OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent confidence_range95_percent;
    bool m_confidence_range95_percent_isSet;
    bool m_confidence_range95_percent_isValid;

    double standard_deviation;
    bool m_standard_deviation_isSet;
    bool m_standard_deviation_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIImageAnalysisByURL_200_response_nutrition_calories)

#endif // OAIImageAnalysisByURL_200_response_nutrition_calories_H

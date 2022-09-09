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
 * OAIGetRecipeTasteByID_200_response.h
 *
 * 
 */

#ifndef OAIGetRecipeTasteByID_200_response_H
#define OAIGetRecipeTasteByID_200_response_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIGetRecipeTasteByID_200_response : public OAIObject {
public:
    OAIGetRecipeTasteByID_200_response();
    OAIGetRecipeTasteByID_200_response(QString json);
    ~OAIGetRecipeTasteByID_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    double getSweetness() const;
    void setSweetness(const double &sweetness);
    bool is_sweetness_Set() const;
    bool is_sweetness_Valid() const;

    double getSaltiness() const;
    void setSaltiness(const double &saltiness);
    bool is_saltiness_Set() const;
    bool is_saltiness_Valid() const;

    double getSourness() const;
    void setSourness(const double &sourness);
    bool is_sourness_Set() const;
    bool is_sourness_Valid() const;

    double getBitterness() const;
    void setBitterness(const double &bitterness);
    bool is_bitterness_Set() const;
    bool is_bitterness_Valid() const;

    double getSavoriness() const;
    void setSavoriness(const double &savoriness);
    bool is_savoriness_Set() const;
    bool is_savoriness_Valid() const;

    double getFattiness() const;
    void setFattiness(const double &fattiness);
    bool is_fattiness_Set() const;
    bool is_fattiness_Valid() const;

    double getSpiciness() const;
    void setSpiciness(const double &spiciness);
    bool is_spiciness_Set() const;
    bool is_spiciness_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    double sweetness;
    bool m_sweetness_isSet;
    bool m_sweetness_isValid;

    double saltiness;
    bool m_saltiness_isSet;
    bool m_saltiness_isValid;

    double sourness;
    bool m_sourness_isSet;
    bool m_sourness_isValid;

    double bitterness;
    bool m_bitterness_isSet;
    bool m_bitterness_isValid;

    double savoriness;
    bool m_savoriness_isSet;
    bool m_savoriness_isValid;

    double fattiness;
    bool m_fattiness_isSet;
    bool m_fattiness_isValid;

    double spiciness;
    bool m_spiciness_isSet;
    bool m_spiciness_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIGetRecipeTasteByID_200_response)

#endif // OAIGetRecipeTasteByID_200_response_H

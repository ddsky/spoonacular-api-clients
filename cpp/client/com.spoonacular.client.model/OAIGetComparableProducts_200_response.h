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
 * OAIGetComparableProducts_200_response.h
 *
 * 
 */

#ifndef OAIGetComparableProducts_200_response_H
#define OAIGetComparableProducts_200_response_H

#include <QJsonObject>

#include "com.spoonacular.client.model\OAIGetComparableProducts_200_response_comparableProducts.h"

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIGetComparableProducts_200_response_comparableProducts;

class OAIGetComparableProducts_200_response : public OAIObject {
public:
    OAIGetComparableProducts_200_response();
    OAIGetComparableProducts_200_response(QString json);
    ~OAIGetComparableProducts_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAIGetComparableProducts_200_response_comparableProducts getComparableProducts() const;
    void setComparableProducts(const OAIGetComparableProducts_200_response_comparableProducts &comparable_products);
    bool is_comparable_products_Set() const;
    bool is_comparable_products_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAIGetComparableProducts_200_response_comparableProducts comparable_products;
    bool m_comparable_products_isSet;
    bool m_comparable_products_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIGetComparableProducts_200_response)

#endif // OAIGetComparableProducts_200_response_H

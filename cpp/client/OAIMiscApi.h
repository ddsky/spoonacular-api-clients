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

#ifndef OAI_OAIMiscApi_H
#define OAI_OAIMiscApi_H

#include "OAIHelpers.h"
#include "OAIHttpRequest.h"
#include "OAIServerConfiguration.h"
#include "OAIOauth.h"

#include "OAIDetectFoodInText_200_response.h"
#include "OAIGetARandomFoodJoke_200_response.h"
#include "OAIGetConversationSuggests_200_response.h"
#include "OAIGetRandomFoodTrivia_200_response.h"
#include "OAIImageAnalysisByURL_200_response.h"
#include "OAIImageClassificationByURL_200_response.h"
#include "OAISearchAllFood_200_response.h"
#include "OAISearchCustomFoods_200_response.h"
#include "OAISearchFoodVideos_200_response.h"
#include "OAISearchSiteContent_200_response.h"
#include "OAITalkToChatbot_200_response.h"
#include <QString>

#include <QObject>
#include <QByteArray>
#include <QStringList>
#include <QList>
#include <QNetworkAccessManager>

namespace OpenAPI {

class OAIMiscApi : public QObject {
    Q_OBJECT

public:
    OAIMiscApi(const int timeOut = 0);
    ~OAIMiscApi();

    void initializeServerConfigs();
    int setDefaultServerValue(int serverIndex,const QString &operation, const QString &variable,const QString &val);
    void setServerIndex(const QString &operation, int serverIndex);
    void setApiKey(const QString &apiKeyName, const QString &apiKey);
    void setBearerToken(const QString &token);
    void setUsername(const QString &username);
    void setPassword(const QString &password);
    void setTimeOut(const int timeOut);
    void setWorkingDirectory(const QString &path);
    void setNetworkAccessManager(QNetworkAccessManager* manager);
    int addServerConfiguration(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables = QMap<QString, OAIServerVariable>());
    void setNewServerForAllOperations(const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void setNewServer(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void addHeaders(const QString &key, const QString &value);
    void enableRequestCompression();
    void enableResponseCompression();
    void abortRequests();
    QString getParamStylePrefix(const QString &style);
    QString getParamStyleSuffix(const QString &style);
    QString getParamStyleDelimiter(const QString &style, const QString &name, bool isExplode);

    /**
    * @param[in]  content_type QString [optional]
    */
    void detectFoodInText(const ::OpenAPI::OptionalParam<QString> &content_type = ::OpenAPI::OptionalParam<QString>());


    void getARandomFoodJoke();

    /**
    * @param[in]  query QString [required]
    * @param[in]  number double [optional]
    */
    void getConversationSuggests(const QString &query, const ::OpenAPI::OptionalParam<double> &number = ::OpenAPI::OptionalParam<double>());


    void getRandomFoodTrivia();

    /**
    * @param[in]  image_url QString [required]
    */
    void imageAnalysisByURL(const QString &image_url);

    /**
    * @param[in]  image_url QString [required]
    */
    void imageClassificationByURL(const QString &image_url);

    /**
    * @param[in]  query QString [required]
    * @param[in]  offset qint32 [optional]
    * @param[in]  number qint32 [optional]
    */
    void searchAllFood(const QString &query, const ::OpenAPI::OptionalParam<qint32> &offset = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<qint32> &number = ::OpenAPI::OptionalParam<qint32>());

    /**
    * @param[in]  username QString [required]
    * @param[in]  hash QString [required]
    * @param[in]  query QString [optional]
    * @param[in]  offset qint32 [optional]
    * @param[in]  number qint32 [optional]
    */
    void searchCustomFoods(const QString &username, const QString &hash, const ::OpenAPI::OptionalParam<QString> &query = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<qint32> &offset = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<qint32> &number = ::OpenAPI::OptionalParam<qint32>());

    /**
    * @param[in]  query QString [optional]
    * @param[in]  type QString [optional]
    * @param[in]  cuisine QString [optional]
    * @param[in]  diet QString [optional]
    * @param[in]  include_ingredients QString [optional]
    * @param[in]  exclude_ingredients QString [optional]
    * @param[in]  min_length double [optional]
    * @param[in]  max_length double [optional]
    * @param[in]  offset qint32 [optional]
    * @param[in]  number qint32 [optional]
    */
    void searchFoodVideos(const ::OpenAPI::OptionalParam<QString> &query = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &type = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &cuisine = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &diet = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &include_ingredients = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &exclude_ingredients = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<double> &min_length = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<double> &max_length = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<qint32> &offset = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<qint32> &number = ::OpenAPI::OptionalParam<qint32>());

    /**
    * @param[in]  query QString [required]
    */
    void searchSiteContent(const QString &query);

    /**
    * @param[in]  text QString [required]
    * @param[in]  context_id QString [optional]
    */
    void talkToChatbot(const QString &text, const ::OpenAPI::OptionalParam<QString> &context_id = ::OpenAPI::OptionalParam<QString>());


private:
    QMap<QString,int> _serverIndices;
    QMap<QString,QList<OAIServerConfiguration>> _serverConfigs;
    QMap<QString, QString> _apiKeys;
    QString _bearerToken;
    QString _username;
    QString _password;
    int _timeOut;
    QString _workingDirectory;
    QNetworkAccessManager* _manager;
    QMap<QString, QString> _defaultHeaders;
    bool _isResponseCompressionEnabled;
    bool _isRequestCompressionEnabled;
    OAIHttpRequestInput _latestInput;
    OAIHttpRequestWorker *_latestWorker;
    QStringList _latestScope;
    OauthCode _authFlow;
    OauthImplicit _implicitFlow;
    OauthCredentials _credentialFlow;
    OauthPassword _passwordFlow;
    int _OauthMethod = 0;

    void detectFoodInTextCallback(OAIHttpRequestWorker *worker);
    void getARandomFoodJokeCallback(OAIHttpRequestWorker *worker);
    void getConversationSuggestsCallback(OAIHttpRequestWorker *worker);
    void getRandomFoodTriviaCallback(OAIHttpRequestWorker *worker);
    void imageAnalysisByURLCallback(OAIHttpRequestWorker *worker);
    void imageClassificationByURLCallback(OAIHttpRequestWorker *worker);
    void searchAllFoodCallback(OAIHttpRequestWorker *worker);
    void searchCustomFoodsCallback(OAIHttpRequestWorker *worker);
    void searchFoodVideosCallback(OAIHttpRequestWorker *worker);
    void searchSiteContentCallback(OAIHttpRequestWorker *worker);
    void talkToChatbotCallback(OAIHttpRequestWorker *worker);

Q_SIGNALS:

    void detectFoodInTextSignal(OAIDetectFoodInText_200_response summary);
    void getARandomFoodJokeSignal(OAIGetARandomFoodJoke_200_response summary);
    void getConversationSuggestsSignal(OAIGetConversationSuggests_200_response summary);
    void getRandomFoodTriviaSignal(OAIGetRandomFoodTrivia_200_response summary);
    void imageAnalysisByURLSignal(OAIImageAnalysisByURL_200_response summary);
    void imageClassificationByURLSignal(OAIImageClassificationByURL_200_response summary);
    void searchAllFoodSignal(OAISearchAllFood_200_response summary);
    void searchCustomFoodsSignal(OAISearchCustomFoods_200_response summary);
    void searchFoodVideosSignal(OAISearchFoodVideos_200_response summary);
    void searchSiteContentSignal(OAISearchSiteContent_200_response summary);
    void talkToChatbotSignal(OAITalkToChatbot_200_response summary);

    void detectFoodInTextSignalFull(OAIHttpRequestWorker *worker, OAIDetectFoodInText_200_response summary);
    void getARandomFoodJokeSignalFull(OAIHttpRequestWorker *worker, OAIGetARandomFoodJoke_200_response summary);
    void getConversationSuggestsSignalFull(OAIHttpRequestWorker *worker, OAIGetConversationSuggests_200_response summary);
    void getRandomFoodTriviaSignalFull(OAIHttpRequestWorker *worker, OAIGetRandomFoodTrivia_200_response summary);
    void imageAnalysisByURLSignalFull(OAIHttpRequestWorker *worker, OAIImageAnalysisByURL_200_response summary);
    void imageClassificationByURLSignalFull(OAIHttpRequestWorker *worker, OAIImageClassificationByURL_200_response summary);
    void searchAllFoodSignalFull(OAIHttpRequestWorker *worker, OAISearchAllFood_200_response summary);
    void searchCustomFoodsSignalFull(OAIHttpRequestWorker *worker, OAISearchCustomFoods_200_response summary);
    void searchFoodVideosSignalFull(OAIHttpRequestWorker *worker, OAISearchFoodVideos_200_response summary);
    void searchSiteContentSignalFull(OAIHttpRequestWorker *worker, OAISearchSiteContent_200_response summary);
    void talkToChatbotSignalFull(OAIHttpRequestWorker *worker, OAITalkToChatbot_200_response summary);

    Q_DECL_DEPRECATED_X("Use detectFoodInTextSignalError() instead")
    void detectFoodInTextSignalE(OAIDetectFoodInText_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void detectFoodInTextSignalError(OAIDetectFoodInText_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getARandomFoodJokeSignalError() instead")
    void getARandomFoodJokeSignalE(OAIGetARandomFoodJoke_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void getARandomFoodJokeSignalError(OAIGetARandomFoodJoke_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getConversationSuggestsSignalError() instead")
    void getConversationSuggestsSignalE(OAIGetConversationSuggests_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void getConversationSuggestsSignalError(OAIGetConversationSuggests_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getRandomFoodTriviaSignalError() instead")
    void getRandomFoodTriviaSignalE(OAIGetRandomFoodTrivia_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void getRandomFoodTriviaSignalError(OAIGetRandomFoodTrivia_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use imageAnalysisByURLSignalError() instead")
    void imageAnalysisByURLSignalE(OAIImageAnalysisByURL_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void imageAnalysisByURLSignalError(OAIImageAnalysisByURL_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use imageClassificationByURLSignalError() instead")
    void imageClassificationByURLSignalE(OAIImageClassificationByURL_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void imageClassificationByURLSignalError(OAIImageClassificationByURL_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchAllFoodSignalError() instead")
    void searchAllFoodSignalE(OAISearchAllFood_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchAllFoodSignalError(OAISearchAllFood_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchCustomFoodsSignalError() instead")
    void searchCustomFoodsSignalE(OAISearchCustomFoods_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchCustomFoodsSignalError(OAISearchCustomFoods_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchFoodVideosSignalError() instead")
    void searchFoodVideosSignalE(OAISearchFoodVideos_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchFoodVideosSignalError(OAISearchFoodVideos_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchSiteContentSignalError() instead")
    void searchSiteContentSignalE(OAISearchSiteContent_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchSiteContentSignalError(OAISearchSiteContent_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use talkToChatbotSignalError() instead")
    void talkToChatbotSignalE(OAITalkToChatbot_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void talkToChatbotSignalError(OAITalkToChatbot_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);

    Q_DECL_DEPRECATED_X("Use detectFoodInTextSignalErrorFull() instead")
    void detectFoodInTextSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void detectFoodInTextSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getARandomFoodJokeSignalErrorFull() instead")
    void getARandomFoodJokeSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void getARandomFoodJokeSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getConversationSuggestsSignalErrorFull() instead")
    void getConversationSuggestsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void getConversationSuggestsSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getRandomFoodTriviaSignalErrorFull() instead")
    void getRandomFoodTriviaSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void getRandomFoodTriviaSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use imageAnalysisByURLSignalErrorFull() instead")
    void imageAnalysisByURLSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void imageAnalysisByURLSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use imageClassificationByURLSignalErrorFull() instead")
    void imageClassificationByURLSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void imageClassificationByURLSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchAllFoodSignalErrorFull() instead")
    void searchAllFoodSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchAllFoodSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchCustomFoodsSignalErrorFull() instead")
    void searchCustomFoodsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchCustomFoodsSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchFoodVideosSignalErrorFull() instead")
    void searchFoodVideosSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchFoodVideosSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchSiteContentSignalErrorFull() instead")
    void searchSiteContentSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchSiteContentSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use talkToChatbotSignalErrorFull() instead")
    void talkToChatbotSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void talkToChatbotSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);

    void abortRequestsSignal();
    void allPendingRequestsCompleted();

public Q_SLOTS:
    void tokenAvailable();
};

} // namespace OpenAPI
#endif
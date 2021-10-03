#import "OAIRecipesApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIInlineObject.h"
#import "OAIInlineResponse200.h"
#import "OAIInlineResponse2001.h"
#import "OAIInlineResponse20010.h"
#import "OAIInlineResponse20011.h"
#import "OAIInlineResponse20012.h"
#import "OAIInlineResponse20013.h"
#import "OAIInlineResponse20014.h"
#import "OAIInlineResponse20015.h"
#import "OAIInlineResponse20016.h"
#import "OAIInlineResponse20017.h"
#import "OAIInlineResponse20018.h"
#import "OAIInlineResponse20019.h"
#import "OAIInlineResponse2002.h"
#import "OAIInlineResponse20020.h"
#import "OAIInlineResponse20021.h"
#import "OAIInlineResponse20023.h"
#import "OAIInlineResponse2003.h"
#import "OAIInlineResponse2004.h"
#import "OAIInlineResponse2005.h"
#import "OAIInlineResponse20050.h"
#import "OAIInlineResponse2006.h"
#import "OAIInlineResponse2007.h"
#import "OAIInlineResponse2008.h"
#import "OAIInlineResponse2009.h"


@interface OAIRecipesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIRecipesApi

NSString* kOAIRecipesApiErrorDomain = @"OAIRecipesApiErrorDomain";
NSInteger kOAIRecipesApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Analyze a Recipe Search Query
/// Parse a recipe search query to find out its intention.
///  @param q The recipe search query. 
///
///  @returns OAIInlineResponse20018*
///
-(NSURLSessionTask*) analyzeARecipeSearchQueryWithQ: (NSString*) q
    completionHandler: (void (^)(OAIInlineResponse20018* output, NSError* error)) handler {
    // verify the required parameter 'q' is set
    if (q == nil) {
        NSParameterAssert(q);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"q"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/queries/analyze"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse20018*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20018*)data, error);
                                }
                            }];
}

///
/// Analyze Recipe Instructions
/// This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.
///  @param contentType The content type. (optional)
///
///  @returns OAIInlineResponse20016*
///
-(NSURLSessionTask*) analyzeRecipeInstructionsWithContentType: (NSString*) contentType
    completionHandler: (void (^)(OAIInlineResponse20016* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/analyzeInstructions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (contentType != nil) {
        headerParams[@"Content-Type"] = contentType;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse20016*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20016*)data, error);
                                }
                            }];
}

///
/// Autocomplete Recipe Search
/// Autocomplete a partial input to suggest possible recipe names.
///  @param query The (natural language) search query. (optional)
///
///  @param number The maximum number of items to return (between 1 and 100). Defaults to 10. (optional, default to @10)
///
///  @returns NSArray<OAIInlineResponse2007>*
///
-(NSURLSessionTask*) autocompleteRecipeSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
    completionHandler: (void (^)(NSArray<OAIInlineResponse2007>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/autocomplete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIInlineResponse2007>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIInlineResponse2007>*)data, error);
                                }
                            }];
}

///
/// Classify Cuisine
/// Classify the recipe's cuisine.
///  @param contentType The content type. (optional)
///
///  @returns OAIInlineResponse20017*
///
-(NSURLSessionTask*) classifyCuisineWithContentType: (NSString*) contentType
    completionHandler: (void (^)(OAIInlineResponse20017* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/cuisine"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (contentType != nil) {
        headerParams[@"Content-Type"] = contentType;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse20017*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20017*)data, error);
                                }
                            }];
}

///
/// Compute Glycemic Load
/// Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.
///  @param inlineObject  
///
///  @param language The language of the input. Either 'en' or 'de'. (optional)
///
///  @returns OAIInlineResponse20023*
///
-(NSURLSessionTask*) computeGlycemicLoadWithInlineObject: (OAIInlineObject*) inlineObject
    language: (NSString*) language
    completionHandler: (void (^)(OAIInlineResponse20023* output, NSError* error)) handler {
    // verify the required parameter 'inlineObject' is set
    if (inlineObject == nil) {
        NSParameterAssert(inlineObject);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inlineObject"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/ingredients/glycemicLoad"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (language != nil) {
        queryParams[@"language"] = language;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = inlineObject;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse20023*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20023*)data, error);
                                }
                            }];
}

///
/// Convert Amounts
/// Convert amounts like \"2 cups of flour to grams\".
///  @param ingredientName The ingredient which you want to convert. 
///
///  @param sourceAmount The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\". 
///
///  @param sourceUnit The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\" 
///
///  @param targetUnit The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\" 
///
///  @returns OAIInlineResponse20019*
///
-(NSURLSessionTask*) convertAmountsWithIngredientName: (NSString*) ingredientName
    sourceAmount: (NSNumber*) sourceAmount
    sourceUnit: (NSString*) sourceUnit
    targetUnit: (NSString*) targetUnit
    completionHandler: (void (^)(OAIInlineResponse20019* output, NSError* error)) handler {
    // verify the required parameter 'ingredientName' is set
    if (ingredientName == nil) {
        NSParameterAssert(ingredientName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ingredientName"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sourceAmount' is set
    if (sourceAmount == nil) {
        NSParameterAssert(sourceAmount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sourceAmount"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sourceUnit' is set
    if (sourceUnit == nil) {
        NSParameterAssert(sourceUnit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sourceUnit"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'targetUnit' is set
    if (targetUnit == nil) {
        NSParameterAssert(targetUnit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"targetUnit"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/convert"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (ingredientName != nil) {
        queryParams[@"ingredientName"] = ingredientName;
    }
    if (sourceAmount != nil) {
        queryParams[@"sourceAmount"] = sourceAmount;
    }
    if (sourceUnit != nil) {
        queryParams[@"sourceUnit"] = sourceUnit;
    }
    if (targetUnit != nil) {
        queryParams[@"targetUnit"] = targetUnit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse20019*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20019*)data, error);
                                }
                            }];
}

///
/// Create Recipe Card
/// Generate a recipe card for a recipe.
///  @param contentType The content type. (optional)
///
///  @returns OAIInlineResponse20015*
///
-(NSURLSessionTask*) createRecipeCardWithContentType: (NSString*) contentType
    completionHandler: (void (^)(OAIInlineResponse20015* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/visualizeRecipe"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (contentType != nil) {
        headerParams[@"Content-Type"] = contentType;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse20015*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20015*)data, error);
                                }
                            }];
}

///
/// Equipment by ID Image
/// Visualize a recipe's equipment list as an image.
///  @param _id The recipe id. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) equipmentByIDImageWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/equipmentWidget.png"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"image/png"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Extract Recipe from Website
/// This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.
///  @param url The URL of the recipe page. 
///
///  @param forceExtraction If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. (optional)
///
///  @param analyze If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. (optional)
///
///  @param includeNutrition Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional, default to @(NO))
///
///  @param includeTaste Whether taste data should be added to correctly parsed ingredients. (optional, default to @(NO))
///
///  @returns OAIInlineResponse2003*
///
-(NSURLSessionTask*) extractRecipeFromWebsiteWithUrl: (NSString*) url
    forceExtraction: (NSNumber*) forceExtraction
    analyze: (NSNumber*) analyze
    includeNutrition: (NSNumber*) includeNutrition
    includeTaste: (NSNumber*) includeTaste
    completionHandler: (void (^)(OAIInlineResponse2003* output, NSError* error)) handler {
    // verify the required parameter 'url' is set
    if (url == nil) {
        NSParameterAssert(url);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"url"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/extract"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (url != nil) {
        queryParams[@"url"] = url;
    }
    if (forceExtraction != nil) {
        queryParams[@"forceExtraction"] = [forceExtraction isEqual:@(YES)] ? @"true" : @"false";
    }
    if (analyze != nil) {
        queryParams[@"analyze"] = [analyze isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeNutrition != nil) {
        queryParams[@"includeNutrition"] = [includeNutrition isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeTaste != nil) {
        queryParams[@"includeTaste"] = [includeTaste isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse2003*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse2003*)data, error);
                                }
                            }];
}

///
/// Get Analyzed Recipe Instructions
/// Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.
///  @param _id The item's id. 
///
///  @param stepBreakdown Whether to break down the recipe steps even more. (optional)
///
///  @returns OAIInlineResponse20013*
///
-(NSURLSessionTask*) getAnalyzedRecipeInstructionsWithId: (NSNumber*) _id
    stepBreakdown: (NSNumber*) stepBreakdown
    completionHandler: (void (^)(OAIInlineResponse20013* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/analyzedInstructions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (stepBreakdown != nil) {
        queryParams[@"stepBreakdown"] = [stepBreakdown isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse20013*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20013*)data, error);
                                }
                            }];
}

///
/// Get Random Recipes
/// Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
///  @param limitLicense Whether the recipes should have an open license that allows display with proper attribution. (optional, default to @(YES))
///
///  @param tags The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. (optional)
///
///  @param number The maximum number of items to return (between 1 and 100). Defaults to 10. (optional, default to @10)
///
///  @returns OAIInlineResponse2006*
///
-(NSURLSessionTask*) getRandomRecipesWithLimitLicense: (NSNumber*) limitLicense
    tags: (NSString*) tags
    number: (NSNumber*) number
    completionHandler: (void (^)(OAIInlineResponse2006* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/random"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (limitLicense != nil) {
        queryParams[@"limitLicense"] = [limitLicense isEqual:@(YES)] ? @"true" : @"false";
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse2006*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse2006*)data, error);
                                }
                            }];
}

///
/// Equipment by ID
/// Get a recipe's equipment list.
///  @param _id The item's id. 
///
///  @returns OAIInlineResponse2009*
///
-(NSURLSessionTask*) getRecipeEquipmentByIDWithId: (NSNumber*) _id
    completionHandler: (void (^)(OAIInlineResponse2009* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/equipmentWidget.json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse2009*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse2009*)data, error);
                                }
                            }];
}

///
/// Get Recipe Information
/// Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
///  @param _id The item's id. 
///
///  @param includeNutrition Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional, default to @(NO))
///
///  @returns OAIInlineResponse2003*
///
-(NSURLSessionTask*) getRecipeInformationWithId: (NSNumber*) _id
    includeNutrition: (NSNumber*) includeNutrition
    completionHandler: (void (^)(OAIInlineResponse2003* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/information"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (includeNutrition != nil) {
        queryParams[@"includeNutrition"] = [includeNutrition isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse2003*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse2003*)data, error);
                                }
                            }];
}

///
/// Get Recipe Information Bulk
/// Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
///  @param ids A comma-separated list of recipe ids. 
///
///  @param includeNutrition Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional, default to @(NO))
///
///  @returns NSArray<OAIInlineResponse2004>*
///
-(NSURLSessionTask*) getRecipeInformationBulkWithIds: (NSString*) ids
    includeNutrition: (NSNumber*) includeNutrition
    completionHandler: (void (^)(NSArray<OAIInlineResponse2004>* output, NSError* error)) handler {
    // verify the required parameter 'ids' is set
    if (ids == nil) {
        NSParameterAssert(ids);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ids"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/informationBulk"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (ids != nil) {
        queryParams[@"ids"] = ids;
    }
    if (includeNutrition != nil) {
        queryParams[@"includeNutrition"] = [includeNutrition isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIInlineResponse2004>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIInlineResponse2004>*)data, error);
                                }
                            }];
}

///
/// Ingredients by ID
/// Get a recipe's ingredient list.
///  @param _id The item's id. 
///
///  @returns OAIInlineResponse20011*
///
-(NSURLSessionTask*) getRecipeIngredientsByIDWithId: (NSNumber*) _id
    completionHandler: (void (^)(OAIInlineResponse20011* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/ingredientWidget.json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse20011*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20011*)data, error);
                                }
                            }];
}

///
/// Nutrition by ID
/// Get a recipe's nutrition data.
///  @param _id The item's id. 
///
///  @returns OAIInlineResponse20012*
///
-(NSURLSessionTask*) getRecipeNutritionWidgetByIDWithId: (NSNumber*) _id
    completionHandler: (void (^)(OAIInlineResponse20012* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/nutritionWidget.json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse20012*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20012*)data, error);
                                }
                            }];
}

///
/// Price Breakdown by ID
/// Get a recipe's price breakdown data.
///  @param _id The item's id. 
///
///  @returns OAIInlineResponse20010*
///
-(NSURLSessionTask*) getRecipePriceBreakdownByIDWithId: (NSNumber*) _id
    completionHandler: (void (^)(OAIInlineResponse20010* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/priceBreakdownWidget.json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse20010*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20010*)data, error);
                                }
                            }];
}

///
/// Taste by ID
/// Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
///  @param _id The item's id. 
///
///  @param normalize Normalize to the strongest taste. (optional, default to @(YES))
///
///  @returns OAIInlineResponse2008*
///
-(NSURLSessionTask*) getRecipeTasteByIDWithId: (NSNumber*) _id
    normalize: (NSNumber*) normalize
    completionHandler: (void (^)(OAIInlineResponse2008* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/tasteWidget.json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (normalize != nil) {
        queryParams[@"normalize"] = [normalize isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse2008*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse2008*)data, error);
                                }
                            }];
}

///
/// Get Similar Recipes
/// Find recipes which are similar to the given one.
///  @param _id The item's id. 
///
///  @param number The maximum number of items to return (between 1 and 100). Defaults to 10. (optional, default to @10)
///
///  @param limitLicense Whether the recipes should have an open license that allows display with proper attribution. (optional, default to @(YES))
///
///  @returns NSArray<OAIInlineResponse2005>*
///
-(NSURLSessionTask*) getSimilarRecipesWithId: (NSNumber*) _id
    number: (NSNumber*) number
    limitLicense: (NSNumber*) limitLicense
    completionHandler: (void (^)(NSArray<OAIInlineResponse2005>* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/similar"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    if (limitLicense != nil) {
        queryParams[@"limitLicense"] = [limitLicense isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIInlineResponse2005>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIInlineResponse2005>*)data, error);
                                }
                            }];
}

///
/// Guess Nutrition by Dish Name
/// Estimate the macronutrients of a dish based on its title.
///  @param title The title of the dish. 
///
///  @returns OAIInlineResponse20021*
///
-(NSURLSessionTask*) guessNutritionByDishNameWithTitle: (NSString*) title
    completionHandler: (void (^)(OAIInlineResponse20021* output, NSError* error)) handler {
    // verify the required parameter 'title' is set
    if (title == nil) {
        NSParameterAssert(title);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"title"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/guessNutrition"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse20021*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20021*)data, error);
                                }
                            }];
}

///
/// Ingredients by ID Image
/// Visualize a recipe's ingredient list.
///  @param _id The recipe id. 
///
///  @param measure Whether the the measures should be 'us' or 'metric'. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) ingredientsByIDImageWithId: (NSNumber*) _id
    measure: (NSString*) measure
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/ingredientWidget.png"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (measure != nil) {
        queryParams[@"measure"] = measure;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"image/png"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Parse Ingredients
/// Extract an ingredient from plain text.
///  @param contentType The content type. (optional)
///
///  @param language The language of the input. Either 'en' or 'de'. (optional)
///
///  @returns NSArray<OAIInlineResponse20020>*
///
-(NSURLSessionTask*) parseIngredientsWithContentType: (NSString*) contentType
    language: (NSString*) language
    completionHandler: (void (^)(NSArray<OAIInlineResponse20020>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/parseIngredients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (language != nil) {
        queryParams[@"language"] = language;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (contentType != nil) {
        headerParams[@"Content-Type"] = contentType;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIInlineResponse20020>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIInlineResponse20020>*)data, error);
                                }
                            }];
}

///
/// Price Breakdown by ID Image
/// Visualize a recipe's price breakdown.
///  @param _id The recipe id. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) priceBreakdownByIDImageWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/priceBreakdownWidget.png"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"image/png"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Quick Answer
/// Answer a nutrition related natural language question.
///  @param q The nutrition related question. 
///
///  @returns OAIInlineResponse20050*
///
-(NSURLSessionTask*) quickAnswerWithQ: (NSString*) q
    completionHandler: (void (^)(OAIInlineResponse20050* output, NSError* error)) handler {
    // verify the required parameter 'q' is set
    if (q == nil) {
        NSParameterAssert(q);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"q"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/quickAnswer"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse20050*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20050*)data, error);
                                }
                            }];
}

///
/// Recipe Nutrition by ID Image
/// Visualize a recipe's nutritional information as an image.
///  @param _id The recipe id. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) recipeNutritionByIDImageWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/nutritionWidget.png"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"image/png"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Recipe Nutrition Label Image
/// Get a recipe's nutrition label as an image.
///  @param _id The recipe id. 
///
///  @param showOptionalNutrients Whether to show optional nutrients. (optional)
///
///  @param showZeroValues Whether to show zero values. (optional)
///
///  @param showIngredients Whether to show a list of ingredients. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) recipeNutritionLabelImageWithId: (NSNumber*) _id
    showOptionalNutrients: (NSNumber*) showOptionalNutrients
    showZeroValues: (NSNumber*) showZeroValues
    showIngredients: (NSNumber*) showIngredients
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/nutritionLabel.png"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (showOptionalNutrients != nil) {
        queryParams[@"showOptionalNutrients"] = [showOptionalNutrients isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showZeroValues != nil) {
        queryParams[@"showZeroValues"] = [showZeroValues isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showIngredients != nil) {
        queryParams[@"showIngredients"] = [showIngredients isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"image/png"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Recipe Nutrition Label Widget
/// Get a recipe's nutrition label as an HTML widget.
///  @param _id The recipe id. 
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional, default to @(YES))
///
///  @param showOptionalNutrients Whether to show optional nutrients. (optional)
///
///  @param showZeroValues Whether to show zero values. (optional)
///
///  @param showIngredients Whether to show a list of ingredients. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) recipeNutritionLabelWidgetWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    showOptionalNutrients: (NSNumber*) showOptionalNutrients
    showZeroValues: (NSNumber*) showZeroValues
    showIngredients: (NSNumber*) showIngredients
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/nutritionLabel"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (defaultCss != nil) {
        queryParams[@"defaultCss"] = [defaultCss isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showOptionalNutrients != nil) {
        queryParams[@"showOptionalNutrients"] = [showOptionalNutrients isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showZeroValues != nil) {
        queryParams[@"showZeroValues"] = [showZeroValues isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showIngredients != nil) {
        queryParams[@"showIngredients"] = [showIngredients isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Recipe Taste by ID Image
/// Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
///  @param _id The recipe id. 
///
///  @param normalize Normalize to the strongest taste. (optional)
///
///  @param rgb Red, green, blue values for the chart color. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) recipeTasteByIDImageWithId: (NSNumber*) _id
    normalize: (NSNumber*) normalize
    rgb: (NSString*) rgb
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/tasteWidget.png"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (normalize != nil) {
        queryParams[@"normalize"] = [normalize isEqual:@(YES)] ? @"true" : @"false";
    }
    if (rgb != nil) {
        queryParams[@"rgb"] = rgb;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"image/png"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Search Recipes
/// Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.
///  @param query The (natural language) search query. (optional)
///
///  @param cuisine The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines. (optional)
///
///  @param excludeCuisine The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines. (optional)
///
///  @param diet The diet for which the recipes must be suitable. See a full list of supported diets. (optional)
///
///  @param intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional)
///
///  @param equipment The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\". (optional)
///
///  @param includeIngredients A comma-separated list of ingredients that should/must be used in the recipes. (optional)
///
///  @param excludeIngredients A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional)
///
///  @param type The type of recipe. See a full list of supported meal types. (optional)
///
///  @param instructionsRequired Whether the recipes must have instructions. (optional)
///
///  @param fillIngredients Add information about the ingredients and whether they are used or missing in relation to the query. (optional)
///
///  @param addRecipeInformation If set to true, you get more information about the recipes returned. (optional)
///
///  @param addRecipeNutrition If set to true, you get nutritional information about each recipes returned. (optional)
///
///  @param author The username of the recipe author. (optional)
///
///  @param tags The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. (optional)
///
///  @param recipeBoxId The id of the recipe box to which the search should be limited to. (optional)
///
///  @param titleMatch Enter text that must be found in the title of the recipes. (optional)
///
///  @param maxReadyTime The maximum time in minutes it should take to prepare and cook the recipe. (optional)
///
///  @param ignorePantry Whether to ignore typical pantry items, such as water, salt, flour, etc. (optional, default to @(NO))
///
///  @param sort The strategy to sort recipes by. See a full list of supported sorting options. (optional)
///
///  @param sortDirection The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). (optional)
///
///  @param minCarbs The minimum amount of carbohydrates in grams the recipe must have. (optional)
///
///  @param maxCarbs The maximum amount of carbohydrates in grams the recipe can have. (optional)
///
///  @param minProtein The minimum amount of protein in grams the recipe must have. (optional)
///
///  @param maxProtein The maximum amount of protein in grams the recipe can have. (optional)
///
///  @param minCalories The minimum amount of calories the recipe must have. (optional)
///
///  @param maxCalories The maximum amount of calories the recipe can have. (optional)
///
///  @param minFat The minimum amount of fat in grams the recipe must have. (optional)
///
///  @param maxFat The maximum amount of fat in grams the recipe can have. (optional)
///
///  @param minAlcohol The minimum amount of alcohol in grams the recipe must have. (optional)
///
///  @param maxAlcohol The maximum amount of alcohol in grams the recipe can have. (optional)
///
///  @param minCaffeine The minimum amount of caffeine in milligrams the recipe must have. (optional)
///
///  @param maxCaffeine The maximum amount of caffeine in milligrams the recipe can have. (optional)
///
///  @param minCopper The minimum amount of copper in milligrams the recipe must have. (optional)
///
///  @param maxCopper The maximum amount of copper in milligrams the recipe can have. (optional)
///
///  @param minCalcium The minimum amount of calcium in milligrams the recipe must have. (optional)
///
///  @param maxCalcium The maximum amount of calcium in milligrams the recipe can have. (optional)
///
///  @param minCholine The minimum amount of choline in milligrams the recipe must have. (optional)
///
///  @param maxCholine The maximum amount of choline in milligrams the recipe can have. (optional)
///
///  @param minCholesterol The minimum amount of cholesterol in milligrams the recipe must have. (optional)
///
///  @param maxCholesterol The maximum amount of cholesterol in milligrams the recipe can have. (optional)
///
///  @param minFluoride The minimum amount of fluoride in milligrams the recipe must have. (optional)
///
///  @param maxFluoride The maximum amount of fluoride in milligrams the recipe can have. (optional)
///
///  @param minSaturatedFat The minimum amount of saturated fat in grams the recipe must have. (optional)
///
///  @param maxSaturatedFat The maximum amount of saturated fat in grams the recipe can have. (optional)
///
///  @param minVitaminA The minimum amount of Vitamin A in IU the recipe must have. (optional)
///
///  @param maxVitaminA The maximum amount of Vitamin A in IU the recipe can have. (optional)
///
///  @param minVitaminC The minimum amount of Vitamin C milligrams the recipe must have. (optional)
///
///  @param maxVitaminC The maximum amount of Vitamin C in milligrams the recipe can have. (optional)
///
///  @param minVitaminD The minimum amount of Vitamin D in micrograms the recipe must have. (optional)
///
///  @param maxVitaminD The maximum amount of Vitamin D in micrograms the recipe can have. (optional)
///
///  @param minVitaminE The minimum amount of Vitamin E in milligrams the recipe must have. (optional)
///
///  @param maxVitaminE The maximum amount of Vitamin E in milligrams the recipe can have. (optional)
///
///  @param minVitaminK The minimum amount of Vitamin K in micrograms the recipe must have. (optional)
///
///  @param maxVitaminK The maximum amount of Vitamin K in micrograms the recipe can have. (optional)
///
///  @param minVitaminB1 The minimum amount of Vitamin B1 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB1 The maximum amount of Vitamin B1 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB2 The minimum amount of Vitamin B2 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB2 The maximum amount of Vitamin B2 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB5 The minimum amount of Vitamin B5 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB5 The maximum amount of Vitamin B5 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB3 The minimum amount of Vitamin B3 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB3 The maximum amount of Vitamin B3 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB6 The minimum amount of Vitamin B6 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB6 The maximum amount of Vitamin B6 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB12 The minimum amount of Vitamin B12 in micrograms the recipe must have. (optional)
///
///  @param maxVitaminB12 The maximum amount of Vitamin B12 in micrograms the recipe can have. (optional)
///
///  @param minFiber The minimum amount of fiber in grams the recipe must have. (optional)
///
///  @param maxFiber The maximum amount of fiber in grams the recipe can have. (optional)
///
///  @param minFolate The minimum amount of folate in micrograms the recipe must have. (optional)
///
///  @param maxFolate The maximum amount of folate in micrograms the recipe can have. (optional)
///
///  @param minFolicAcid The minimum amount of folic acid in micrograms the recipe must have. (optional)
///
///  @param maxFolicAcid The maximum amount of folic acid in micrograms the recipe can have. (optional)
///
///  @param minIodine The minimum amount of iodine in micrograms the recipe must have. (optional)
///
///  @param maxIodine The maximum amount of iodine in micrograms the recipe can have. (optional)
///
///  @param minIron The minimum amount of iron in milligrams the recipe must have. (optional)
///
///  @param maxIron The maximum amount of iron in milligrams the recipe can have. (optional)
///
///  @param minMagnesium The minimum amount of magnesium in milligrams the recipe must have. (optional)
///
///  @param maxMagnesium The maximum amount of magnesium in milligrams the recipe can have. (optional)
///
///  @param minManganese The minimum amount of manganese in milligrams the recipe must have. (optional)
///
///  @param maxManganese The maximum amount of manganese in milligrams the recipe can have. (optional)
///
///  @param minPhosphorus The minimum amount of phosphorus in milligrams the recipe must have. (optional)
///
///  @param maxPhosphorus The maximum amount of phosphorus in milligrams the recipe can have. (optional)
///
///  @param minPotassium The minimum amount of potassium in milligrams the recipe must have. (optional)
///
///  @param maxPotassium The maximum amount of potassium in milligrams the recipe can have. (optional)
///
///  @param minSelenium The minimum amount of selenium in micrograms the recipe must have. (optional)
///
///  @param maxSelenium The maximum amount of selenium in micrograms the recipe can have. (optional)
///
///  @param minSodium The minimum amount of sodium in milligrams the recipe must have. (optional)
///
///  @param maxSodium The maximum amount of sodium in milligrams the recipe can have. (optional)
///
///  @param minSugar The minimum amount of sugar in grams the recipe must have. (optional)
///
///  @param maxSugar The maximum amount of sugar in grams the recipe can have. (optional)
///
///  @param minZinc The minimum amount of zinc in milligrams the recipe must have. (optional)
///
///  @param maxZinc The maximum amount of zinc in milligrams the recipe can have. (optional)
///
///  @param offset The number of results to skip (between 0 and 900). (optional)
///
///  @param number The maximum number of items to return (between 1 and 100). Defaults to 10. (optional, default to @10)
///
///  @param limitLicense Whether the recipes should have an open license that allows display with proper attribution. (optional, default to @(YES))
///
///  @returns OAIInlineResponse200*
///
-(NSURLSessionTask*) searchRecipesWithQuery: (NSString*) query
    cuisine: (NSString*) cuisine
    excludeCuisine: (NSString*) excludeCuisine
    diet: (NSString*) diet
    intolerances: (NSString*) intolerances
    equipment: (NSString*) equipment
    includeIngredients: (NSString*) includeIngredients
    excludeIngredients: (NSString*) excludeIngredients
    type: (NSString*) type
    instructionsRequired: (NSNumber*) instructionsRequired
    fillIngredients: (NSNumber*) fillIngredients
    addRecipeInformation: (NSNumber*) addRecipeInformation
    addRecipeNutrition: (NSNumber*) addRecipeNutrition
    author: (NSString*) author
    tags: (NSString*) tags
    recipeBoxId: (NSNumber*) recipeBoxId
    titleMatch: (NSString*) titleMatch
    maxReadyTime: (NSNumber*) maxReadyTime
    ignorePantry: (NSNumber*) ignorePantry
    sort: (NSString*) sort
    sortDirection: (NSString*) sortDirection
    minCarbs: (NSNumber*) minCarbs
    maxCarbs: (NSNumber*) maxCarbs
    minProtein: (NSNumber*) minProtein
    maxProtein: (NSNumber*) maxProtein
    minCalories: (NSNumber*) minCalories
    maxCalories: (NSNumber*) maxCalories
    minFat: (NSNumber*) minFat
    maxFat: (NSNumber*) maxFat
    minAlcohol: (NSNumber*) minAlcohol
    maxAlcohol: (NSNumber*) maxAlcohol
    minCaffeine: (NSNumber*) minCaffeine
    maxCaffeine: (NSNumber*) maxCaffeine
    minCopper: (NSNumber*) minCopper
    maxCopper: (NSNumber*) maxCopper
    minCalcium: (NSNumber*) minCalcium
    maxCalcium: (NSNumber*) maxCalcium
    minCholine: (NSNumber*) minCholine
    maxCholine: (NSNumber*) maxCholine
    minCholesterol: (NSNumber*) minCholesterol
    maxCholesterol: (NSNumber*) maxCholesterol
    minFluoride: (NSNumber*) minFluoride
    maxFluoride: (NSNumber*) maxFluoride
    minSaturatedFat: (NSNumber*) minSaturatedFat
    maxSaturatedFat: (NSNumber*) maxSaturatedFat
    minVitaminA: (NSNumber*) minVitaminA
    maxVitaminA: (NSNumber*) maxVitaminA
    minVitaminC: (NSNumber*) minVitaminC
    maxVitaminC: (NSNumber*) maxVitaminC
    minVitaminD: (NSNumber*) minVitaminD
    maxVitaminD: (NSNumber*) maxVitaminD
    minVitaminE: (NSNumber*) minVitaminE
    maxVitaminE: (NSNumber*) maxVitaminE
    minVitaminK: (NSNumber*) minVitaminK
    maxVitaminK: (NSNumber*) maxVitaminK
    minVitaminB1: (NSNumber*) minVitaminB1
    maxVitaminB1: (NSNumber*) maxVitaminB1
    minVitaminB2: (NSNumber*) minVitaminB2
    maxVitaminB2: (NSNumber*) maxVitaminB2
    minVitaminB5: (NSNumber*) minVitaminB5
    maxVitaminB5: (NSNumber*) maxVitaminB5
    minVitaminB3: (NSNumber*) minVitaminB3
    maxVitaminB3: (NSNumber*) maxVitaminB3
    minVitaminB6: (NSNumber*) minVitaminB6
    maxVitaminB6: (NSNumber*) maxVitaminB6
    minVitaminB12: (NSNumber*) minVitaminB12
    maxVitaminB12: (NSNumber*) maxVitaminB12
    minFiber: (NSNumber*) minFiber
    maxFiber: (NSNumber*) maxFiber
    minFolate: (NSNumber*) minFolate
    maxFolate: (NSNumber*) maxFolate
    minFolicAcid: (NSNumber*) minFolicAcid
    maxFolicAcid: (NSNumber*) maxFolicAcid
    minIodine: (NSNumber*) minIodine
    maxIodine: (NSNumber*) maxIodine
    minIron: (NSNumber*) minIron
    maxIron: (NSNumber*) maxIron
    minMagnesium: (NSNumber*) minMagnesium
    maxMagnesium: (NSNumber*) maxMagnesium
    minManganese: (NSNumber*) minManganese
    maxManganese: (NSNumber*) maxManganese
    minPhosphorus: (NSNumber*) minPhosphorus
    maxPhosphorus: (NSNumber*) maxPhosphorus
    minPotassium: (NSNumber*) minPotassium
    maxPotassium: (NSNumber*) maxPotassium
    minSelenium: (NSNumber*) minSelenium
    maxSelenium: (NSNumber*) maxSelenium
    minSodium: (NSNumber*) minSodium
    maxSodium: (NSNumber*) maxSodium
    minSugar: (NSNumber*) minSugar
    maxSugar: (NSNumber*) maxSugar
    minZinc: (NSNumber*) minZinc
    maxZinc: (NSNumber*) maxZinc
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    limitLicense: (NSNumber*) limitLicense
    completionHandler: (void (^)(OAIInlineResponse200* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/complexSearch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (cuisine != nil) {
        queryParams[@"cuisine"] = cuisine;
    }
    if (excludeCuisine != nil) {
        queryParams[@"excludeCuisine"] = excludeCuisine;
    }
    if (diet != nil) {
        queryParams[@"diet"] = diet;
    }
    if (intolerances != nil) {
        queryParams[@"intolerances"] = intolerances;
    }
    if (equipment != nil) {
        queryParams[@"equipment"] = equipment;
    }
    if (includeIngredients != nil) {
        queryParams[@"includeIngredients"] = includeIngredients;
    }
    if (excludeIngredients != nil) {
        queryParams[@"excludeIngredients"] = excludeIngredients;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (instructionsRequired != nil) {
        queryParams[@"instructionsRequired"] = [instructionsRequired isEqual:@(YES)] ? @"true" : @"false";
    }
    if (fillIngredients != nil) {
        queryParams[@"fillIngredients"] = [fillIngredients isEqual:@(YES)] ? @"true" : @"false";
    }
    if (addRecipeInformation != nil) {
        queryParams[@"addRecipeInformation"] = [addRecipeInformation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (addRecipeNutrition != nil) {
        queryParams[@"addRecipeNutrition"] = [addRecipeNutrition isEqual:@(YES)] ? @"true" : @"false";
    }
    if (author != nil) {
        queryParams[@"author"] = author;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (recipeBoxId != nil) {
        queryParams[@"recipeBoxId"] = recipeBoxId;
    }
    if (titleMatch != nil) {
        queryParams[@"titleMatch"] = titleMatch;
    }
    if (maxReadyTime != nil) {
        queryParams[@"maxReadyTime"] = maxReadyTime;
    }
    if (ignorePantry != nil) {
        queryParams[@"ignorePantry"] = [ignorePantry isEqual:@(YES)] ? @"true" : @"false";
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (sortDirection != nil) {
        queryParams[@"sortDirection"] = sortDirection;
    }
    if (minCarbs != nil) {
        queryParams[@"minCarbs"] = minCarbs;
    }
    if (maxCarbs != nil) {
        queryParams[@"maxCarbs"] = maxCarbs;
    }
    if (minProtein != nil) {
        queryParams[@"minProtein"] = minProtein;
    }
    if (maxProtein != nil) {
        queryParams[@"maxProtein"] = maxProtein;
    }
    if (minCalories != nil) {
        queryParams[@"minCalories"] = minCalories;
    }
    if (maxCalories != nil) {
        queryParams[@"maxCalories"] = maxCalories;
    }
    if (minFat != nil) {
        queryParams[@"minFat"] = minFat;
    }
    if (maxFat != nil) {
        queryParams[@"maxFat"] = maxFat;
    }
    if (minAlcohol != nil) {
        queryParams[@"minAlcohol"] = minAlcohol;
    }
    if (maxAlcohol != nil) {
        queryParams[@"maxAlcohol"] = maxAlcohol;
    }
    if (minCaffeine != nil) {
        queryParams[@"minCaffeine"] = minCaffeine;
    }
    if (maxCaffeine != nil) {
        queryParams[@"maxCaffeine"] = maxCaffeine;
    }
    if (minCopper != nil) {
        queryParams[@"minCopper"] = minCopper;
    }
    if (maxCopper != nil) {
        queryParams[@"maxCopper"] = maxCopper;
    }
    if (minCalcium != nil) {
        queryParams[@"minCalcium"] = minCalcium;
    }
    if (maxCalcium != nil) {
        queryParams[@"maxCalcium"] = maxCalcium;
    }
    if (minCholine != nil) {
        queryParams[@"minCholine"] = minCholine;
    }
    if (maxCholine != nil) {
        queryParams[@"maxCholine"] = maxCholine;
    }
    if (minCholesterol != nil) {
        queryParams[@"minCholesterol"] = minCholesterol;
    }
    if (maxCholesterol != nil) {
        queryParams[@"maxCholesterol"] = maxCholesterol;
    }
    if (minFluoride != nil) {
        queryParams[@"minFluoride"] = minFluoride;
    }
    if (maxFluoride != nil) {
        queryParams[@"maxFluoride"] = maxFluoride;
    }
    if (minSaturatedFat != nil) {
        queryParams[@"minSaturatedFat"] = minSaturatedFat;
    }
    if (maxSaturatedFat != nil) {
        queryParams[@"maxSaturatedFat"] = maxSaturatedFat;
    }
    if (minVitaminA != nil) {
        queryParams[@"minVitaminA"] = minVitaminA;
    }
    if (maxVitaminA != nil) {
        queryParams[@"maxVitaminA"] = maxVitaminA;
    }
    if (minVitaminC != nil) {
        queryParams[@"minVitaminC"] = minVitaminC;
    }
    if (maxVitaminC != nil) {
        queryParams[@"maxVitaminC"] = maxVitaminC;
    }
    if (minVitaminD != nil) {
        queryParams[@"minVitaminD"] = minVitaminD;
    }
    if (maxVitaminD != nil) {
        queryParams[@"maxVitaminD"] = maxVitaminD;
    }
    if (minVitaminE != nil) {
        queryParams[@"minVitaminE"] = minVitaminE;
    }
    if (maxVitaminE != nil) {
        queryParams[@"maxVitaminE"] = maxVitaminE;
    }
    if (minVitaminK != nil) {
        queryParams[@"minVitaminK"] = minVitaminK;
    }
    if (maxVitaminK != nil) {
        queryParams[@"maxVitaminK"] = maxVitaminK;
    }
    if (minVitaminB1 != nil) {
        queryParams[@"minVitaminB1"] = minVitaminB1;
    }
    if (maxVitaminB1 != nil) {
        queryParams[@"maxVitaminB1"] = maxVitaminB1;
    }
    if (minVitaminB2 != nil) {
        queryParams[@"minVitaminB2"] = minVitaminB2;
    }
    if (maxVitaminB2 != nil) {
        queryParams[@"maxVitaminB2"] = maxVitaminB2;
    }
    if (minVitaminB5 != nil) {
        queryParams[@"minVitaminB5"] = minVitaminB5;
    }
    if (maxVitaminB5 != nil) {
        queryParams[@"maxVitaminB5"] = maxVitaminB5;
    }
    if (minVitaminB3 != nil) {
        queryParams[@"minVitaminB3"] = minVitaminB3;
    }
    if (maxVitaminB3 != nil) {
        queryParams[@"maxVitaminB3"] = maxVitaminB3;
    }
    if (minVitaminB6 != nil) {
        queryParams[@"minVitaminB6"] = minVitaminB6;
    }
    if (maxVitaminB6 != nil) {
        queryParams[@"maxVitaminB6"] = maxVitaminB6;
    }
    if (minVitaminB12 != nil) {
        queryParams[@"minVitaminB12"] = minVitaminB12;
    }
    if (maxVitaminB12 != nil) {
        queryParams[@"maxVitaminB12"] = maxVitaminB12;
    }
    if (minFiber != nil) {
        queryParams[@"minFiber"] = minFiber;
    }
    if (maxFiber != nil) {
        queryParams[@"maxFiber"] = maxFiber;
    }
    if (minFolate != nil) {
        queryParams[@"minFolate"] = minFolate;
    }
    if (maxFolate != nil) {
        queryParams[@"maxFolate"] = maxFolate;
    }
    if (minFolicAcid != nil) {
        queryParams[@"minFolicAcid"] = minFolicAcid;
    }
    if (maxFolicAcid != nil) {
        queryParams[@"maxFolicAcid"] = maxFolicAcid;
    }
    if (minIodine != nil) {
        queryParams[@"minIodine"] = minIodine;
    }
    if (maxIodine != nil) {
        queryParams[@"maxIodine"] = maxIodine;
    }
    if (minIron != nil) {
        queryParams[@"minIron"] = minIron;
    }
    if (maxIron != nil) {
        queryParams[@"maxIron"] = maxIron;
    }
    if (minMagnesium != nil) {
        queryParams[@"minMagnesium"] = minMagnesium;
    }
    if (maxMagnesium != nil) {
        queryParams[@"maxMagnesium"] = maxMagnesium;
    }
    if (minManganese != nil) {
        queryParams[@"minManganese"] = minManganese;
    }
    if (maxManganese != nil) {
        queryParams[@"maxManganese"] = maxManganese;
    }
    if (minPhosphorus != nil) {
        queryParams[@"minPhosphorus"] = minPhosphorus;
    }
    if (maxPhosphorus != nil) {
        queryParams[@"maxPhosphorus"] = maxPhosphorus;
    }
    if (minPotassium != nil) {
        queryParams[@"minPotassium"] = minPotassium;
    }
    if (maxPotassium != nil) {
        queryParams[@"maxPotassium"] = maxPotassium;
    }
    if (minSelenium != nil) {
        queryParams[@"minSelenium"] = minSelenium;
    }
    if (maxSelenium != nil) {
        queryParams[@"maxSelenium"] = maxSelenium;
    }
    if (minSodium != nil) {
        queryParams[@"minSodium"] = minSodium;
    }
    if (maxSodium != nil) {
        queryParams[@"maxSodium"] = maxSodium;
    }
    if (minSugar != nil) {
        queryParams[@"minSugar"] = minSugar;
    }
    if (maxSugar != nil) {
        queryParams[@"maxSugar"] = maxSugar;
    }
    if (minZinc != nil) {
        queryParams[@"minZinc"] = minZinc;
    }
    if (maxZinc != nil) {
        queryParams[@"maxZinc"] = maxZinc;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    if (limitLicense != nil) {
        queryParams[@"limitLicense"] = [limitLicense isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse200*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse200*)data, error);
                                }
                            }];
}

///
/// Search Recipes by Ingredients
///  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         
///  @param ingredients A comma-separated list of ingredients that the recipes should contain. (optional)
///
///  @param number The maximum number of items to return (between 1 and 100). Defaults to 10. (optional, default to @10)
///
///  @param limitLicense Whether the recipes should have an open license that allows display with proper attribution. (optional, default to @(YES))
///
///  @param ranking Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. (optional)
///
///  @param ignorePantry Whether to ignore typical pantry items, such as water, salt, flour, etc. (optional, default to @(NO))
///
///  @returns NSArray<OAIInlineResponse2001>*
///
-(NSURLSessionTask*) searchRecipesByIngredientsWithIngredients: (NSString*) ingredients
    number: (NSNumber*) number
    limitLicense: (NSNumber*) limitLicense
    ranking: (NSNumber*) ranking
    ignorePantry: (NSNumber*) ignorePantry
    completionHandler: (void (^)(NSArray<OAIInlineResponse2001>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/findByIngredients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (ingredients != nil) {
        queryParams[@"ingredients"] = ingredients;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    if (limitLicense != nil) {
        queryParams[@"limitLicense"] = [limitLicense isEqual:@(YES)] ? @"true" : @"false";
    }
    if (ranking != nil) {
        queryParams[@"ranking"] = ranking;
    }
    if (ignorePantry != nil) {
        queryParams[@"ignorePantry"] = [ignorePantry isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIInlineResponse2001>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIInlineResponse2001>*)data, error);
                                }
                            }];
}

///
/// Search Recipes by Nutrients
/// Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.
///  @param minCarbs The minimum amount of carbohydrates in grams the recipe must have. (optional)
///
///  @param maxCarbs The maximum amount of carbohydrates in grams the recipe can have. (optional)
///
///  @param minProtein The minimum amount of protein in grams the recipe must have. (optional)
///
///  @param maxProtein The maximum amount of protein in grams the recipe can have. (optional)
///
///  @param minCalories The minimum amount of calories the recipe must have. (optional)
///
///  @param maxCalories The maximum amount of calories the recipe can have. (optional)
///
///  @param minFat The minimum amount of fat in grams the recipe must have. (optional)
///
///  @param maxFat The maximum amount of fat in grams the recipe can have. (optional)
///
///  @param minAlcohol The minimum amount of alcohol in grams the recipe must have. (optional)
///
///  @param maxAlcohol The maximum amount of alcohol in grams the recipe can have. (optional)
///
///  @param minCaffeine The minimum amount of caffeine in milligrams the recipe must have. (optional)
///
///  @param maxCaffeine The maximum amount of caffeine in milligrams the recipe can have. (optional)
///
///  @param minCopper The minimum amount of copper in milligrams the recipe must have. (optional)
///
///  @param maxCopper The maximum amount of copper in milligrams the recipe can have. (optional)
///
///  @param minCalcium The minimum amount of calcium in milligrams the recipe must have. (optional)
///
///  @param maxCalcium The maximum amount of calcium in milligrams the recipe can have. (optional)
///
///  @param minCholine The minimum amount of choline in milligrams the recipe must have. (optional)
///
///  @param maxCholine The maximum amount of choline in milligrams the recipe can have. (optional)
///
///  @param minCholesterol The minimum amount of cholesterol in milligrams the recipe must have. (optional)
///
///  @param maxCholesterol The maximum amount of cholesterol in milligrams the recipe can have. (optional)
///
///  @param minFluoride The minimum amount of fluoride in milligrams the recipe must have. (optional)
///
///  @param maxFluoride The maximum amount of fluoride in milligrams the recipe can have. (optional)
///
///  @param minSaturatedFat The minimum amount of saturated fat in grams the recipe must have. (optional)
///
///  @param maxSaturatedFat The maximum amount of saturated fat in grams the recipe can have. (optional)
///
///  @param minVitaminA The minimum amount of Vitamin A in IU the recipe must have. (optional)
///
///  @param maxVitaminA The maximum amount of Vitamin A in IU the recipe can have. (optional)
///
///  @param minVitaminC The minimum amount of Vitamin C in milligrams the recipe must have. (optional)
///
///  @param maxVitaminC The maximum amount of Vitamin C in milligrams the recipe can have. (optional)
///
///  @param minVitaminD The minimum amount of Vitamin D in micrograms the recipe must have. (optional)
///
///  @param maxVitaminD The maximum amount of Vitamin D in micrograms the recipe can have. (optional)
///
///  @param minVitaminE The minimum amount of Vitamin E in milligrams the recipe must have. (optional)
///
///  @param maxVitaminE The maximum amount of Vitamin E in milligrams the recipe can have. (optional)
///
///  @param minVitaminK The minimum amount of Vitamin K in micrograms the recipe must have. (optional)
///
///  @param maxVitaminK The maximum amount of Vitamin K in micrograms the recipe can have. (optional)
///
///  @param minVitaminB1 The minimum amount of Vitamin B1 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB1 The maximum amount of Vitamin B1 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB2 The minimum amount of Vitamin B2 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB2 The maximum amount of Vitamin B2 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB5 The minimum amount of Vitamin B5 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB5 The maximum amount of Vitamin B5 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB3 The minimum amount of Vitamin B3 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB3 The maximum amount of Vitamin B3 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB6 The minimum amount of Vitamin B6 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB6 The maximum amount of Vitamin B6 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB12 The minimum amount of Vitamin B12 in micrograms the recipe must have. (optional)
///
///  @param maxVitaminB12 The maximum amount of Vitamin B12 in micrograms the recipe can have. (optional)
///
///  @param minFiber The minimum amount of fiber in grams the recipe must have. (optional)
///
///  @param maxFiber The maximum amount of fiber in grams the recipe can have. (optional)
///
///  @param minFolate The minimum amount of folate in micrograms the recipe must have. (optional)
///
///  @param maxFolate The maximum amount of folate in micrograms the recipe can have. (optional)
///
///  @param minFolicAcid The minimum amount of folic acid in micrograms the recipe must have. (optional)
///
///  @param maxFolicAcid The maximum amount of folic acid in micrograms the recipe can have. (optional)
///
///  @param minIodine The minimum amount of iodine in micrograms the recipe must have. (optional)
///
///  @param maxIodine The maximum amount of iodine in micrograms the recipe can have. (optional)
///
///  @param minIron The minimum amount of iron in milligrams the recipe must have. (optional)
///
///  @param maxIron The maximum amount of iron in milligrams the recipe can have. (optional)
///
///  @param minMagnesium The minimum amount of magnesium in milligrams the recipe must have. (optional)
///
///  @param maxMagnesium The maximum amount of magnesium in milligrams the recipe can have. (optional)
///
///  @param minManganese The minimum amount of manganese in milligrams the recipe must have. (optional)
///
///  @param maxManganese The maximum amount of manganese in milligrams the recipe can have. (optional)
///
///  @param minPhosphorus The minimum amount of phosphorus in milligrams the recipe must have. (optional)
///
///  @param maxPhosphorus The maximum amount of phosphorus in milligrams the recipe can have. (optional)
///
///  @param minPotassium The minimum amount of potassium in milligrams the recipe must have. (optional)
///
///  @param maxPotassium The maximum amount of potassium in milligrams the recipe can have. (optional)
///
///  @param minSelenium The minimum amount of selenium in micrograms the recipe must have. (optional)
///
///  @param maxSelenium The maximum amount of selenium in micrograms the recipe can have. (optional)
///
///  @param minSodium The minimum amount of sodium in milligrams the recipe must have. (optional)
///
///  @param maxSodium The maximum amount of sodium in milligrams the recipe can have. (optional)
///
///  @param minSugar The minimum amount of sugar in grams the recipe must have. (optional)
///
///  @param maxSugar The maximum amount of sugar in grams the recipe can have. (optional)
///
///  @param minZinc The minimum amount of zinc in milligrams the recipe must have. (optional)
///
///  @param maxZinc The maximum amount of zinc in milligrams the recipe can have. (optional)
///
///  @param offset The number of results to skip (between 0 and 900). (optional)
///
///  @param number The maximum number of items to return (between 1 and 100). Defaults to 10. (optional, default to @10)
///
///  @param random If true, every request will give you a random set of recipes within the requested limits. (optional)
///
///  @param limitLicense Whether the recipes should have an open license that allows display with proper attribution. (optional, default to @(YES))
///
///  @returns NSArray<OAIInlineResponse2002>*
///
-(NSURLSessionTask*) searchRecipesByNutrientsWithMinCarbs: (NSNumber*) minCarbs
    maxCarbs: (NSNumber*) maxCarbs
    minProtein: (NSNumber*) minProtein
    maxProtein: (NSNumber*) maxProtein
    minCalories: (NSNumber*) minCalories
    maxCalories: (NSNumber*) maxCalories
    minFat: (NSNumber*) minFat
    maxFat: (NSNumber*) maxFat
    minAlcohol: (NSNumber*) minAlcohol
    maxAlcohol: (NSNumber*) maxAlcohol
    minCaffeine: (NSNumber*) minCaffeine
    maxCaffeine: (NSNumber*) maxCaffeine
    minCopper: (NSNumber*) minCopper
    maxCopper: (NSNumber*) maxCopper
    minCalcium: (NSNumber*) minCalcium
    maxCalcium: (NSNumber*) maxCalcium
    minCholine: (NSNumber*) minCholine
    maxCholine: (NSNumber*) maxCholine
    minCholesterol: (NSNumber*) minCholesterol
    maxCholesterol: (NSNumber*) maxCholesterol
    minFluoride: (NSNumber*) minFluoride
    maxFluoride: (NSNumber*) maxFluoride
    minSaturatedFat: (NSNumber*) minSaturatedFat
    maxSaturatedFat: (NSNumber*) maxSaturatedFat
    minVitaminA: (NSNumber*) minVitaminA
    maxVitaminA: (NSNumber*) maxVitaminA
    minVitaminC: (NSNumber*) minVitaminC
    maxVitaminC: (NSNumber*) maxVitaminC
    minVitaminD: (NSNumber*) minVitaminD
    maxVitaminD: (NSNumber*) maxVitaminD
    minVitaminE: (NSNumber*) minVitaminE
    maxVitaminE: (NSNumber*) maxVitaminE
    minVitaminK: (NSNumber*) minVitaminK
    maxVitaminK: (NSNumber*) maxVitaminK
    minVitaminB1: (NSNumber*) minVitaminB1
    maxVitaminB1: (NSNumber*) maxVitaminB1
    minVitaminB2: (NSNumber*) minVitaminB2
    maxVitaminB2: (NSNumber*) maxVitaminB2
    minVitaminB5: (NSNumber*) minVitaminB5
    maxVitaminB5: (NSNumber*) maxVitaminB5
    minVitaminB3: (NSNumber*) minVitaminB3
    maxVitaminB3: (NSNumber*) maxVitaminB3
    minVitaminB6: (NSNumber*) minVitaminB6
    maxVitaminB6: (NSNumber*) maxVitaminB6
    minVitaminB12: (NSNumber*) minVitaminB12
    maxVitaminB12: (NSNumber*) maxVitaminB12
    minFiber: (NSNumber*) minFiber
    maxFiber: (NSNumber*) maxFiber
    minFolate: (NSNumber*) minFolate
    maxFolate: (NSNumber*) maxFolate
    minFolicAcid: (NSNumber*) minFolicAcid
    maxFolicAcid: (NSNumber*) maxFolicAcid
    minIodine: (NSNumber*) minIodine
    maxIodine: (NSNumber*) maxIodine
    minIron: (NSNumber*) minIron
    maxIron: (NSNumber*) maxIron
    minMagnesium: (NSNumber*) minMagnesium
    maxMagnesium: (NSNumber*) maxMagnesium
    minManganese: (NSNumber*) minManganese
    maxManganese: (NSNumber*) maxManganese
    minPhosphorus: (NSNumber*) minPhosphorus
    maxPhosphorus: (NSNumber*) maxPhosphorus
    minPotassium: (NSNumber*) minPotassium
    maxPotassium: (NSNumber*) maxPotassium
    minSelenium: (NSNumber*) minSelenium
    maxSelenium: (NSNumber*) maxSelenium
    minSodium: (NSNumber*) minSodium
    maxSodium: (NSNumber*) maxSodium
    minSugar: (NSNumber*) minSugar
    maxSugar: (NSNumber*) maxSugar
    minZinc: (NSNumber*) minZinc
    maxZinc: (NSNumber*) maxZinc
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    random: (NSNumber*) random
    limitLicense: (NSNumber*) limitLicense
    completionHandler: (void (^)(NSArray<OAIInlineResponse2002>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/findByNutrients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (minCarbs != nil) {
        queryParams[@"minCarbs"] = minCarbs;
    }
    if (maxCarbs != nil) {
        queryParams[@"maxCarbs"] = maxCarbs;
    }
    if (minProtein != nil) {
        queryParams[@"minProtein"] = minProtein;
    }
    if (maxProtein != nil) {
        queryParams[@"maxProtein"] = maxProtein;
    }
    if (minCalories != nil) {
        queryParams[@"minCalories"] = minCalories;
    }
    if (maxCalories != nil) {
        queryParams[@"maxCalories"] = maxCalories;
    }
    if (minFat != nil) {
        queryParams[@"minFat"] = minFat;
    }
    if (maxFat != nil) {
        queryParams[@"maxFat"] = maxFat;
    }
    if (minAlcohol != nil) {
        queryParams[@"minAlcohol"] = minAlcohol;
    }
    if (maxAlcohol != nil) {
        queryParams[@"maxAlcohol"] = maxAlcohol;
    }
    if (minCaffeine != nil) {
        queryParams[@"minCaffeine"] = minCaffeine;
    }
    if (maxCaffeine != nil) {
        queryParams[@"maxCaffeine"] = maxCaffeine;
    }
    if (minCopper != nil) {
        queryParams[@"minCopper"] = minCopper;
    }
    if (maxCopper != nil) {
        queryParams[@"maxCopper"] = maxCopper;
    }
    if (minCalcium != nil) {
        queryParams[@"minCalcium"] = minCalcium;
    }
    if (maxCalcium != nil) {
        queryParams[@"maxCalcium"] = maxCalcium;
    }
    if (minCholine != nil) {
        queryParams[@"minCholine"] = minCholine;
    }
    if (maxCholine != nil) {
        queryParams[@"maxCholine"] = maxCholine;
    }
    if (minCholesterol != nil) {
        queryParams[@"minCholesterol"] = minCholesterol;
    }
    if (maxCholesterol != nil) {
        queryParams[@"maxCholesterol"] = maxCholesterol;
    }
    if (minFluoride != nil) {
        queryParams[@"minFluoride"] = minFluoride;
    }
    if (maxFluoride != nil) {
        queryParams[@"maxFluoride"] = maxFluoride;
    }
    if (minSaturatedFat != nil) {
        queryParams[@"minSaturatedFat"] = minSaturatedFat;
    }
    if (maxSaturatedFat != nil) {
        queryParams[@"maxSaturatedFat"] = maxSaturatedFat;
    }
    if (minVitaminA != nil) {
        queryParams[@"minVitaminA"] = minVitaminA;
    }
    if (maxVitaminA != nil) {
        queryParams[@"maxVitaminA"] = maxVitaminA;
    }
    if (minVitaminC != nil) {
        queryParams[@"minVitaminC"] = minVitaminC;
    }
    if (maxVitaminC != nil) {
        queryParams[@"maxVitaminC"] = maxVitaminC;
    }
    if (minVitaminD != nil) {
        queryParams[@"minVitaminD"] = minVitaminD;
    }
    if (maxVitaminD != nil) {
        queryParams[@"maxVitaminD"] = maxVitaminD;
    }
    if (minVitaminE != nil) {
        queryParams[@"minVitaminE"] = minVitaminE;
    }
    if (maxVitaminE != nil) {
        queryParams[@"maxVitaminE"] = maxVitaminE;
    }
    if (minVitaminK != nil) {
        queryParams[@"minVitaminK"] = minVitaminK;
    }
    if (maxVitaminK != nil) {
        queryParams[@"maxVitaminK"] = maxVitaminK;
    }
    if (minVitaminB1 != nil) {
        queryParams[@"minVitaminB1"] = minVitaminB1;
    }
    if (maxVitaminB1 != nil) {
        queryParams[@"maxVitaminB1"] = maxVitaminB1;
    }
    if (minVitaminB2 != nil) {
        queryParams[@"minVitaminB2"] = minVitaminB2;
    }
    if (maxVitaminB2 != nil) {
        queryParams[@"maxVitaminB2"] = maxVitaminB2;
    }
    if (minVitaminB5 != nil) {
        queryParams[@"minVitaminB5"] = minVitaminB5;
    }
    if (maxVitaminB5 != nil) {
        queryParams[@"maxVitaminB5"] = maxVitaminB5;
    }
    if (minVitaminB3 != nil) {
        queryParams[@"minVitaminB3"] = minVitaminB3;
    }
    if (maxVitaminB3 != nil) {
        queryParams[@"maxVitaminB3"] = maxVitaminB3;
    }
    if (minVitaminB6 != nil) {
        queryParams[@"minVitaminB6"] = minVitaminB6;
    }
    if (maxVitaminB6 != nil) {
        queryParams[@"maxVitaminB6"] = maxVitaminB6;
    }
    if (minVitaminB12 != nil) {
        queryParams[@"minVitaminB12"] = minVitaminB12;
    }
    if (maxVitaminB12 != nil) {
        queryParams[@"maxVitaminB12"] = maxVitaminB12;
    }
    if (minFiber != nil) {
        queryParams[@"minFiber"] = minFiber;
    }
    if (maxFiber != nil) {
        queryParams[@"maxFiber"] = maxFiber;
    }
    if (minFolate != nil) {
        queryParams[@"minFolate"] = minFolate;
    }
    if (maxFolate != nil) {
        queryParams[@"maxFolate"] = maxFolate;
    }
    if (minFolicAcid != nil) {
        queryParams[@"minFolicAcid"] = minFolicAcid;
    }
    if (maxFolicAcid != nil) {
        queryParams[@"maxFolicAcid"] = maxFolicAcid;
    }
    if (minIodine != nil) {
        queryParams[@"minIodine"] = minIodine;
    }
    if (maxIodine != nil) {
        queryParams[@"maxIodine"] = maxIodine;
    }
    if (minIron != nil) {
        queryParams[@"minIron"] = minIron;
    }
    if (maxIron != nil) {
        queryParams[@"maxIron"] = maxIron;
    }
    if (minMagnesium != nil) {
        queryParams[@"minMagnesium"] = minMagnesium;
    }
    if (maxMagnesium != nil) {
        queryParams[@"maxMagnesium"] = maxMagnesium;
    }
    if (minManganese != nil) {
        queryParams[@"minManganese"] = minManganese;
    }
    if (maxManganese != nil) {
        queryParams[@"maxManganese"] = maxManganese;
    }
    if (minPhosphorus != nil) {
        queryParams[@"minPhosphorus"] = minPhosphorus;
    }
    if (maxPhosphorus != nil) {
        queryParams[@"maxPhosphorus"] = maxPhosphorus;
    }
    if (minPotassium != nil) {
        queryParams[@"minPotassium"] = minPotassium;
    }
    if (maxPotassium != nil) {
        queryParams[@"maxPotassium"] = maxPotassium;
    }
    if (minSelenium != nil) {
        queryParams[@"minSelenium"] = minSelenium;
    }
    if (maxSelenium != nil) {
        queryParams[@"maxSelenium"] = maxSelenium;
    }
    if (minSodium != nil) {
        queryParams[@"minSodium"] = minSodium;
    }
    if (maxSodium != nil) {
        queryParams[@"maxSodium"] = maxSodium;
    }
    if (minSugar != nil) {
        queryParams[@"minSugar"] = minSugar;
    }
    if (maxSugar != nil) {
        queryParams[@"maxSugar"] = maxSugar;
    }
    if (minZinc != nil) {
        queryParams[@"minZinc"] = minZinc;
    }
    if (maxZinc != nil) {
        queryParams[@"maxZinc"] = maxZinc;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    if (random != nil) {
        queryParams[@"random"] = [random isEqual:@(YES)] ? @"true" : @"false";
    }
    if (limitLicense != nil) {
        queryParams[@"limitLicense"] = [limitLicense isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIInlineResponse2002>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIInlineResponse2002>*)data, error);
                                }
                            }];
}

///
/// Summarize Recipe
/// Automatically generate a short description that summarizes key information about the recipe.
///  @param _id The item's id. 
///
///  @returns OAIInlineResponse20014*
///
-(NSURLSessionTask*) summarizeRecipeWithId: (NSNumber*) _id
    completionHandler: (void (^)(OAIInlineResponse20014* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/summary"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInlineResponse20014*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20014*)data, error);
                                }
                            }];
}

///
/// Equipment Widget
/// Visualize the equipment used to make a recipe.
///  @param contentType The content type. (optional)
///
///  @param accept Accept header. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeEquipmentWithContentType: (NSString*) contentType
    accept: (NSString*) accept
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/visualizeEquipment"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (contentType != nil) {
        headerParams[@"Content-Type"] = contentType;
    }
    if (accept != nil) {
        headerParams[@"Accept"] = accept;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Price Breakdown Widget
/// Visualize the price breakdown of a recipe.
///  @param contentType The content type. (optional)
///
///  @param accept Accept header. (optional)
///
///  @param language The language of the input. Either 'en' or 'de'. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizePriceBreakdownWithContentType: (NSString*) contentType
    accept: (NSString*) accept
    language: (NSString*) language
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/visualizePriceEstimator"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (language != nil) {
        queryParams[@"language"] = language;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (contentType != nil) {
        headerParams[@"Content-Type"] = contentType;
    }
    if (accept != nil) {
        headerParams[@"Accept"] = accept;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Equipment by ID Widget
/// Visualize a recipe's equipment list.
///  @param _id The item's id. 
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional, default to @(YES))
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeRecipeEquipmentByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/equipmentWidget"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (defaultCss != nil) {
        queryParams[@"defaultCss"] = [defaultCss isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Ingredients by ID Widget
/// Visualize a recipe's ingredient list.
///  @param _id The item's id. 
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional, default to @(YES))
///
///  @param measure Whether the the measures should be 'us' or 'metric'. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeRecipeIngredientsByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    measure: (NSString*) measure
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/ingredientWidget"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (defaultCss != nil) {
        queryParams[@"defaultCss"] = [defaultCss isEqual:@(YES)] ? @"true" : @"false";
    }
    if (measure != nil) {
        queryParams[@"measure"] = measure;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Recipe Nutrition Widget
/// Visualize a recipe's nutritional information as HTML including CSS.
///  @param contentType The content type. (optional)
///
///  @param accept Accept header. (optional)
///
///  @param language The language of the input. Either 'en' or 'de'. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeRecipeNutritionWithContentType: (NSString*) contentType
    accept: (NSString*) accept
    language: (NSString*) language
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/visualizeNutrition"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (language != nil) {
        queryParams[@"language"] = language;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (contentType != nil) {
        headerParams[@"Content-Type"] = contentType;
    }
    if (accept != nil) {
        headerParams[@"Accept"] = accept;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Recipe Nutrition by ID Widget
/// Visualize a recipe's nutritional information as HTML including CSS.
///  @param _id The item's id. 
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional, default to @(YES))
///
///  @param accept Accept header. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeRecipeNutritionByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    accept: (NSString*) accept
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/nutritionWidget"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (defaultCss != nil) {
        queryParams[@"defaultCss"] = [defaultCss isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (accept != nil) {
        headerParams[@"Accept"] = accept;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Price Breakdown by ID Widget
/// Visualize a recipe's price breakdown.
///  @param _id The item's id. 
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional, default to @(YES))
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeRecipePriceBreakdownByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/priceBreakdownWidget"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (defaultCss != nil) {
        queryParams[@"defaultCss"] = [defaultCss isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Recipe Taste Widget
/// Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!
///  @param language The language of the input. Either 'en' or 'de'. (optional)
///
///  @param contentType The content type. (optional)
///
///  @param accept Accept header. (optional)
///
///  @param normalize Whether to normalize to the strongest taste. (optional)
///
///  @param rgb Red, green, blue values for the chart color. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeRecipeTasteWithLanguage: (NSString*) language
    contentType: (NSString*) contentType
    accept: (NSString*) accept
    normalize: (NSNumber*) normalize
    rgb: (NSString*) rgb
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/visualizeTaste"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (language != nil) {
        queryParams[@"language"] = language;
    }
    if (normalize != nil) {
        queryParams[@"normalize"] = [normalize isEqual:@(YES)] ? @"true" : @"false";
    }
    if (rgb != nil) {
        queryParams[@"rgb"] = rgb;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (contentType != nil) {
        headerParams[@"Content-Type"] = contentType;
    }
    if (accept != nil) {
        headerParams[@"Accept"] = accept;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Recipe Taste by ID Widget
/// Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
///  @param _id The item's id. 
///
///  @param normalize Whether to normalize to the strongest taste. (optional, default to @(YES))
///
///  @param rgb Red, green, blue values for the chart color. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeRecipeTasteByIDWithId: (NSNumber*) _id
    normalize: (NSNumber*) normalize
    rgb: (NSString*) rgb
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRecipesApiErrorDomain code:kOAIRecipesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/tasteWidget"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (normalize != nil) {
        queryParams[@"normalize"] = [normalize isEqual:@(YES)] ? @"true" : @"false";
    }
    if (rgb != nil) {
        queryParams[@"rgb"] = rgb;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}



@end

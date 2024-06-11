#import "OAIProductsApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAutocompleteProductSearch200Response.h"
#import "OAIClassifyGroceryProduct200Response.h"
#import "OAIClassifyGroceryProductBulk200ResponseInner.h"
#import "OAIClassifyGroceryProductBulkRequestInner.h"
#import "OAIClassifyGroceryProductRequest.h"
#import "OAIGetComparableProducts200Response.h"
#import "OAIGetProductInformation200Response.h"
#import "OAISearchGroceryProducts200Response.h"
#import "OAISearchGroceryProductsByUPC200Response.h"
#import "OAISet.h"


@interface OAIProductsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIProductsApi

NSString* kOAIProductsApiErrorDomain = @"OAIProductsApiErrorDomain";
NSInteger kOAIProductsApiMissingParamErrorCode = 234513;

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
/// Autocomplete Product Search
/// Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
///  @param query The (partial) search query. 
///
///  @param number The number of results to return (between 1 and 25). (optional)
///
///  @returns OAIAutocompleteProductSearch200Response*
///
-(NSURLSessionTask*) autocompleteProductSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
    completionHandler: (void (^)(OAIAutocompleteProductSearch200Response* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kOAIProductsApiErrorDomain code:kOAIProductsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/suggest"];

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
                              responseType: @"OAIAutocompleteProductSearch200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAutocompleteProductSearch200Response*)data, error);
                                }
                            }];
}

///
/// Classify Grocery Product
/// This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
///  @param classifyGroceryProductRequest  
///
///  @param locale The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)
///
///  @returns OAIClassifyGroceryProduct200Response*
///
-(NSURLSessionTask*) classifyGroceryProductWithClassifyGroceryProductRequest: (OAIClassifyGroceryProductRequest*) classifyGroceryProductRequest
    locale: (NSString*) locale
    completionHandler: (void (^)(OAIClassifyGroceryProduct200Response* output, NSError* error)) handler {
    // verify the required parameter 'classifyGroceryProductRequest' is set
    if (classifyGroceryProductRequest == nil) {
        NSParameterAssert(classifyGroceryProductRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"classifyGroceryProductRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIProductsApiErrorDomain code:kOAIProductsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/classify"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (locale != nil) {
        queryParams[@"locale"] = locale;
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
    bodyParam = classifyGroceryProductRequest;

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
                              responseType: @"OAIClassifyGroceryProduct200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIClassifyGroceryProduct200Response*)data, error);
                                }
                            }];
}

///
/// Classify Grocery Product Bulk
/// Provide a set of product jsons, get back classified products.
///  @param classifyGroceryProductBulkRequestInner  
///
///  @param locale The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)
///
///  @returns OAISet<OAIClassifyGroceryProductBulk200ResponseInner>*
///
-(NSURLSessionTask*) classifyGroceryProductBulkWithClassifyGroceryProductBulkRequestInner: (OAISet<OAIClassifyGroceryProductBulkRequestInner>*) classifyGroceryProductBulkRequestInner
    locale: (NSString*) locale
    completionHandler: (void (^)(OAISet<OAIClassifyGroceryProductBulk200ResponseInner>* output, NSError* error)) handler {
    // verify the required parameter 'classifyGroceryProductBulkRequestInner' is set
    if (classifyGroceryProductBulkRequestInner == nil) {
        NSParameterAssert(classifyGroceryProductBulkRequestInner);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"classifyGroceryProductBulkRequestInner"] };
            NSError* error = [NSError errorWithDomain:kOAIProductsApiErrorDomain code:kOAIProductsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/classifyBatch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (locale != nil) {
        queryParams[@"locale"] = locale;
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
    bodyParam = classifyGroceryProductBulkRequestInner;

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
                              responseType: @"OAISet<OAIClassifyGroceryProductBulk200ResponseInner>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISet<OAIClassifyGroceryProductBulk200ResponseInner>*)data, error);
                                }
                            }];
}

///
/// Get Comparable Products
/// Find comparable products to the given one.
///  @param upc The UPC of the product for which you want to find comparable products. 
///
///  @returns OAIGetComparableProducts200Response*
///
-(NSURLSessionTask*) getComparableProductsWithUpc: (NSNumber*) upc
    completionHandler: (void (^)(OAIGetComparableProducts200Response* output, NSError* error)) handler {
    // verify the required parameter 'upc' is set
    if (upc == nil) {
        NSParameterAssert(upc);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"upc"] };
            NSError* error = [NSError errorWithDomain:kOAIProductsApiErrorDomain code:kOAIProductsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/upc/{upc}/comparable"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (upc != nil) {
        pathParams[@"upc"] = upc;
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
                              responseType: @"OAIGetComparableProducts200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetComparableProducts200Response*)data, error);
                                }
                            }];
}

///
/// Get Product Information
/// Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
///  @param _id The item's id. 
///
///  @returns OAIGetProductInformation200Response*
///
-(NSURLSessionTask*) getProductInformationWithId: (NSNumber*) _id
    completionHandler: (void (^)(OAIGetProductInformation200Response* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIProductsApiErrorDomain code:kOAIProductsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/{id}"];

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
                              responseType: @"OAIGetProductInformation200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetProductInformation200Response*)data, error);
                                }
                            }];
}

///
/// Product Nutrition by ID Image
/// Visualize a product's nutritional information as an image.
///  @param _id The id of the product. 
///
///  @returns NSURL*
///
-(NSURLSessionTask*) productNutritionByIDImageWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSURL* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIProductsApiErrorDomain code:kOAIProductsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/{id}/nutritionWidget.png"];

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
                              responseType: @"NSURL*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSURL*)data, error);
                                }
                            }];
}

///
/// Product Nutrition Label Image
/// Get a product's nutrition label as an image.
///  @param _id The product id. 
///
///  @param showOptionalNutrients Whether to show optional nutrients. (optional)
///
///  @param showZeroValues Whether to show zero values. (optional)
///
///  @param showIngredients Whether to show a list of ingredients. (optional)
///
///  @returns NSURL*
///
-(NSURLSessionTask*) productNutritionLabelImageWithId: (NSNumber*) _id
    showOptionalNutrients: (NSNumber*) showOptionalNutrients
    showZeroValues: (NSNumber*) showZeroValues
    showIngredients: (NSNumber*) showIngredients
    completionHandler: (void (^)(NSURL* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIProductsApiErrorDomain code:kOAIProductsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/{id}/nutritionLabel.png"];

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
                              responseType: @"NSURL*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSURL*)data, error);
                                }
                            }];
}

///
/// Product Nutrition Label Widget
/// Get a product's nutrition label as an HTML widget.
///  @param _id The product id. 
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
-(NSURLSessionTask*) productNutritionLabelWidgetWithId: (NSNumber*) _id
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
            NSError* error = [NSError errorWithDomain:kOAIProductsApiErrorDomain code:kOAIProductsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/{id}/nutritionLabel"];

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
/// Search Grocery Products
/// Search packaged food products, such as frozen pizza or Greek yogurt.
///  @param query The (natural language) search query. (optional)
///
///  @param minCalories The minimum amount of calories the product must have. (optional)
///
///  @param maxCalories The maximum amount of calories the product can have. (optional)
///
///  @param minCarbs The minimum amount of carbohydrates in grams the product must have. (optional)
///
///  @param maxCarbs The maximum amount of carbohydrates in grams the product can have. (optional)
///
///  @param minProtein The minimum amount of protein in grams the product must have. (optional)
///
///  @param maxProtein The maximum amount of protein in grams the product can have. (optional)
///
///  @param minFat The minimum amount of fat in grams the product must have. (optional)
///
///  @param maxFat The maximum amount of fat in grams the product can have. (optional)
///
///  @param addProductInformation If set to true, you get more information about the products returned. (optional)
///
///  @param offset The number of results to skip (between 0 and 900). (optional)
///
///  @param number The maximum number of items to return (between 1 and 100). Defaults to 10. (optional, default to @10)
///
///  @returns OAISearchGroceryProducts200Response*
///
-(NSURLSessionTask*) searchGroceryProductsWithQuery: (NSString*) query
    minCalories: (NSNumber*) minCalories
    maxCalories: (NSNumber*) maxCalories
    minCarbs: (NSNumber*) minCarbs
    maxCarbs: (NSNumber*) maxCarbs
    minProtein: (NSNumber*) minProtein
    maxProtein: (NSNumber*) maxProtein
    minFat: (NSNumber*) minFat
    maxFat: (NSNumber*) maxFat
    addProductInformation: (NSNumber*) addProductInformation
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    completionHandler: (void (^)(OAISearchGroceryProducts200Response* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (minCalories != nil) {
        queryParams[@"minCalories"] = minCalories;
    }
    if (maxCalories != nil) {
        queryParams[@"maxCalories"] = maxCalories;
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
    if (minFat != nil) {
        queryParams[@"minFat"] = minFat;
    }
    if (maxFat != nil) {
        queryParams[@"maxFat"] = maxFat;
    }
    if (addProductInformation != nil) {
        queryParams[@"addProductInformation"] = [addProductInformation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
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
                              responseType: @"OAISearchGroceryProducts200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISearchGroceryProducts200Response*)data, error);
                                }
                            }];
}

///
/// Search Grocery Products by UPC
/// Get information about a packaged food using its UPC.
///  @param upc The product's UPC. 
///
///  @returns OAISearchGroceryProductsByUPC200Response*
///
-(NSURLSessionTask*) searchGroceryProductsByUPCWithUpc: (NSNumber*) upc
    completionHandler: (void (^)(OAISearchGroceryProductsByUPC200Response* output, NSError* error)) handler {
    // verify the required parameter 'upc' is set
    if (upc == nil) {
        NSParameterAssert(upc);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"upc"] };
            NSError* error = [NSError errorWithDomain:kOAIProductsApiErrorDomain code:kOAIProductsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/upc/{upc}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (upc != nil) {
        pathParams[@"upc"] = upc;
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
                              responseType: @"OAISearchGroceryProductsByUPC200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISearchGroceryProductsByUPC200Response*)data, error);
                                }
                            }];
}

///
/// Product Nutrition by ID Widget
/// Visualize a product's nutritional information as HTML including CSS.
///  @param _id The item's id. 
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional, default to @(YES))
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeProductNutritionByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIProductsApiErrorDomain code:kOAIProductsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/{id}/nutritionWidget"];

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



@end

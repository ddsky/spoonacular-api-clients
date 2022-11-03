#import "OAIDefaultApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAnalyzeRecipeRequest.h"
#import "OAIAnalyzeRecipeRequest1.h"
#import "OAISearchRestaurants200Response.h"


@interface OAIDefaultApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIDefaultApi

NSString* kOAIDefaultApiErrorDomain = @"OAIDefaultApiErrorDomain";
NSInteger kOAIDefaultApiMissingParamErrorCode = 234513;

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
/// Analyze Recipe
/// This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
///  @param analyzeRecipeRequest Example request body. 
///
///  @param language The input language, either \"en\" or \"de\". (optional)
///
///  @param includeNutrition Whether nutrition data should be added to correctly parsed ingredients. (optional)
///
///  @param includeTaste Whether taste data should be added to correctly parsed ingredients. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) analyzeRecipeWithAnalyzeRecipeRequest: (OAIAnalyzeRecipeRequest*) analyzeRecipeRequest
    language: (NSString*) language
    includeNutrition: (NSNumber*) includeNutrition
    includeTaste: (NSNumber*) includeTaste
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'analyzeRecipeRequest' is set
    if (analyzeRecipeRequest == nil) {
        NSParameterAssert(analyzeRecipeRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"analyzeRecipeRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/analyze"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (language != nil) {
        queryParams[@"language"] = language;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"", @"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = analyzeRecipeRequest;

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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Create Recipe Card
/// Generate a recipe card for a recipe.
///  @param _id The recipe id. 
///
///  @param mask The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\"). (optional)
///
///  @param backgroundImage The background image (\"none\",\"background1\", or \"background2\"). (optional)
///
///  @param backgroundColor The background color for the recipe card as a hex-string. (optional)
///
///  @param fontColor The font color for the recipe card as a hex-string. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) createRecipeCardGetWithId: (NSNumber*) _id
    mask: (NSString*) mask
    backgroundImage: (NSString*) backgroundImage
    backgroundColor: (NSString*) backgroundColor
    fontColor: (NSString*) fontColor
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/card"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (mask != nil) {
        queryParams[@"mask"] = mask;
    }
    if (backgroundImage != nil) {
        queryParams[@"backgroundImage"] = backgroundImage;
    }
    if (backgroundColor != nil) {
        queryParams[@"backgroundColor"] = backgroundColor;
    }
    if (fontColor != nil) {
        queryParams[@"fontColor"] = fontColor;
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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Search Restaurants
/// Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
///  @param query The search query. (optional)
///
///  @param lat The latitude of the user's location. (optional)
///
///  @param lng The longitude of the user's location.\". (optional)
///
///  @param distance The distance around the location in miles. (optional)
///
///  @param budget The user's budget for a meal in USD. (optional)
///
///  @param cuisine The cuisine of the restaurant. (optional)
///
///  @param minRating The minimum rating of the restaurant between 0 and 5. (optional)
///
///  @param isOpen Whether the restaurant must be open at the time of search. (optional)
///
///  @param sort How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'. (optional)
///
///  @param page The page number of results. (optional)
///
///  @returns OAISearchRestaurants200Response*
///
-(NSURLSessionTask*) searchRestaurantsWithQuery: (NSString*) query
    lat: (NSNumber*) lat
    lng: (NSNumber*) lng
    distance: (NSNumber*) distance
    budget: (NSNumber*) budget
    cuisine: (NSString*) cuisine
    minRating: (NSNumber*) minRating
    isOpen: (NSNumber*) isOpen
    sort: (NSString*) sort
    page: (NSNumber*) page
    completionHandler: (void (^)(OAISearchRestaurants200Response* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/restaurants/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (lat != nil) {
        queryParams[@"lat"] = lat;
    }
    if (lng != nil) {
        queryParams[@"lng"] = lng;
    }
    if (distance != nil) {
        queryParams[@"distance"] = distance;
    }
    if (budget != nil) {
        queryParams[@"budget"] = budget;
    }
    if (cuisine != nil) {
        queryParams[@"cuisine"] = cuisine;
    }
    if (minRating != nil) {
        queryParams[@"min-rating"] = minRating;
    }
    if (isOpen != nil) {
        queryParams[@"is-open"] = [isOpen isEqual:@(YES)] ? @"true" : @"false";
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
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
                              responseType: @"OAISearchRestaurants200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISearchRestaurants200Response*)data, error);
                                }
                            }];
}



@end

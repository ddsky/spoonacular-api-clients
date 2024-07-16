{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import Spoonacular.Model
import Spoonacular.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V
import Data.String (fromString)

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

#if MIN_VERSION_aeson(2,0,0)
#else
-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = arbitraryValue
#endif

arbitraryValue :: Gen A.Value
arbitraryValue =
  frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (fromString k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays

-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models

instance Arbitrary AddMealPlanTemplate200Response where
  arbitrary = sized genAddMealPlanTemplate200Response

genAddMealPlanTemplate200Response :: Int -> Gen AddMealPlanTemplate200Response
genAddMealPlanTemplate200Response n =
  AddMealPlanTemplate200Response
    <$> arbitrary -- addMealPlanTemplate200ResponseName :: Text
    <*> arbitraryReduced n -- addMealPlanTemplate200ResponseItems :: [AddMealPlanTemplate200ResponseItemsInner]
    <*> arbitrary -- addMealPlanTemplate200ResponsePublishAsPublic :: Bool
  
instance Arbitrary AddMealPlanTemplate200ResponseItemsInner where
  arbitrary = sized genAddMealPlanTemplate200ResponseItemsInner

genAddMealPlanTemplate200ResponseItemsInner :: Int -> Gen AddMealPlanTemplate200ResponseItemsInner
genAddMealPlanTemplate200ResponseItemsInner n =
  AddMealPlanTemplate200ResponseItemsInner
    <$> arbitrary -- addMealPlanTemplate200ResponseItemsInnerDay :: Int
    <*> arbitrary -- addMealPlanTemplate200ResponseItemsInnerSlot :: Int
    <*> arbitrary -- addMealPlanTemplate200ResponseItemsInnerPosition :: Int
    <*> arbitrary -- addMealPlanTemplate200ResponseItemsInnerType :: Text
    <*> arbitraryReducedMaybe n -- addMealPlanTemplate200ResponseItemsInnerValue :: Maybe AddMealPlanTemplate200ResponseItemsInnerValue
  
instance Arbitrary AddMealPlanTemplate200ResponseItemsInnerValue where
  arbitrary = sized genAddMealPlanTemplate200ResponseItemsInnerValue

genAddMealPlanTemplate200ResponseItemsInnerValue :: Int -> Gen AddMealPlanTemplate200ResponseItemsInnerValue
genAddMealPlanTemplate200ResponseItemsInnerValue n =
  AddMealPlanTemplate200ResponseItemsInnerValue
    <$> arbitraryReducedMaybe n -- addMealPlanTemplate200ResponseItemsInnerValueId :: Maybe Int
    <*> arbitraryReducedMaybe n -- addMealPlanTemplate200ResponseItemsInnerValueServings :: Maybe Double
    <*> arbitraryReducedMaybe n -- addMealPlanTemplate200ResponseItemsInnerValueTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- addMealPlanTemplate200ResponseItemsInnerValueImageType :: Maybe Text
  
instance Arbitrary AddToMealPlanRequest where
  arbitrary = sized genAddToMealPlanRequest

genAddToMealPlanRequest :: Int -> Gen AddToMealPlanRequest
genAddToMealPlanRequest n =
  AddToMealPlanRequest
    <$> arbitrary -- addToMealPlanRequestDate :: Double
    <*> arbitrary -- addToMealPlanRequestSlot :: Int
    <*> arbitrary -- addToMealPlanRequestPosition :: Int
    <*> arbitrary -- addToMealPlanRequestType :: Text
    <*> arbitraryReduced n -- addToMealPlanRequestValue :: AddToMealPlanRequestValue
  
instance Arbitrary AddToMealPlanRequestValue where
  arbitrary = sized genAddToMealPlanRequestValue

genAddToMealPlanRequestValue :: Int -> Gen AddToMealPlanRequestValue
genAddToMealPlanRequestValue n =
  AddToMealPlanRequestValue
    <$> arbitraryReduced n -- addToMealPlanRequestValueIngredients :: [AddToMealPlanRequestValueIngredientsInner]
  
instance Arbitrary AddToMealPlanRequestValueIngredientsInner where
  arbitrary = sized genAddToMealPlanRequestValueIngredientsInner

genAddToMealPlanRequestValueIngredientsInner :: Int -> Gen AddToMealPlanRequestValueIngredientsInner
genAddToMealPlanRequestValueIngredientsInner n =
  AddToMealPlanRequestValueIngredientsInner
    <$> arbitrary -- addToMealPlanRequestValueIngredientsInnerName :: Text
  
instance Arbitrary AddToShoppingListRequest where
  arbitrary = sized genAddToShoppingListRequest

genAddToShoppingListRequest :: Int -> Gen AddToShoppingListRequest
genAddToShoppingListRequest n =
  AddToShoppingListRequest
    <$> arbitrary -- addToShoppingListRequestItem :: Text
    <*> arbitrary -- addToShoppingListRequestAisle :: Text
    <*> arbitrary -- addToShoppingListRequestParse :: Bool
  
instance Arbitrary AnalyzeARecipeSearchQuery200Response where
  arbitrary = sized genAnalyzeARecipeSearchQuery200Response

genAnalyzeARecipeSearchQuery200Response :: Int -> Gen AnalyzeARecipeSearchQuery200Response
genAnalyzeARecipeSearchQuery200Response n =
  AnalyzeARecipeSearchQuery200Response
    <$> arbitraryReduced n -- analyzeARecipeSearchQuery200ResponseDishes :: [AnalyzeARecipeSearchQuery200ResponseDishesInner]
    <*> arbitraryReduced n -- analyzeARecipeSearchQuery200ResponseIngredients :: [AnalyzeARecipeSearchQuery200ResponseIngredientsInner]
    <*> arbitrary -- analyzeARecipeSearchQuery200ResponseCuisines :: [Text]
    <*> arbitrary -- analyzeARecipeSearchQuery200ResponseModifiers :: [Text]
  
instance Arbitrary AnalyzeARecipeSearchQuery200ResponseDishesInner where
  arbitrary = sized genAnalyzeARecipeSearchQuery200ResponseDishesInner

genAnalyzeARecipeSearchQuery200ResponseDishesInner :: Int -> Gen AnalyzeARecipeSearchQuery200ResponseDishesInner
genAnalyzeARecipeSearchQuery200ResponseDishesInner n =
  AnalyzeARecipeSearchQuery200ResponseDishesInner
    <$> arbitrary -- analyzeARecipeSearchQuery200ResponseDishesInnerImage :: Text
    <*> arbitrary -- analyzeARecipeSearchQuery200ResponseDishesInnerName :: Text
  
instance Arbitrary AnalyzeARecipeSearchQuery200ResponseIngredientsInner where
  arbitrary = sized genAnalyzeARecipeSearchQuery200ResponseIngredientsInner

genAnalyzeARecipeSearchQuery200ResponseIngredientsInner :: Int -> Gen AnalyzeARecipeSearchQuery200ResponseIngredientsInner
genAnalyzeARecipeSearchQuery200ResponseIngredientsInner n =
  AnalyzeARecipeSearchQuery200ResponseIngredientsInner
    <$> arbitrary -- analyzeARecipeSearchQuery200ResponseIngredientsInnerImage :: Text
    <*> arbitrary -- analyzeARecipeSearchQuery200ResponseIngredientsInnerInclude :: Bool
    <*> arbitrary -- analyzeARecipeSearchQuery200ResponseIngredientsInnerName :: Text
  
instance Arbitrary AnalyzeRecipeInstructions200Response where
  arbitrary = sized genAnalyzeRecipeInstructions200Response

genAnalyzeRecipeInstructions200Response :: Int -> Gen AnalyzeRecipeInstructions200Response
genAnalyzeRecipeInstructions200Response n =
  AnalyzeRecipeInstructions200Response
    <$> arbitraryReduced n -- analyzeRecipeInstructions200ResponseParsedInstructions :: [AnalyzeRecipeInstructions200ResponseParsedInstructionsInner]
    <*> arbitraryReduced n -- analyzeRecipeInstructions200ResponseIngredients :: [AnalyzeRecipeInstructions200ResponseIngredientsInner]
    <*> arbitraryReduced n -- analyzeRecipeInstructions200ResponseEquipment :: [AnalyzeRecipeInstructions200ResponseIngredientsInner]
  
instance Arbitrary AnalyzeRecipeInstructions200ResponseIngredientsInner where
  arbitrary = sized genAnalyzeRecipeInstructions200ResponseIngredientsInner

genAnalyzeRecipeInstructions200ResponseIngredientsInner :: Int -> Gen AnalyzeRecipeInstructions200ResponseIngredientsInner
genAnalyzeRecipeInstructions200ResponseIngredientsInner n =
  AnalyzeRecipeInstructions200ResponseIngredientsInner
    <$> arbitrary -- analyzeRecipeInstructions200ResponseIngredientsInnerId :: Int
    <*> arbitrary -- analyzeRecipeInstructions200ResponseIngredientsInnerName :: Text
  
instance Arbitrary AnalyzeRecipeInstructions200ResponseParsedInstructionsInner where
  arbitrary = sized genAnalyzeRecipeInstructions200ResponseParsedInstructionsInner

genAnalyzeRecipeInstructions200ResponseParsedInstructionsInner :: Int -> Gen AnalyzeRecipeInstructions200ResponseParsedInstructionsInner
genAnalyzeRecipeInstructions200ResponseParsedInstructionsInner n =
  AnalyzeRecipeInstructions200ResponseParsedInstructionsInner
    <$> arbitrary -- analyzeRecipeInstructions200ResponseParsedInstructionsInnerName :: Text
    <*> arbitraryReducedMaybe n -- analyzeRecipeInstructions200ResponseParsedInstructionsInnerSteps :: Maybe [AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner]
  
instance Arbitrary AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner where
  arbitrary = sized genAnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner

genAnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner :: Int -> Gen AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner
genAnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner n =
  AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner
    <$> arbitrary -- analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerNumber :: Double
    <*> arbitrary -- analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerStep :: Text
    <*> arbitraryReducedMaybe n -- analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredients :: Maybe [AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner]
    <*> arbitraryReducedMaybe n -- analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerEquipment :: Maybe [AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner]
  
instance Arbitrary AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner where
  arbitrary = sized genAnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner

genAnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner :: Int -> Gen AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner
genAnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner n =
  AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner
    <$> arbitrary -- analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInnerId :: Int
    <*> arbitrary -- analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInnerName :: Text
    <*> arbitrary -- analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInnerLocalizedName :: Text
    <*> arbitrary -- analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInnerImage :: Text
  
instance Arbitrary AnalyzeRecipeRequest where
  arbitrary = sized genAnalyzeRecipeRequest

genAnalyzeRecipeRequest :: Int -> Gen AnalyzeRecipeRequest
genAnalyzeRecipeRequest n =
  AnalyzeRecipeRequest
    <$> arbitraryReducedMaybe n -- analyzeRecipeRequestTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- analyzeRecipeRequestServings :: Maybe Int
    <*> arbitraryReducedMaybe n -- analyzeRecipeRequestIngredients :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- analyzeRecipeRequestInstructions :: Maybe Text
  
instance Arbitrary AutocompleteIngredientSearch200ResponseInner where
  arbitrary = sized genAutocompleteIngredientSearch200ResponseInner

genAutocompleteIngredientSearch200ResponseInner :: Int -> Gen AutocompleteIngredientSearch200ResponseInner
genAutocompleteIngredientSearch200ResponseInner n =
  AutocompleteIngredientSearch200ResponseInner
    <$> arbitrary -- autocompleteIngredientSearch200ResponseInnerName :: Text
    <*> arbitrary -- autocompleteIngredientSearch200ResponseInnerImage :: Text
    <*> arbitraryReducedMaybe n -- autocompleteIngredientSearch200ResponseInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- autocompleteIngredientSearch200ResponseInnerAisle :: Maybe Text
    <*> arbitraryReducedMaybe n -- autocompleteIngredientSearch200ResponseInnerPossibleUnits :: Maybe [Text]
  
instance Arbitrary AutocompleteProductSearch200Response where
  arbitrary = sized genAutocompleteProductSearch200Response

genAutocompleteProductSearch200Response :: Int -> Gen AutocompleteProductSearch200Response
genAutocompleteProductSearch200Response n =
  AutocompleteProductSearch200Response
    <$> arbitraryReduced n -- autocompleteProductSearch200ResponseResults :: [AutocompleteProductSearch200ResponseResultsInner]
  
instance Arbitrary AutocompleteProductSearch200ResponseResultsInner where
  arbitrary = sized genAutocompleteProductSearch200ResponseResultsInner

genAutocompleteProductSearch200ResponseResultsInner :: Int -> Gen AutocompleteProductSearch200ResponseResultsInner
genAutocompleteProductSearch200ResponseResultsInner n =
  AutocompleteProductSearch200ResponseResultsInner
    <$> arbitrary -- autocompleteProductSearch200ResponseResultsInnerId :: Int
    <*> arbitrary -- autocompleteProductSearch200ResponseResultsInnerTitle :: Text
  
instance Arbitrary AutocompleteRecipeSearch200ResponseInner where
  arbitrary = sized genAutocompleteRecipeSearch200ResponseInner

genAutocompleteRecipeSearch200ResponseInner :: Int -> Gen AutocompleteRecipeSearch200ResponseInner
genAutocompleteRecipeSearch200ResponseInner n =
  AutocompleteRecipeSearch200ResponseInner
    <$> arbitrary -- autocompleteRecipeSearch200ResponseInnerId :: Int
    <*> arbitrary -- autocompleteRecipeSearch200ResponseInnerTitle :: Text
    <*> arbitrary -- autocompleteRecipeSearch200ResponseInnerImageType :: Text
  
instance Arbitrary ClassifyCuisine200Response where
  arbitrary = sized genClassifyCuisine200Response

genClassifyCuisine200Response :: Int -> Gen ClassifyCuisine200Response
genClassifyCuisine200Response n =
  ClassifyCuisine200Response
    <$> arbitrary -- classifyCuisine200ResponseCuisine :: Text
    <*> arbitrary -- classifyCuisine200ResponseCuisines :: [Text]
    <*> arbitrary -- classifyCuisine200ResponseConfidence :: Double
  
instance Arbitrary ClassifyGroceryProduct200Response where
  arbitrary = sized genClassifyGroceryProduct200Response

genClassifyGroceryProduct200Response :: Int -> Gen ClassifyGroceryProduct200Response
genClassifyGroceryProduct200Response n =
  ClassifyGroceryProduct200Response
    <$> arbitrary -- classifyGroceryProduct200ResponseCleanTitle :: Text
    <*> arbitrary -- classifyGroceryProduct200ResponseImage :: Text
    <*> arbitrary -- classifyGroceryProduct200ResponseCategory :: Text
    <*> arbitrary -- classifyGroceryProduct200ResponseBreadcrumbs :: [Text]
    <*> arbitrary -- classifyGroceryProduct200ResponseUsdaCode :: Int
  
instance Arbitrary ClassifyGroceryProductBulk200ResponseInner where
  arbitrary = sized genClassifyGroceryProductBulk200ResponseInner

genClassifyGroceryProductBulk200ResponseInner :: Int -> Gen ClassifyGroceryProductBulk200ResponseInner
genClassifyGroceryProductBulk200ResponseInner n =
  ClassifyGroceryProductBulk200ResponseInner
    <$> arbitrary -- classifyGroceryProductBulk200ResponseInnerCleanTitle :: Text
    <*> arbitrary -- classifyGroceryProductBulk200ResponseInnerImage :: Text
    <*> arbitrary -- classifyGroceryProductBulk200ResponseInnerCategory :: Text
    <*> arbitrary -- classifyGroceryProductBulk200ResponseInnerBreadcrumbs :: [Text]
    <*> arbitrary -- classifyGroceryProductBulk200ResponseInnerUsdaCode :: Int
  
instance Arbitrary ClassifyGroceryProductBulkRequestInner where
  arbitrary = sized genClassifyGroceryProductBulkRequestInner

genClassifyGroceryProductBulkRequestInner :: Int -> Gen ClassifyGroceryProductBulkRequestInner
genClassifyGroceryProductBulkRequestInner n =
  ClassifyGroceryProductBulkRequestInner
    <$> arbitrary -- classifyGroceryProductBulkRequestInnerTitle :: Text
    <*> arbitrary -- classifyGroceryProductBulkRequestInnerUpc :: Text
    <*> arbitrary -- classifyGroceryProductBulkRequestInnerPluCode :: Text
  
instance Arbitrary ClassifyGroceryProductRequest where
  arbitrary = sized genClassifyGroceryProductRequest

genClassifyGroceryProductRequest :: Int -> Gen ClassifyGroceryProductRequest
genClassifyGroceryProductRequest n =
  ClassifyGroceryProductRequest
    <$> arbitrary -- classifyGroceryProductRequestTitle :: Text
    <*> arbitrary -- classifyGroceryProductRequestUpc :: Text
    <*> arbitrary -- classifyGroceryProductRequestPluCode :: Text
  
instance Arbitrary ComparableProduct where
  arbitrary = sized genComparableProduct

genComparableProduct :: Int -> Gen ComparableProduct
genComparableProduct n =
  ComparableProduct
    <$> arbitrary -- comparableProductDifference :: Double
    <*> arbitrary -- comparableProductId :: Int
    <*> arbitrary -- comparableProductImage :: Text
    <*> arbitrary -- comparableProductTitle :: Text
  
instance Arbitrary ComputeGlycemicLoad200Response where
  arbitrary = sized genComputeGlycemicLoad200Response

genComputeGlycemicLoad200Response :: Int -> Gen ComputeGlycemicLoad200Response
genComputeGlycemicLoad200Response n =
  ComputeGlycemicLoad200Response
    <$> arbitrary -- computeGlycemicLoad200ResponseTotalGlycemicLoad :: Double
    <*> arbitraryReduced n -- computeGlycemicLoad200ResponseIngredients :: [ComputeGlycemicLoad200ResponseIngredientsInner]
  
instance Arbitrary ComputeGlycemicLoad200ResponseIngredientsInner where
  arbitrary = sized genComputeGlycemicLoad200ResponseIngredientsInner

genComputeGlycemicLoad200ResponseIngredientsInner :: Int -> Gen ComputeGlycemicLoad200ResponseIngredientsInner
genComputeGlycemicLoad200ResponseIngredientsInner n =
  ComputeGlycemicLoad200ResponseIngredientsInner
    <$> arbitrary -- computeGlycemicLoad200ResponseIngredientsInnerId :: Int
    <*> arbitrary -- computeGlycemicLoad200ResponseIngredientsInnerOriginal :: Text
    <*> arbitrary -- computeGlycemicLoad200ResponseIngredientsInnerGlycemicIndex :: Double
    <*> arbitrary -- computeGlycemicLoad200ResponseIngredientsInnerGlycemicLoad :: Double
  
instance Arbitrary ComputeGlycemicLoadRequest where
  arbitrary = sized genComputeGlycemicLoadRequest

genComputeGlycemicLoadRequest :: Int -> Gen ComputeGlycemicLoadRequest
genComputeGlycemicLoadRequest n =
  ComputeGlycemicLoadRequest
    <$> arbitrary -- computeGlycemicLoadRequestIngredients :: [Text]
  
instance Arbitrary ComputeIngredientAmount200Response where
  arbitrary = sized genComputeIngredientAmount200Response

genComputeIngredientAmount200Response :: Int -> Gen ComputeIngredientAmount200Response
genComputeIngredientAmount200Response n =
  ComputeIngredientAmount200Response
    <$> arbitrary -- computeIngredientAmount200ResponseAmount :: Double
    <*> arbitrary -- computeIngredientAmount200ResponseUnit :: Text
  
instance Arbitrary ConnectUser200Response where
  arbitrary = sized genConnectUser200Response

genConnectUser200Response :: Int -> Gen ConnectUser200Response
genConnectUser200Response n =
  ConnectUser200Response
    <$> arbitrary -- connectUser200ResponseUsername :: Text
    <*> arbitrary -- connectUser200ResponseHash :: Text
  
instance Arbitrary ConnectUserRequest where
  arbitrary = sized genConnectUserRequest

genConnectUserRequest :: Int -> Gen ConnectUserRequest
genConnectUserRequest n =
  ConnectUserRequest
    <$> arbitrary -- connectUserRequestUsername :: Text
    <*> arbitrary -- connectUserRequestFirstName :: Text
    <*> arbitrary -- connectUserRequestLastName :: Text
    <*> arbitrary -- connectUserRequestEmail :: Text
  
instance Arbitrary ConvertAmounts200Response where
  arbitrary = sized genConvertAmounts200Response

genConvertAmounts200Response :: Int -> Gen ConvertAmounts200Response
genConvertAmounts200Response n =
  ConvertAmounts200Response
    <$> arbitrary -- convertAmounts200ResponseSourceAmount :: Double
    <*> arbitrary -- convertAmounts200ResponseSourceUnit :: Text
    <*> arbitrary -- convertAmounts200ResponseTargetAmount :: Double
    <*> arbitrary -- convertAmounts200ResponseTargetUnit :: Text
    <*> arbitrary -- convertAmounts200ResponseAnswer :: Text
  
instance Arbitrary CreateRecipeCard200Response where
  arbitrary = sized genCreateRecipeCard200Response

genCreateRecipeCard200Response :: Int -> Gen CreateRecipeCard200Response
genCreateRecipeCard200Response n =
  CreateRecipeCard200Response
    <$> arbitrary -- createRecipeCard200ResponseUrl :: Text
  
instance Arbitrary DetectFoodInText200Response where
  arbitrary = sized genDetectFoodInText200Response

genDetectFoodInText200Response :: Int -> Gen DetectFoodInText200Response
genDetectFoodInText200Response n =
  DetectFoodInText200Response
    <$> arbitraryReduced n -- detectFoodInText200ResponseAnnotations :: [DetectFoodInText200ResponseAnnotationsInner]
  
instance Arbitrary DetectFoodInText200ResponseAnnotationsInner where
  arbitrary = sized genDetectFoodInText200ResponseAnnotationsInner

genDetectFoodInText200ResponseAnnotationsInner :: Int -> Gen DetectFoodInText200ResponseAnnotationsInner
genDetectFoodInText200ResponseAnnotationsInner n =
  DetectFoodInText200ResponseAnnotationsInner
    <$> arbitrary -- detectFoodInText200ResponseAnnotationsInnerAnnotation :: Text
    <*> arbitrary -- detectFoodInText200ResponseAnnotationsInnerImage :: Text
    <*> arbitrary -- detectFoodInText200ResponseAnnotationsInnerTag :: Text
  
instance Arbitrary GenerateMealPlan200Response where
  arbitrary = sized genGenerateMealPlan200Response

genGenerateMealPlan200Response :: Int -> Gen GenerateMealPlan200Response
genGenerateMealPlan200Response n =
  GenerateMealPlan200Response
    <$> arbitraryReduced n -- generateMealPlan200ResponseMeals :: [GetSimilarRecipes200ResponseInner]
    <*> arbitraryReduced n -- generateMealPlan200ResponseNutrients :: GenerateMealPlan200ResponseNutrients
  
instance Arbitrary GenerateMealPlan200ResponseNutrients where
  arbitrary = sized genGenerateMealPlan200ResponseNutrients

genGenerateMealPlan200ResponseNutrients :: Int -> Gen GenerateMealPlan200ResponseNutrients
genGenerateMealPlan200ResponseNutrients n =
  GenerateMealPlan200ResponseNutrients
    <$> arbitrary -- generateMealPlan200ResponseNutrientsCalories :: Double
    <*> arbitrary -- generateMealPlan200ResponseNutrientsCarbohydrates :: Double
    <*> arbitrary -- generateMealPlan200ResponseNutrientsFat :: Double
    <*> arbitrary -- generateMealPlan200ResponseNutrientsProtein :: Double
  
instance Arbitrary GetARandomFoodJoke200Response where
  arbitrary = sized genGetARandomFoodJoke200Response

genGetARandomFoodJoke200Response :: Int -> Gen GetARandomFoodJoke200Response
genGetARandomFoodJoke200Response n =
  GetARandomFoodJoke200Response
    <$> arbitrary -- getARandomFoodJoke200ResponseText :: Text
  
instance Arbitrary GetAnalyzedRecipeInstructions200ResponseInner where
  arbitrary = sized genGetAnalyzedRecipeInstructions200ResponseInner

genGetAnalyzedRecipeInstructions200ResponseInner :: Int -> Gen GetAnalyzedRecipeInstructions200ResponseInner
genGetAnalyzedRecipeInstructions200ResponseInner n =
  GetAnalyzedRecipeInstructions200ResponseInner
    <$> arbitrary -- getAnalyzedRecipeInstructions200ResponseInnerName :: Text
    <*> arbitraryReducedMaybe n -- getAnalyzedRecipeInstructions200ResponseInnerSteps :: Maybe [GetAnalyzedRecipeInstructions200ResponseInnerStepsInner]
  
instance Arbitrary GetAnalyzedRecipeInstructions200ResponseInnerStepsInner where
  arbitrary = sized genGetAnalyzedRecipeInstructions200ResponseInnerStepsInner

genGetAnalyzedRecipeInstructions200ResponseInnerStepsInner :: Int -> Gen GetAnalyzedRecipeInstructions200ResponseInnerStepsInner
genGetAnalyzedRecipeInstructions200ResponseInnerStepsInner n =
  GetAnalyzedRecipeInstructions200ResponseInnerStepsInner
    <$> arbitrary -- getAnalyzedRecipeInstructions200ResponseInnerStepsInnerNumber :: Double
    <*> arbitrary -- getAnalyzedRecipeInstructions200ResponseInnerStepsInnerStep :: Text
    <*> arbitraryReducedMaybe n -- getAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredients :: Maybe [GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner]
    <*> arbitraryReducedMaybe n -- getAnalyzedRecipeInstructions200ResponseInnerStepsInnerEquipment :: Maybe [GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner]
  
instance Arbitrary GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner where
  arbitrary = sized genGetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner

genGetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner :: Int -> Gen GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner
genGetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner n =
  GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner
    <$> arbitrary -- getAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInnerId :: Int
    <*> arbitrary -- getAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInnerName :: Text
    <*> arbitrary -- getAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInnerLocalizedName :: Text
    <*> arbitrary -- getAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInnerImage :: Text
  
instance Arbitrary GetComparableProducts200Response where
  arbitrary = sized genGetComparableProducts200Response

genGetComparableProducts200Response :: Int -> Gen GetComparableProducts200Response
genGetComparableProducts200Response n =
  GetComparableProducts200Response
    <$> arbitraryReduced n -- getComparableProducts200ResponseComparableProducts :: GetComparableProducts200ResponseComparableProducts
  
instance Arbitrary GetComparableProducts200ResponseComparableProducts where
  arbitrary = sized genGetComparableProducts200ResponseComparableProducts

genGetComparableProducts200ResponseComparableProducts :: Int -> Gen GetComparableProducts200ResponseComparableProducts
genGetComparableProducts200ResponseComparableProducts n =
  GetComparableProducts200ResponseComparableProducts
    <$> arbitraryReduced n -- getComparableProducts200ResponseComparableProductsCalories :: [ComparableProduct]
    <*> arbitraryReduced n -- getComparableProducts200ResponseComparableProductsLikes :: [ComparableProduct]
    <*> arbitraryReduced n -- getComparableProducts200ResponseComparableProductsPrice :: [ComparableProduct]
    <*> arbitraryReduced n -- getComparableProducts200ResponseComparableProductsProtein :: [ComparableProduct]
    <*> arbitraryReduced n -- getComparableProducts200ResponseComparableProductsSpoonacularScore :: [ComparableProduct]
    <*> arbitraryReduced n -- getComparableProducts200ResponseComparableProductsSugar :: [ComparableProduct]
  
instance Arbitrary GetConversationSuggests200Response where
  arbitrary = sized genGetConversationSuggests200Response

genGetConversationSuggests200Response :: Int -> Gen GetConversationSuggests200Response
genGetConversationSuggests200Response n =
  GetConversationSuggests200Response
    <$> arbitraryReduced n -- getConversationSuggests200ResponseSuggests :: GetConversationSuggests200ResponseSuggests
    <*> arbitrary -- getConversationSuggests200ResponseWords :: [Text]
  
instance Arbitrary GetConversationSuggests200ResponseSuggests where
  arbitrary = sized genGetConversationSuggests200ResponseSuggests

genGetConversationSuggests200ResponseSuggests :: Int -> Gen GetConversationSuggests200ResponseSuggests
genGetConversationSuggests200ResponseSuggests n =
  GetConversationSuggests200ResponseSuggests
    <$> arbitraryReduced n -- getConversationSuggests200ResponseSuggestsUnderscore :: [GetConversationSuggests200ResponseSuggestsInner]
  
instance Arbitrary GetConversationSuggests200ResponseSuggestsInner where
  arbitrary = sized genGetConversationSuggests200ResponseSuggestsInner

genGetConversationSuggests200ResponseSuggestsInner :: Int -> Gen GetConversationSuggests200ResponseSuggestsInner
genGetConversationSuggests200ResponseSuggestsInner n =
  GetConversationSuggests200ResponseSuggestsInner
    <$> arbitrary -- getConversationSuggests200ResponseSuggestsInnerName :: Text
  
instance Arbitrary GetDishPairingForWine200Response where
  arbitrary = sized genGetDishPairingForWine200Response

genGetDishPairingForWine200Response :: Int -> Gen GetDishPairingForWine200Response
genGetDishPairingForWine200Response n =
  GetDishPairingForWine200Response
    <$> arbitrary -- getDishPairingForWine200ResponsePairings :: [Text]
    <*> arbitrary -- getDishPairingForWine200ResponseText :: Text
  
instance Arbitrary GetIngredientSubstitutes200Response where
  arbitrary = sized genGetIngredientSubstitutes200Response

genGetIngredientSubstitutes200Response :: Int -> Gen GetIngredientSubstitutes200Response
genGetIngredientSubstitutes200Response n =
  GetIngredientSubstitutes200Response
    <$> arbitrary -- getIngredientSubstitutes200ResponseIngredient :: Text
    <*> arbitrary -- getIngredientSubstitutes200ResponseSubstitutes :: [Text]
    <*> arbitrary -- getIngredientSubstitutes200ResponseMessage :: Text
  
instance Arbitrary GetMealPlanTemplate200Response where
  arbitrary = sized genGetMealPlanTemplate200Response

genGetMealPlanTemplate200Response :: Int -> Gen GetMealPlanTemplate200Response
genGetMealPlanTemplate200Response n =
  GetMealPlanTemplate200Response
    <$> arbitrary -- getMealPlanTemplate200ResponseId :: Int
    <*> arbitrary -- getMealPlanTemplate200ResponseName :: Text
    <*> arbitraryReduced n -- getMealPlanTemplate200ResponseDays :: [GetMealPlanTemplate200ResponseDaysInner]
  
instance Arbitrary GetMealPlanTemplate200ResponseDaysInner where
  arbitrary = sized genGetMealPlanTemplate200ResponseDaysInner

genGetMealPlanTemplate200ResponseDaysInner :: Int -> Gen GetMealPlanTemplate200ResponseDaysInner
genGetMealPlanTemplate200ResponseDaysInner n =
  GetMealPlanTemplate200ResponseDaysInner
    <$> arbitraryReducedMaybe n -- getMealPlanTemplate200ResponseDaysInnerNutritionSummary :: Maybe GetMealPlanWeek200ResponseDaysInnerNutritionSummary
    <*> arbitraryReducedMaybe n -- getMealPlanTemplate200ResponseDaysInnerNutritionSummaryBreakfast :: Maybe GetMealPlanWeek200ResponseDaysInnerNutritionSummary
    <*> arbitraryReducedMaybe n -- getMealPlanTemplate200ResponseDaysInnerNutritionSummaryLunch :: Maybe GetMealPlanWeek200ResponseDaysInnerNutritionSummary
    <*> arbitraryReducedMaybe n -- getMealPlanTemplate200ResponseDaysInnerNutritionSummaryDinner :: Maybe GetMealPlanWeek200ResponseDaysInnerNutritionSummary
    <*> arbitrary -- getMealPlanTemplate200ResponseDaysInnerDay :: Text
    <*> arbitraryReducedMaybe n -- getMealPlanTemplate200ResponseDaysInnerItems :: Maybe [GetMealPlanTemplate200ResponseDaysInnerItemsInner]
  
instance Arbitrary GetMealPlanTemplate200ResponseDaysInnerItemsInner where
  arbitrary = sized genGetMealPlanTemplate200ResponseDaysInnerItemsInner

genGetMealPlanTemplate200ResponseDaysInnerItemsInner :: Int -> Gen GetMealPlanTemplate200ResponseDaysInnerItemsInner
genGetMealPlanTemplate200ResponseDaysInnerItemsInner n =
  GetMealPlanTemplate200ResponseDaysInnerItemsInner
    <$> arbitrary -- getMealPlanTemplate200ResponseDaysInnerItemsInnerId :: Int
    <*> arbitrary -- getMealPlanTemplate200ResponseDaysInnerItemsInnerSlot :: Int
    <*> arbitrary -- getMealPlanTemplate200ResponseDaysInnerItemsInnerPosition :: Int
    <*> arbitrary -- getMealPlanTemplate200ResponseDaysInnerItemsInnerType :: Text
    <*> arbitraryReducedMaybe n -- getMealPlanTemplate200ResponseDaysInnerItemsInnerValue :: Maybe GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue
  
instance Arbitrary GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue where
  arbitrary = sized genGetMealPlanTemplate200ResponseDaysInnerItemsInnerValue

genGetMealPlanTemplate200ResponseDaysInnerItemsInnerValue :: Int -> Gen GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue
genGetMealPlanTemplate200ResponseDaysInnerItemsInnerValue n =
  GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue
    <$> arbitrary -- getMealPlanTemplate200ResponseDaysInnerItemsInnerValueId :: Double
    <*> arbitrary -- getMealPlanTemplate200ResponseDaysInnerItemsInnerValueTitle :: Text
    <*> arbitrary -- getMealPlanTemplate200ResponseDaysInnerItemsInnerValueImageType :: Text
  
instance Arbitrary GetMealPlanTemplates200Response where
  arbitrary = sized genGetMealPlanTemplates200Response

genGetMealPlanTemplates200Response :: Int -> Gen GetMealPlanTemplates200Response
genGetMealPlanTemplates200Response n =
  GetMealPlanTemplates200Response
    <$> arbitraryReduced n -- getMealPlanTemplates200ResponseTemplates :: [GetMealPlanTemplates200ResponseTemplatesInner]
  
instance Arbitrary GetMealPlanTemplates200ResponseTemplatesInner where
  arbitrary = sized genGetMealPlanTemplates200ResponseTemplatesInner

genGetMealPlanTemplates200ResponseTemplatesInner :: Int -> Gen GetMealPlanTemplates200ResponseTemplatesInner
genGetMealPlanTemplates200ResponseTemplatesInner n =
  GetMealPlanTemplates200ResponseTemplatesInner
    <$> arbitrary -- getMealPlanTemplates200ResponseTemplatesInnerId :: Int
    <*> arbitrary -- getMealPlanTemplates200ResponseTemplatesInnerName :: Text
  
instance Arbitrary GetMealPlanWeek200Response where
  arbitrary = sized genGetMealPlanWeek200Response

genGetMealPlanWeek200Response :: Int -> Gen GetMealPlanWeek200Response
genGetMealPlanWeek200Response n =
  GetMealPlanWeek200Response
    <$> arbitraryReduced n -- getMealPlanWeek200ResponseDays :: [GetMealPlanWeek200ResponseDaysInner]
  
instance Arbitrary GetMealPlanWeek200ResponseDaysInner where
  arbitrary = sized genGetMealPlanWeek200ResponseDaysInner

genGetMealPlanWeek200ResponseDaysInner :: Int -> Gen GetMealPlanWeek200ResponseDaysInner
genGetMealPlanWeek200ResponseDaysInner n =
  GetMealPlanWeek200ResponseDaysInner
    <$> arbitraryReducedMaybe n -- getMealPlanWeek200ResponseDaysInnerNutritionSummary :: Maybe GetMealPlanWeek200ResponseDaysInnerNutritionSummary
    <*> arbitraryReducedMaybe n -- getMealPlanWeek200ResponseDaysInnerNutritionSummaryBreakfast :: Maybe GetMealPlanWeek200ResponseDaysInnerNutritionSummary
    <*> arbitraryReducedMaybe n -- getMealPlanWeek200ResponseDaysInnerNutritionSummaryLunch :: Maybe GetMealPlanWeek200ResponseDaysInnerNutritionSummary
    <*> arbitraryReducedMaybe n -- getMealPlanWeek200ResponseDaysInnerNutritionSummaryDinner :: Maybe GetMealPlanWeek200ResponseDaysInnerNutritionSummary
    <*> arbitrary -- getMealPlanWeek200ResponseDaysInnerDate :: Double
    <*> arbitrary -- getMealPlanWeek200ResponseDaysInnerDay :: Text
    <*> arbitraryReducedMaybe n -- getMealPlanWeek200ResponseDaysInnerItems :: Maybe [GetMealPlanWeek200ResponseDaysInnerItemsInner]
  
instance Arbitrary GetMealPlanWeek200ResponseDaysInnerItemsInner where
  arbitrary = sized genGetMealPlanWeek200ResponseDaysInnerItemsInner

genGetMealPlanWeek200ResponseDaysInnerItemsInner :: Int -> Gen GetMealPlanWeek200ResponseDaysInnerItemsInner
genGetMealPlanWeek200ResponseDaysInnerItemsInner n =
  GetMealPlanWeek200ResponseDaysInnerItemsInner
    <$> arbitrary -- getMealPlanWeek200ResponseDaysInnerItemsInnerId :: Int
    <*> arbitrary -- getMealPlanWeek200ResponseDaysInnerItemsInnerSlot :: Int
    <*> arbitrary -- getMealPlanWeek200ResponseDaysInnerItemsInnerPosition :: Int
    <*> arbitrary -- getMealPlanWeek200ResponseDaysInnerItemsInnerType :: Text
    <*> arbitraryReducedMaybe n -- getMealPlanWeek200ResponseDaysInnerItemsInnerValue :: Maybe GetMealPlanWeek200ResponseDaysInnerItemsInnerValue
  
instance Arbitrary GetMealPlanWeek200ResponseDaysInnerItemsInnerValue where
  arbitrary = sized genGetMealPlanWeek200ResponseDaysInnerItemsInnerValue

genGetMealPlanWeek200ResponseDaysInnerItemsInnerValue :: Int -> Gen GetMealPlanWeek200ResponseDaysInnerItemsInnerValue
genGetMealPlanWeek200ResponseDaysInnerItemsInnerValue n =
  GetMealPlanWeek200ResponseDaysInnerItemsInnerValue
    <$> arbitrary -- getMealPlanWeek200ResponseDaysInnerItemsInnerValueServings :: Double
    <*> arbitrary -- getMealPlanWeek200ResponseDaysInnerItemsInnerValueId :: Double
    <*> arbitrary -- getMealPlanWeek200ResponseDaysInnerItemsInnerValueTitle :: Text
    <*> arbitrary -- getMealPlanWeek200ResponseDaysInnerItemsInnerValueImageType :: Text
  
instance Arbitrary GetMealPlanWeek200ResponseDaysInnerNutritionSummary where
  arbitrary = sized genGetMealPlanWeek200ResponseDaysInnerNutritionSummary

genGetMealPlanWeek200ResponseDaysInnerNutritionSummary :: Int -> Gen GetMealPlanWeek200ResponseDaysInnerNutritionSummary
genGetMealPlanWeek200ResponseDaysInnerNutritionSummary n =
  GetMealPlanWeek200ResponseDaysInnerNutritionSummary
    <$> arbitraryReduced n -- getMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrients :: [GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner]
  
instance Arbitrary GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner where
  arbitrary = sized genGetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner

genGetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner :: Int -> Gen GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner
genGetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner n =
  GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner
    <$> arbitrary -- getMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInnerName :: Text
    <*> arbitrary -- getMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInnerAmount :: Double
    <*> arbitrary -- getMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInnerUnit :: Text
    <*> arbitrary -- getMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInnerPercentDailyNeeds :: Double
  
instance Arbitrary GetRandomRecipes200Response where
  arbitrary = sized genGetRandomRecipes200Response

genGetRandomRecipes200Response :: Int -> Gen GetRandomRecipes200Response
genGetRandomRecipes200Response n =
  GetRandomRecipes200Response
    <$> arbitraryReduced n -- getRandomRecipes200ResponseRecipes :: [RecipeInformation]
  
instance Arbitrary GetRecipeEquipmentByID200Response where
  arbitrary = sized genGetRecipeEquipmentByID200Response

genGetRecipeEquipmentByID200Response :: Int -> Gen GetRecipeEquipmentByID200Response
genGetRecipeEquipmentByID200Response n =
  GetRecipeEquipmentByID200Response
    <$> arbitraryReduced n -- getRecipeEquipmentByID200ResponseEquipment :: [GetRecipeEquipmentByID200ResponseEquipmentInner]
  
instance Arbitrary GetRecipeEquipmentByID200ResponseEquipmentInner where
  arbitrary = sized genGetRecipeEquipmentByID200ResponseEquipmentInner

genGetRecipeEquipmentByID200ResponseEquipmentInner :: Int -> Gen GetRecipeEquipmentByID200ResponseEquipmentInner
genGetRecipeEquipmentByID200ResponseEquipmentInner n =
  GetRecipeEquipmentByID200ResponseEquipmentInner
    <$> arbitrary -- getRecipeEquipmentByID200ResponseEquipmentInnerImage :: Text
    <*> arbitrary -- getRecipeEquipmentByID200ResponseEquipmentInnerName :: Text
  
instance Arbitrary GetRecipeIngredientsByID200Response where
  arbitrary = sized genGetRecipeIngredientsByID200Response

genGetRecipeIngredientsByID200Response :: Int -> Gen GetRecipeIngredientsByID200Response
genGetRecipeIngredientsByID200Response n =
  GetRecipeIngredientsByID200Response
    <$> arbitraryReduced n -- getRecipeIngredientsByID200ResponseIngredients :: [GetRecipeIngredientsByID200ResponseIngredientsInner]
  
instance Arbitrary GetRecipeIngredientsByID200ResponseIngredientsInner where
  arbitrary = sized genGetRecipeIngredientsByID200ResponseIngredientsInner

genGetRecipeIngredientsByID200ResponseIngredientsInner :: Int -> Gen GetRecipeIngredientsByID200ResponseIngredientsInner
genGetRecipeIngredientsByID200ResponseIngredientsInner n =
  GetRecipeIngredientsByID200ResponseIngredientsInner
    <$> arbitraryReducedMaybe n -- getRecipeIngredientsByID200ResponseIngredientsInnerAmount :: Maybe GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount
    <*> arbitrary -- getRecipeIngredientsByID200ResponseIngredientsInnerImage :: Text
    <*> arbitrary -- getRecipeIngredientsByID200ResponseIngredientsInnerName :: Text
  
instance Arbitrary GetRecipeNutritionWidgetByID200Response where
  arbitrary = sized genGetRecipeNutritionWidgetByID200Response

genGetRecipeNutritionWidgetByID200Response :: Int -> Gen GetRecipeNutritionWidgetByID200Response
genGetRecipeNutritionWidgetByID200Response n =
  GetRecipeNutritionWidgetByID200Response
    <$> arbitrary -- getRecipeNutritionWidgetByID200ResponseCalories :: Text
    <*> arbitrary -- getRecipeNutritionWidgetByID200ResponseCarbs :: Text
    <*> arbitrary -- getRecipeNutritionWidgetByID200ResponseFat :: Text
    <*> arbitrary -- getRecipeNutritionWidgetByID200ResponseProtein :: Text
    <*> arbitraryReduced n -- getRecipeNutritionWidgetByID200ResponseBad :: [GetRecipeNutritionWidgetByID200ResponseBadInner]
    <*> arbitraryReduced n -- getRecipeNutritionWidgetByID200ResponseGood :: [GetRecipeNutritionWidgetByID200ResponseGoodInner]
  
instance Arbitrary GetRecipeNutritionWidgetByID200ResponseBadInner where
  arbitrary = sized genGetRecipeNutritionWidgetByID200ResponseBadInner

genGetRecipeNutritionWidgetByID200ResponseBadInner :: Int -> Gen GetRecipeNutritionWidgetByID200ResponseBadInner
genGetRecipeNutritionWidgetByID200ResponseBadInner n =
  GetRecipeNutritionWidgetByID200ResponseBadInner
    <$> arbitrary -- getRecipeNutritionWidgetByID200ResponseBadInnerTitle :: Text
    <*> arbitrary -- getRecipeNutritionWidgetByID200ResponseBadInnerAmount :: Text
    <*> arbitrary -- getRecipeNutritionWidgetByID200ResponseBadInnerIndented :: Bool
    <*> arbitrary -- getRecipeNutritionWidgetByID200ResponseBadInnerPercentOfDailyNeeds :: Double
  
instance Arbitrary GetRecipeNutritionWidgetByID200ResponseGoodInner where
  arbitrary = sized genGetRecipeNutritionWidgetByID200ResponseGoodInner

genGetRecipeNutritionWidgetByID200ResponseGoodInner :: Int -> Gen GetRecipeNutritionWidgetByID200ResponseGoodInner
genGetRecipeNutritionWidgetByID200ResponseGoodInner n =
  GetRecipeNutritionWidgetByID200ResponseGoodInner
    <$> arbitrary -- getRecipeNutritionWidgetByID200ResponseGoodInnerAmount :: Text
    <*> arbitrary -- getRecipeNutritionWidgetByID200ResponseGoodInnerIndented :: Bool
    <*> arbitrary -- getRecipeNutritionWidgetByID200ResponseGoodInnerPercentOfDailyNeeds :: Double
    <*> arbitrary -- getRecipeNutritionWidgetByID200ResponseGoodInnerTitle :: Text
  
instance Arbitrary GetRecipePriceBreakdownByID200Response where
  arbitrary = sized genGetRecipePriceBreakdownByID200Response

genGetRecipePriceBreakdownByID200Response :: Int -> Gen GetRecipePriceBreakdownByID200Response
genGetRecipePriceBreakdownByID200Response n =
  GetRecipePriceBreakdownByID200Response
    <$> arbitraryReduced n -- getRecipePriceBreakdownByID200ResponseIngredients :: [GetRecipePriceBreakdownByID200ResponseIngredientsInner]
    <*> arbitrary -- getRecipePriceBreakdownByID200ResponseTotalCost :: Double
    <*> arbitrary -- getRecipePriceBreakdownByID200ResponseTotalCostPerServing :: Double
  
instance Arbitrary GetRecipePriceBreakdownByID200ResponseIngredientsInner where
  arbitrary = sized genGetRecipePriceBreakdownByID200ResponseIngredientsInner

genGetRecipePriceBreakdownByID200ResponseIngredientsInner :: Int -> Gen GetRecipePriceBreakdownByID200ResponseIngredientsInner
genGetRecipePriceBreakdownByID200ResponseIngredientsInner n =
  GetRecipePriceBreakdownByID200ResponseIngredientsInner
    <$> arbitraryReducedMaybe n -- getRecipePriceBreakdownByID200ResponseIngredientsInnerAmount :: Maybe GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount
    <*> arbitrary -- getRecipePriceBreakdownByID200ResponseIngredientsInnerImage :: Text
    <*> arbitrary -- getRecipePriceBreakdownByID200ResponseIngredientsInnerName :: Text
    <*> arbitrary -- getRecipePriceBreakdownByID200ResponseIngredientsInnerPrice :: Double
  
instance Arbitrary GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount where
  arbitrary = sized genGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount

genGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount :: Int -> Gen GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount
genGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount n =
  GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount
    <$> arbitraryReduced n -- getRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric :: GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric
    <*> arbitraryReduced n -- getRecipePriceBreakdownByID200ResponseIngredientsInnerAmountUs :: GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric
  
instance Arbitrary GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric where
  arbitrary = sized genGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric

genGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric :: Int -> Gen GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric
genGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric n =
  GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric
    <$> arbitrary -- getRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetricUnit :: Text
    <*> arbitrary -- getRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetricValue :: Double
  
instance Arbitrary GetShoppingList200Response where
  arbitrary = sized genGetShoppingList200Response

genGetShoppingList200Response :: Int -> Gen GetShoppingList200Response
genGetShoppingList200Response n =
  GetShoppingList200Response
    <$> arbitraryReduced n -- getShoppingList200ResponseAisles :: [GetShoppingList200ResponseAislesInner]
    <*> arbitrary -- getShoppingList200ResponseCost :: Double
    <*> arbitrary -- getShoppingList200ResponseStartDate :: Double
    <*> arbitrary -- getShoppingList200ResponseEndDate :: Double
  
instance Arbitrary GetShoppingList200ResponseAislesInner where
  arbitrary = sized genGetShoppingList200ResponseAislesInner

genGetShoppingList200ResponseAislesInner :: Int -> Gen GetShoppingList200ResponseAislesInner
genGetShoppingList200ResponseAislesInner n =
  GetShoppingList200ResponseAislesInner
    <$> arbitrary -- getShoppingList200ResponseAislesInnerAisle :: Text
    <*> arbitraryReducedMaybe n -- getShoppingList200ResponseAislesInnerItems :: Maybe [GetShoppingList200ResponseAislesInnerItemsInner]
  
instance Arbitrary GetShoppingList200ResponseAislesInnerItemsInner where
  arbitrary = sized genGetShoppingList200ResponseAislesInnerItemsInner

genGetShoppingList200ResponseAislesInnerItemsInner :: Int -> Gen GetShoppingList200ResponseAislesInnerItemsInner
genGetShoppingList200ResponseAislesInnerItemsInner n =
  GetShoppingList200ResponseAislesInnerItemsInner
    <$> arbitrary -- getShoppingList200ResponseAislesInnerItemsInnerId :: Int
    <*> arbitrary -- getShoppingList200ResponseAislesInnerItemsInnerName :: Text
    <*> arbitraryReducedMaybe n -- getShoppingList200ResponseAislesInnerItemsInnerMeasures :: Maybe GetShoppingList200ResponseAislesInnerItemsInnerMeasures
    <*> arbitrary -- getShoppingList200ResponseAislesInnerItemsInnerPantryItem :: Bool
    <*> arbitrary -- getShoppingList200ResponseAislesInnerItemsInnerAisle :: Text
    <*> arbitrary -- getShoppingList200ResponseAislesInnerItemsInnerCost :: Double
    <*> arbitrary -- getShoppingList200ResponseAislesInnerItemsInnerIngredientId :: Int
  
instance Arbitrary GetShoppingList200ResponseAislesInnerItemsInnerMeasures where
  arbitrary = sized genGetShoppingList200ResponseAislesInnerItemsInnerMeasures

genGetShoppingList200ResponseAislesInnerItemsInnerMeasures :: Int -> Gen GetShoppingList200ResponseAislesInnerItemsInnerMeasures
genGetShoppingList200ResponseAislesInnerItemsInnerMeasures n =
  GetShoppingList200ResponseAislesInnerItemsInnerMeasures
    <$> arbitraryReduced n -- getShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal :: GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal
    <*> arbitraryReduced n -- getShoppingList200ResponseAislesInnerItemsInnerMeasuresMetric :: GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal
    <*> arbitraryReduced n -- getShoppingList200ResponseAislesInnerItemsInnerMeasuresUs :: GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal
  
instance Arbitrary GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal where
  arbitrary = sized genGetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal

genGetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal :: Int -> Gen GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal
genGetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal n =
  GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal
    <$> arbitrary -- getShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginalAmount :: Double
    <*> arbitrary -- getShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginalUnit :: Text
  
instance Arbitrary GetSimilarRecipes200ResponseInner where
  arbitrary = sized genGetSimilarRecipes200ResponseInner

genGetSimilarRecipes200ResponseInner :: Int -> Gen GetSimilarRecipes200ResponseInner
genGetSimilarRecipes200ResponseInner n =
  GetSimilarRecipes200ResponseInner
    <$> arbitrary -- getSimilarRecipes200ResponseInnerId :: Int
    <*> arbitrary -- getSimilarRecipes200ResponseInnerTitle :: Text
    <*> arbitrary -- getSimilarRecipes200ResponseInnerImageType :: Text
    <*> arbitrary -- getSimilarRecipes200ResponseInnerReadyInMinutes :: Int
    <*> arbitrary -- getSimilarRecipes200ResponseInnerServings :: Double
    <*> arbitrary -- getSimilarRecipes200ResponseInnerSourceUrl :: Text
  
instance Arbitrary GetWineDescription200Response where
  arbitrary = sized genGetWineDescription200Response

genGetWineDescription200Response :: Int -> Gen GetWineDescription200Response
genGetWineDescription200Response n =
  GetWineDescription200Response
    <$> arbitrary -- getWineDescription200ResponseWineDescription :: Text
  
instance Arbitrary GetWinePairing200Response where
  arbitrary = sized genGetWinePairing200Response

genGetWinePairing200Response :: Int -> Gen GetWinePairing200Response
genGetWinePairing200Response n =
  GetWinePairing200Response
    <$> arbitrary -- getWinePairing200ResponsePairedWines :: [Text]
    <*> arbitrary -- getWinePairing200ResponsePairingText :: Text
    <*> arbitraryReduced n -- getWinePairing200ResponseProductMatches :: [GetWinePairing200ResponseProductMatchesInner]
  
instance Arbitrary GetWinePairing200ResponseProductMatchesInner where
  arbitrary = sized genGetWinePairing200ResponseProductMatchesInner

genGetWinePairing200ResponseProductMatchesInner :: Int -> Gen GetWinePairing200ResponseProductMatchesInner
genGetWinePairing200ResponseProductMatchesInner n =
  GetWinePairing200ResponseProductMatchesInner
    <$> arbitrary -- getWinePairing200ResponseProductMatchesInnerId :: Int
    <*> arbitrary -- getWinePairing200ResponseProductMatchesInnerTitle :: Text
    <*> arbitrary -- getWinePairing200ResponseProductMatchesInnerAverageRating :: Double
    <*> arbitraryReducedMaybe n -- getWinePairing200ResponseProductMatchesInnerDescription :: Maybe Text
    <*> arbitrary -- getWinePairing200ResponseProductMatchesInnerImageUrl :: Text
    <*> arbitrary -- getWinePairing200ResponseProductMatchesInnerLink :: Text
    <*> arbitrary -- getWinePairing200ResponseProductMatchesInnerPrice :: Text
    <*> arbitrary -- getWinePairing200ResponseProductMatchesInnerRatingCount :: Int
    <*> arbitrary -- getWinePairing200ResponseProductMatchesInnerScore :: Double
  
instance Arbitrary GetWineRecommendation200Response where
  arbitrary = sized genGetWineRecommendation200Response

genGetWineRecommendation200Response :: Int -> Gen GetWineRecommendation200Response
genGetWineRecommendation200Response n =
  GetWineRecommendation200Response
    <$> arbitraryReduced n -- getWineRecommendation200ResponseRecommendedWines :: [GetWineRecommendation200ResponseRecommendedWinesInner]
    <*> arbitrary -- getWineRecommendation200ResponseTotalFound :: Int
  
instance Arbitrary GetWineRecommendation200ResponseRecommendedWinesInner where
  arbitrary = sized genGetWineRecommendation200ResponseRecommendedWinesInner

genGetWineRecommendation200ResponseRecommendedWinesInner :: Int -> Gen GetWineRecommendation200ResponseRecommendedWinesInner
genGetWineRecommendation200ResponseRecommendedWinesInner n =
  GetWineRecommendation200ResponseRecommendedWinesInner
    <$> arbitrary -- getWineRecommendation200ResponseRecommendedWinesInnerId :: Int
    <*> arbitrary -- getWineRecommendation200ResponseRecommendedWinesInnerTitle :: Text
    <*> arbitrary -- getWineRecommendation200ResponseRecommendedWinesInnerAverageRating :: Double
    <*> arbitrary -- getWineRecommendation200ResponseRecommendedWinesInnerDescription :: Text
    <*> arbitrary -- getWineRecommendation200ResponseRecommendedWinesInnerImageUrl :: Text
    <*> arbitrary -- getWineRecommendation200ResponseRecommendedWinesInnerLink :: Text
    <*> arbitrary -- getWineRecommendation200ResponseRecommendedWinesInnerPrice :: Text
    <*> arbitrary -- getWineRecommendation200ResponseRecommendedWinesInnerRatingCount :: Int
    <*> arbitrary -- getWineRecommendation200ResponseRecommendedWinesInnerScore :: Double
  
instance Arbitrary GuessNutritionByDishName200Response where
  arbitrary = sized genGuessNutritionByDishName200Response

genGuessNutritionByDishName200Response :: Int -> Gen GuessNutritionByDishName200Response
genGuessNutritionByDishName200Response n =
  GuessNutritionByDishName200Response
    <$> arbitraryReduced n -- guessNutritionByDishName200ResponseCalories :: GuessNutritionByDishName200ResponseCalories
    <*> arbitraryReduced n -- guessNutritionByDishName200ResponseCarbs :: GuessNutritionByDishName200ResponseCalories
    <*> arbitraryReduced n -- guessNutritionByDishName200ResponseFat :: GuessNutritionByDishName200ResponseCalories
    <*> arbitraryReduced n -- guessNutritionByDishName200ResponseProtein :: GuessNutritionByDishName200ResponseCalories
    <*> arbitrary -- guessNutritionByDishName200ResponseRecipesUsed :: Int
  
instance Arbitrary GuessNutritionByDishName200ResponseCalories where
  arbitrary = sized genGuessNutritionByDishName200ResponseCalories

genGuessNutritionByDishName200ResponseCalories :: Int -> Gen GuessNutritionByDishName200ResponseCalories
genGuessNutritionByDishName200ResponseCalories n =
  GuessNutritionByDishName200ResponseCalories
    <$> arbitraryReduced n -- guessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent :: GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent
    <*> arbitrary -- guessNutritionByDishName200ResponseCaloriesStandardDeviation :: Double
    <*> arbitrary -- guessNutritionByDishName200ResponseCaloriesUnit :: Text
    <*> arbitrary -- guessNutritionByDishName200ResponseCaloriesValue :: Double
  
instance Arbitrary GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent where
  arbitrary = sized genGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent

genGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent :: Int -> Gen GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent
genGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent n =
  GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent
    <$> arbitrary -- guessNutritionByDishName200ResponseCaloriesConfidenceRange95PercentMax :: Double
    <*> arbitrary -- guessNutritionByDishName200ResponseCaloriesConfidenceRange95PercentMin :: Double
  
instance Arbitrary ImageAnalysisByURL200Response where
  arbitrary = sized genImageAnalysisByURL200Response

genImageAnalysisByURL200Response :: Int -> Gen ImageAnalysisByURL200Response
genImageAnalysisByURL200Response n =
  ImageAnalysisByURL200Response
    <$> arbitraryReduced n -- imageAnalysisByURL200ResponseNutrition :: ImageAnalysisByURL200ResponseNutrition
    <*> arbitraryReduced n -- imageAnalysisByURL200ResponseCategory :: ImageAnalysisByURL200ResponseCategory
    <*> arbitraryReduced n -- imageAnalysisByURL200ResponseRecipes :: [ImageAnalysisByURL200ResponseRecipesInner]
  
instance Arbitrary ImageAnalysisByURL200ResponseCategory where
  arbitrary = sized genImageAnalysisByURL200ResponseCategory

genImageAnalysisByURL200ResponseCategory :: Int -> Gen ImageAnalysisByURL200ResponseCategory
genImageAnalysisByURL200ResponseCategory n =
  ImageAnalysisByURL200ResponseCategory
    <$> arbitrary -- imageAnalysisByURL200ResponseCategoryName :: Text
    <*> arbitrary -- imageAnalysisByURL200ResponseCategoryProbability :: Double
  
instance Arbitrary ImageAnalysisByURL200ResponseNutrition where
  arbitrary = sized genImageAnalysisByURL200ResponseNutrition

genImageAnalysisByURL200ResponseNutrition :: Int -> Gen ImageAnalysisByURL200ResponseNutrition
genImageAnalysisByURL200ResponseNutrition n =
  ImageAnalysisByURL200ResponseNutrition
    <$> arbitrary -- imageAnalysisByURL200ResponseNutritionRecipesUsed :: Int
    <*> arbitraryReduced n -- imageAnalysisByURL200ResponseNutritionCalories :: ImageAnalysisByURL200ResponseNutritionCalories
    <*> arbitraryReduced n -- imageAnalysisByURL200ResponseNutritionFat :: ImageAnalysisByURL200ResponseNutritionCalories
    <*> arbitraryReduced n -- imageAnalysisByURL200ResponseNutritionProtein :: ImageAnalysisByURL200ResponseNutritionCalories
    <*> arbitraryReduced n -- imageAnalysisByURL200ResponseNutritionCarbs :: ImageAnalysisByURL200ResponseNutritionCalories
  
instance Arbitrary ImageAnalysisByURL200ResponseNutritionCalories where
  arbitrary = sized genImageAnalysisByURL200ResponseNutritionCalories

genImageAnalysisByURL200ResponseNutritionCalories :: Int -> Gen ImageAnalysisByURL200ResponseNutritionCalories
genImageAnalysisByURL200ResponseNutritionCalories n =
  ImageAnalysisByURL200ResponseNutritionCalories
    <$> arbitrary -- imageAnalysisByURL200ResponseNutritionCaloriesValue :: Double
    <*> arbitrary -- imageAnalysisByURL200ResponseNutritionCaloriesUnit :: Text
    <*> arbitraryReduced n -- imageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent :: ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent
    <*> arbitrary -- imageAnalysisByURL200ResponseNutritionCaloriesStandardDeviation :: Double
  
instance Arbitrary ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent where
  arbitrary = sized genImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent

genImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent :: Int -> Gen ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent
genImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent n =
  ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent
    <$> arbitrary -- imageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95PercentMin :: Double
    <*> arbitrary -- imageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95PercentMax :: Double
  
instance Arbitrary ImageAnalysisByURL200ResponseRecipesInner where
  arbitrary = sized genImageAnalysisByURL200ResponseRecipesInner

genImageAnalysisByURL200ResponseRecipesInner :: Int -> Gen ImageAnalysisByURL200ResponseRecipesInner
genImageAnalysisByURL200ResponseRecipesInner n =
  ImageAnalysisByURL200ResponseRecipesInner
    <$> arbitrary -- imageAnalysisByURL200ResponseRecipesInnerId :: Int
    <*> arbitrary -- imageAnalysisByURL200ResponseRecipesInnerTitle :: Text
    <*> arbitrary -- imageAnalysisByURL200ResponseRecipesInnerImageType :: Text
    <*> arbitrary -- imageAnalysisByURL200ResponseRecipesInnerUrl :: Text
  
instance Arbitrary ImageClassificationByURL200Response where
  arbitrary = sized genImageClassificationByURL200Response

genImageClassificationByURL200Response :: Int -> Gen ImageClassificationByURL200Response
genImageClassificationByURL200Response n =
  ImageClassificationByURL200Response
    <$> arbitrary -- imageClassificationByURL200ResponseCategory :: Text
    <*> arbitrary -- imageClassificationByURL200ResponseProbability :: Double
  
instance Arbitrary IngredientBasics where
  arbitrary = sized genIngredientBasics

genIngredientBasics :: Int -> Gen IngredientBasics
genIngredientBasics n =
  IngredientBasics
    <$> arbitrary -- ingredientBasicsDescription :: Text
    <*> arbitrary -- ingredientBasicsName :: Text
    <*> arbitrary -- ingredientBasicsSafetyLevel :: Text
  
instance Arbitrary IngredientInformation where
  arbitrary = sized genIngredientInformation

genIngredientInformation :: Int -> Gen IngredientInformation
genIngredientInformation n =
  IngredientInformation
    <$> arbitrary -- ingredientInformationId :: Int
    <*> arbitrary -- ingredientInformationOriginal :: Text
    <*> arbitrary -- ingredientInformationOriginalName :: Text
    <*> arbitrary -- ingredientInformationName :: Text
    <*> arbitrary -- ingredientInformationAmount :: Double
    <*> arbitrary -- ingredientInformationUnit :: Text
    <*> arbitrary -- ingredientInformationUnitShort :: Text
    <*> arbitrary -- ingredientInformationUnitLong :: Text
    <*> arbitrary -- ingredientInformationPossibleUnits :: [Text]
    <*> arbitraryReduced n -- ingredientInformationEstimatedCost :: IngredientInformationEstimatedCost
    <*> arbitrary -- ingredientInformationConsistency :: Text
    <*> arbitraryReducedMaybe n -- ingredientInformationShoppingListUnits :: Maybe [Text]
    <*> arbitrary -- ingredientInformationAisle :: Text
    <*> arbitrary -- ingredientInformationImage :: Text
    <*> arbitrary -- ingredientInformationMeta :: [Text]
    <*> arbitraryReducedMaybe n -- ingredientInformationNutrition :: Maybe IngredientInformationNutrition
    <*> arbitraryReducedMaybe n -- ingredientInformationCategoryPath :: Maybe [Text]
  
instance Arbitrary IngredientInformationEstimatedCost where
  arbitrary = sized genIngredientInformationEstimatedCost

genIngredientInformationEstimatedCost :: Int -> Gen IngredientInformationEstimatedCost
genIngredientInformationEstimatedCost n =
  IngredientInformationEstimatedCost
    <$> arbitrary -- ingredientInformationEstimatedCostValue :: Double
    <*> arbitrary -- ingredientInformationEstimatedCostUnit :: Text
  
instance Arbitrary IngredientInformationNutrition where
  arbitrary = sized genIngredientInformationNutrition

genIngredientInformationNutrition :: Int -> Gen IngredientInformationNutrition
genIngredientInformationNutrition n =
  IngredientInformationNutrition
    <$> arbitraryReduced n -- ingredientInformationNutritionNutrients :: [SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner]
    <*> arbitraryReduced n -- ingredientInformationNutritionProperties :: [IngredientInformationNutritionPropertiesInner]
    <*> arbitraryReduced n -- ingredientInformationNutritionCaloricBreakdown :: SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown
    <*> arbitraryReduced n -- ingredientInformationNutritionWeightPerServing :: GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal
  
instance Arbitrary IngredientInformationNutritionPropertiesInner where
  arbitrary = sized genIngredientInformationNutritionPropertiesInner

genIngredientInformationNutritionPropertiesInner :: Int -> Gen IngredientInformationNutritionPropertiesInner
genIngredientInformationNutritionPropertiesInner n =
  IngredientInformationNutritionPropertiesInner
    <$> arbitrary -- ingredientInformationNutritionPropertiesInnerName :: Text
    <*> arbitrary -- ingredientInformationNutritionPropertiesInnerAmount :: Double
    <*> arbitrary -- ingredientInformationNutritionPropertiesInnerUnit :: Text
  
instance Arbitrary IngredientSearch200Response where
  arbitrary = sized genIngredientSearch200Response

genIngredientSearch200Response :: Int -> Gen IngredientSearch200Response
genIngredientSearch200Response n =
  IngredientSearch200Response
    <$> arbitraryReduced n -- ingredientSearch200ResponseResults :: [IngredientSearch200ResponseResultsInner]
    <*> arbitrary -- ingredientSearch200ResponseOffset :: Int
    <*> arbitrary -- ingredientSearch200ResponseNumber :: Int
    <*> arbitrary -- ingredientSearch200ResponseTotalResults :: Int
  
instance Arbitrary IngredientSearch200ResponseResultsInner where
  arbitrary = sized genIngredientSearch200ResponseResultsInner

genIngredientSearch200ResponseResultsInner :: Int -> Gen IngredientSearch200ResponseResultsInner
genIngredientSearch200ResponseResultsInner n =
  IngredientSearch200ResponseResultsInner
    <$> arbitrary -- ingredientSearch200ResponseResultsInnerId :: Int
    <*> arbitrary -- ingredientSearch200ResponseResultsInnerName :: Text
    <*> arbitrary -- ingredientSearch200ResponseResultsInnerImage :: Text
  
instance Arbitrary MapIngredientsToGroceryProducts200ResponseInner where
  arbitrary = sized genMapIngredientsToGroceryProducts200ResponseInner

genMapIngredientsToGroceryProducts200ResponseInner :: Int -> Gen MapIngredientsToGroceryProducts200ResponseInner
genMapIngredientsToGroceryProducts200ResponseInner n =
  MapIngredientsToGroceryProducts200ResponseInner
    <$> arbitrary -- mapIngredientsToGroceryProducts200ResponseInnerOriginal :: Text
    <*> arbitrary -- mapIngredientsToGroceryProducts200ResponseInnerOriginalName :: Text
    <*> arbitrary -- mapIngredientsToGroceryProducts200ResponseInnerIngredientImage :: Text
    <*> arbitrary -- mapIngredientsToGroceryProducts200ResponseInnerMeta :: [Text]
    <*> arbitraryReduced n -- mapIngredientsToGroceryProducts200ResponseInnerProducts :: [MapIngredientsToGroceryProducts200ResponseInnerProductsInner]
  
instance Arbitrary MapIngredientsToGroceryProducts200ResponseInnerProductsInner where
  arbitrary = sized genMapIngredientsToGroceryProducts200ResponseInnerProductsInner

genMapIngredientsToGroceryProducts200ResponseInnerProductsInner :: Int -> Gen MapIngredientsToGroceryProducts200ResponseInnerProductsInner
genMapIngredientsToGroceryProducts200ResponseInnerProductsInner n =
  MapIngredientsToGroceryProducts200ResponseInnerProductsInner
    <$> arbitrary -- mapIngredientsToGroceryProducts200ResponseInnerProductsInnerId :: Int
    <*> arbitrary -- mapIngredientsToGroceryProducts200ResponseInnerProductsInnerTitle :: Text
    <*> arbitrary -- mapIngredientsToGroceryProducts200ResponseInnerProductsInnerUpc :: Text
  
instance Arbitrary MapIngredientsToGroceryProductsRequest where
  arbitrary = sized genMapIngredientsToGroceryProductsRequest

genMapIngredientsToGroceryProductsRequest :: Int -> Gen MapIngredientsToGroceryProductsRequest
genMapIngredientsToGroceryProductsRequest n =
  MapIngredientsToGroceryProductsRequest
    <$> arbitrary -- mapIngredientsToGroceryProductsRequestIngredients :: [Text]
    <*> arbitrary -- mapIngredientsToGroceryProductsRequestServings :: Double
  
instance Arbitrary MenuItem where
  arbitrary = sized genMenuItem

genMenuItem :: Int -> Gen MenuItem
genMenuItem n =
  MenuItem
    <$> arbitrary -- menuItemId :: Int
    <*> arbitrary -- menuItemTitle :: Text
    <*> arbitrary -- menuItemRestaurantChain :: Text
    <*> arbitraryReducedMaybe n -- menuItemNutrition :: Maybe SearchGroceryProductsByUPC200ResponseNutrition
    <*> arbitraryReducedMaybe n -- menuItemBadges :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- menuItemBreadcrumbs :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- menuItemGeneratedText :: Maybe Text
    <*> arbitraryReducedMaybe n -- menuItemImageType :: Maybe Text
    <*> arbitraryReducedMaybe n -- menuItemLikes :: Maybe Int
    <*> arbitraryReducedMaybe n -- menuItemServings :: Maybe MenuItemServings
    <*> arbitrary -- menuItemPrice :: Double
    <*> arbitrary -- menuItemSpoonacularScore :: Double
  
instance Arbitrary MenuItemServings where
  arbitrary = sized genMenuItemServings

genMenuItemServings :: Int -> Gen MenuItemServings
genMenuItemServings n =
  MenuItemServings
    <$> arbitrary -- menuItemServingsNumber :: Double
    <*> arbitrary -- menuItemServingsSize :: Double
    <*> arbitrary -- menuItemServingsUnit :: Text
  
instance Arbitrary ProductInformation where
  arbitrary = sized genProductInformation

genProductInformation :: Int -> Gen ProductInformation
genProductInformation n =
  ProductInformation
    <$> arbitrary -- productInformationId :: Int
    <*> arbitrary -- productInformationTitle :: Text
    <*> arbitraryReducedMaybe n -- productInformationUpc :: Maybe Text
    <*> arbitraryReducedMaybe n -- productInformationUsdaCode :: Maybe Text
    <*> arbitrary -- productInformationBreadcrumbs :: [Text]
    <*> arbitrary -- productInformationImageType :: Text
    <*> arbitrary -- productInformationBadges :: [Text]
    <*> arbitrary -- productInformationImportantBadges :: [Text]
    <*> arbitrary -- productInformationIngredientCount :: Int
    <*> arbitraryReducedMaybe n -- productInformationGeneratedText :: Maybe Text
    <*> arbitrary -- productInformationIngredientList :: Text
    <*> arbitraryReduced n -- productInformationIngredients :: [IngredientBasics]
    <*> arbitrary -- productInformationLikes :: Double
    <*> arbitrary -- productInformationAisle :: Text
    <*> arbitraryReducedMaybe n -- productInformationCredits :: Maybe ProductInformationCredits
    <*> arbitraryReduced n -- productInformationNutrition :: SearchGroceryProductsByUPC200ResponseNutrition
    <*> arbitrary -- productInformationPrice :: Double
    <*> arbitraryReduced n -- productInformationServings :: SearchGroceryProductsByUPC200ResponseServings
    <*> arbitrary -- productInformationSpoonacularScore :: Double
  
instance Arbitrary ProductInformationCredits where
  arbitrary = sized genProductInformationCredits

genProductInformationCredits :: Int -> Gen ProductInformationCredits
genProductInformationCredits n =
  ProductInformationCredits
    <$> arbitraryReducedMaybe n -- productInformationCreditsText :: Maybe Text
    <*> arbitraryReducedMaybe n -- productInformationCreditsLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- productInformationCreditsImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- productInformationCreditsImageLink :: Maybe Text
  
instance Arbitrary QuickAnswer200Response where
  arbitrary = sized genQuickAnswer200Response

genQuickAnswer200Response :: Int -> Gen QuickAnswer200Response
genQuickAnswer200Response n =
  QuickAnswer200Response
    <$> arbitrary -- quickAnswer200ResponseAnswer :: Text
    <*> arbitrary -- quickAnswer200ResponseImage :: Text
  
instance Arbitrary RecipeInformation where
  arbitrary = sized genRecipeInformation

genRecipeInformation :: Int -> Gen RecipeInformation
genRecipeInformation n =
  RecipeInformation
    <$> arbitrary -- recipeInformationId :: Int
    <*> arbitrary -- recipeInformationTitle :: Text
    <*> arbitrary -- recipeInformationImage :: Text
    <*> arbitraryReducedMaybe n -- recipeInformationImageType :: Maybe Text
    <*> arbitrary -- recipeInformationServings :: Double
    <*> arbitrary -- recipeInformationReadyInMinutes :: Int
    <*> arbitraryReducedMaybe n -- recipeInformationPreparationMinutes :: Maybe Int
    <*> arbitraryReducedMaybe n -- recipeInformationCookingMinutes :: Maybe Int
    <*> arbitraryReducedMaybe n -- recipeInformationLicense :: Maybe Text
    <*> arbitrary -- recipeInformationSourceName :: Text
    <*> arbitrary -- recipeInformationSourceUrl :: Text
    <*> arbitrary -- recipeInformationSpoonacularSourceUrl :: Text
    <*> arbitrary -- recipeInformationAggregateLikes :: Int
    <*> arbitrary -- recipeInformationHealthScore :: Double
    <*> arbitrary -- recipeInformationSpoonacularScore :: Double
    <*> arbitrary -- recipeInformationPricePerServing :: Double
    <*> arbitraryReduced n -- recipeInformationAnalyzedInstructions :: [A.Value]
    <*> arbitrary -- recipeInformationCheap :: Bool
    <*> arbitrary -- recipeInformationCreditsText :: Text
    <*> arbitrary -- recipeInformationCuisines :: [Text]
    <*> arbitrary -- recipeInformationDairyFree :: Bool
    <*> arbitrary -- recipeInformationDiets :: [Text]
    <*> arbitrary -- recipeInformationGaps :: Text
    <*> arbitrary -- recipeInformationGlutenFree :: Bool
    <*> arbitrary -- recipeInformationInstructions :: Text
    <*> arbitrary -- recipeInformationLowFodmap :: Bool
    <*> arbitrary -- recipeInformationOccasions :: [Text]
    <*> arbitrary -- recipeInformationSustainable :: Bool
    <*> arbitrary -- recipeInformationVegan :: Bool
    <*> arbitrary -- recipeInformationVegetarian :: Bool
    <*> arbitrary -- recipeInformationVeryHealthy :: Bool
    <*> arbitrary -- recipeInformationVeryPopular :: Bool
    <*> arbitrary -- recipeInformationWeightWatcherSmartPoints :: Double
    <*> arbitrary -- recipeInformationDishTypes :: [Text]
    <*> arbitraryReduced n -- recipeInformationExtendedIngredients :: [RecipeInformationExtendedIngredientsInner]
    <*> arbitrary -- recipeInformationSummary :: Text
    <*> arbitraryReducedMaybe n -- recipeInformationWinePairing :: Maybe RecipeInformationWinePairing
    <*> arbitraryReducedMaybe n -- recipeInformationTaste :: Maybe TasteInformation
  
instance Arbitrary RecipeInformationExtendedIngredientsInner where
  arbitrary = sized genRecipeInformationExtendedIngredientsInner

genRecipeInformationExtendedIngredientsInner :: Int -> Gen RecipeInformationExtendedIngredientsInner
genRecipeInformationExtendedIngredientsInner n =
  RecipeInformationExtendedIngredientsInner
    <$> arbitrary -- recipeInformationExtendedIngredientsInnerAisle :: Text
    <*> arbitrary -- recipeInformationExtendedIngredientsInnerAmount :: Double
    <*> arbitrary -- recipeInformationExtendedIngredientsInnerConsistency :: Text
    <*> arbitrary -- recipeInformationExtendedIngredientsInnerId :: Int
    <*> arbitrary -- recipeInformationExtendedIngredientsInnerImage :: Text
    <*> arbitraryReducedMaybe n -- recipeInformationExtendedIngredientsInnerMeasures :: Maybe RecipeInformationExtendedIngredientsInnerMeasures
    <*> arbitraryReducedMaybe n -- recipeInformationExtendedIngredientsInnerMeta :: Maybe [Text]
    <*> arbitrary -- recipeInformationExtendedIngredientsInnerName :: Text
    <*> arbitrary -- recipeInformationExtendedIngredientsInnerOriginal :: Text
    <*> arbitrary -- recipeInformationExtendedIngredientsInnerOriginalName :: Text
    <*> arbitrary -- recipeInformationExtendedIngredientsInnerUnit :: Text
  
instance Arbitrary RecipeInformationExtendedIngredientsInnerMeasures where
  arbitrary = sized genRecipeInformationExtendedIngredientsInnerMeasures

genRecipeInformationExtendedIngredientsInnerMeasures :: Int -> Gen RecipeInformationExtendedIngredientsInnerMeasures
genRecipeInformationExtendedIngredientsInnerMeasures n =
  RecipeInformationExtendedIngredientsInnerMeasures
    <$> arbitraryReduced n -- recipeInformationExtendedIngredientsInnerMeasuresMetric :: RecipeInformationExtendedIngredientsInnerMeasuresMetric
    <*> arbitraryReduced n -- recipeInformationExtendedIngredientsInnerMeasuresUs :: RecipeInformationExtendedIngredientsInnerMeasuresMetric
  
instance Arbitrary RecipeInformationExtendedIngredientsInnerMeasuresMetric where
  arbitrary = sized genRecipeInformationExtendedIngredientsInnerMeasuresMetric

genRecipeInformationExtendedIngredientsInnerMeasuresMetric :: Int -> Gen RecipeInformationExtendedIngredientsInnerMeasuresMetric
genRecipeInformationExtendedIngredientsInnerMeasuresMetric n =
  RecipeInformationExtendedIngredientsInnerMeasuresMetric
    <$> arbitrary -- recipeInformationExtendedIngredientsInnerMeasuresMetricAmount :: Double
    <*> arbitrary -- recipeInformationExtendedIngredientsInnerMeasuresMetricUnitLong :: Text
    <*> arbitrary -- recipeInformationExtendedIngredientsInnerMeasuresMetricUnitShort :: Text
  
instance Arbitrary RecipeInformationWinePairing where
  arbitrary = sized genRecipeInformationWinePairing

genRecipeInformationWinePairing :: Int -> Gen RecipeInformationWinePairing
genRecipeInformationWinePairing n =
  RecipeInformationWinePairing
    <$> arbitraryReducedMaybe n -- recipeInformationWinePairingPairedWines :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- recipeInformationWinePairingPairingText :: Maybe Text
    <*> arbitraryReducedMaybe n -- recipeInformationWinePairingProductMatches :: Maybe [RecipeInformationWinePairingProductMatchesInner]
  
instance Arbitrary RecipeInformationWinePairingProductMatchesInner where
  arbitrary = sized genRecipeInformationWinePairingProductMatchesInner

genRecipeInformationWinePairingProductMatchesInner :: Int -> Gen RecipeInformationWinePairingProductMatchesInner
genRecipeInformationWinePairingProductMatchesInner n =
  RecipeInformationWinePairingProductMatchesInner
    <$> arbitrary -- recipeInformationWinePairingProductMatchesInnerId :: Int
    <*> arbitrary -- recipeInformationWinePairingProductMatchesInnerTitle :: Text
    <*> arbitrary -- recipeInformationWinePairingProductMatchesInnerDescription :: Text
    <*> arbitrary -- recipeInformationWinePairingProductMatchesInnerPrice :: Text
    <*> arbitrary -- recipeInformationWinePairingProductMatchesInnerImageUrl :: Text
    <*> arbitrary -- recipeInformationWinePairingProductMatchesInnerAverageRating :: Double
    <*> arbitrary -- recipeInformationWinePairingProductMatchesInnerRatingCount :: Int
    <*> arbitrary -- recipeInformationWinePairingProductMatchesInnerScore :: Double
    <*> arbitrary -- recipeInformationWinePairingProductMatchesInnerLink :: Text
  
instance Arbitrary SearchAllFood200Response where
  arbitrary = sized genSearchAllFood200Response

genSearchAllFood200Response :: Int -> Gen SearchAllFood200Response
genSearchAllFood200Response n =
  SearchAllFood200Response
    <$> arbitrary -- searchAllFood200ResponseQuery :: Text
    <*> arbitrary -- searchAllFood200ResponseTotalResults :: Int
    <*> arbitrary -- searchAllFood200ResponseLimit :: Int
    <*> arbitrary -- searchAllFood200ResponseOffset :: Int
    <*> arbitraryReduced n -- searchAllFood200ResponseSearchResults :: [SearchAllFood200ResponseSearchResultsInner]
  
instance Arbitrary SearchAllFood200ResponseSearchResultsInner where
  arbitrary = sized genSearchAllFood200ResponseSearchResultsInner

genSearchAllFood200ResponseSearchResultsInner :: Int -> Gen SearchAllFood200ResponseSearchResultsInner
genSearchAllFood200ResponseSearchResultsInner n =
  SearchAllFood200ResponseSearchResultsInner
    <$> arbitrary -- searchAllFood200ResponseSearchResultsInnerName :: Text
    <*> arbitrary -- searchAllFood200ResponseSearchResultsInnerTotalResults :: Int
    <*> arbitraryReducedMaybe n -- searchAllFood200ResponseSearchResultsInnerResults :: Maybe [SearchResult]
  
instance Arbitrary SearchCustomFoods200Response where
  arbitrary = sized genSearchCustomFoods200Response

genSearchCustomFoods200Response :: Int -> Gen SearchCustomFoods200Response
genSearchCustomFoods200Response n =
  SearchCustomFoods200Response
    <$> arbitraryReduced n -- searchCustomFoods200ResponseCustomFoods :: [SearchCustomFoods200ResponseCustomFoodsInner]
    <*> arbitrary -- searchCustomFoods200ResponseType :: Text
    <*> arbitrary -- searchCustomFoods200ResponseOffset :: Int
    <*> arbitrary -- searchCustomFoods200ResponseNumber :: Int
  
instance Arbitrary SearchCustomFoods200ResponseCustomFoodsInner where
  arbitrary = sized genSearchCustomFoods200ResponseCustomFoodsInner

genSearchCustomFoods200ResponseCustomFoodsInner :: Int -> Gen SearchCustomFoods200ResponseCustomFoodsInner
genSearchCustomFoods200ResponseCustomFoodsInner n =
  SearchCustomFoods200ResponseCustomFoodsInner
    <$> arbitrary -- searchCustomFoods200ResponseCustomFoodsInnerId :: Int
    <*> arbitrary -- searchCustomFoods200ResponseCustomFoodsInnerTitle :: Text
    <*> arbitrary -- searchCustomFoods200ResponseCustomFoodsInnerServings :: Double
    <*> arbitrary -- searchCustomFoods200ResponseCustomFoodsInnerImageUrl :: Text
    <*> arbitrary -- searchCustomFoods200ResponseCustomFoodsInnerPrice :: Double
  
instance Arbitrary SearchFoodVideos200Response where
  arbitrary = sized genSearchFoodVideos200Response

genSearchFoodVideos200Response :: Int -> Gen SearchFoodVideos200Response
genSearchFoodVideos200Response n =
  SearchFoodVideos200Response
    <$> arbitraryReduced n -- searchFoodVideos200ResponseVideos :: [SearchFoodVideos200ResponseVideosInner]
    <*> arbitrary -- searchFoodVideos200ResponseTotalResults :: Int
  
instance Arbitrary SearchFoodVideos200ResponseVideosInner where
  arbitrary = sized genSearchFoodVideos200ResponseVideosInner

genSearchFoodVideos200ResponseVideosInner :: Int -> Gen SearchFoodVideos200ResponseVideosInner
genSearchFoodVideos200ResponseVideosInner n =
  SearchFoodVideos200ResponseVideosInner
    <$> arbitrary -- searchFoodVideos200ResponseVideosInnerTitle :: Text
    <*> arbitrary -- searchFoodVideos200ResponseVideosInnerLength :: Int
    <*> arbitrary -- searchFoodVideos200ResponseVideosInnerRating :: Double
    <*> arbitrary -- searchFoodVideos200ResponseVideosInnerShortTitle :: Text
    <*> arbitrary -- searchFoodVideos200ResponseVideosInnerThumbnail :: Text
    <*> arbitrary -- searchFoodVideos200ResponseVideosInnerViews :: Int
    <*> arbitrary -- searchFoodVideos200ResponseVideosInnerYouTubeId :: Text
  
instance Arbitrary SearchGroceryProducts200Response where
  arbitrary = sized genSearchGroceryProducts200Response

genSearchGroceryProducts200Response :: Int -> Gen SearchGroceryProducts200Response
genSearchGroceryProducts200Response n =
  SearchGroceryProducts200Response
    <$> arbitraryReduced n -- searchGroceryProducts200ResponseProducts :: [AutocompleteRecipeSearch200ResponseInner]
    <*> arbitrary -- searchGroceryProducts200ResponseTotalProducts :: Int
    <*> arbitrary -- searchGroceryProducts200ResponseType :: Text
    <*> arbitrary -- searchGroceryProducts200ResponseOffset :: Int
    <*> arbitrary -- searchGroceryProducts200ResponseNumber :: Int
  
instance Arbitrary SearchGroceryProductsByUPC200Response where
  arbitrary = sized genSearchGroceryProductsByUPC200Response

genSearchGroceryProductsByUPC200Response :: Int -> Gen SearchGroceryProductsByUPC200Response
genSearchGroceryProductsByUPC200Response n =
  SearchGroceryProductsByUPC200Response
    <$> arbitrary -- searchGroceryProductsByUPC200ResponseId :: Int
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseTitle :: Text
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseBadges :: [Text]
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseImportantBadges :: [Text]
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseBreadcrumbs :: [Text]
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseGeneratedText :: Text
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseImageType :: Text
    <*> arbitraryReducedMaybe n -- searchGroceryProductsByUPC200ResponseIngredientCount :: Maybe Int
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseIngredientList :: Text
    <*> arbitraryReduced n -- searchGroceryProductsByUPC200ResponseIngredients :: [IngredientBasics]
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseLikes :: Double
    <*> arbitraryReduced n -- searchGroceryProductsByUPC200ResponseNutrition :: SearchGroceryProductsByUPC200ResponseNutrition
    <*> arbitrary -- searchGroceryProductsByUPC200ResponsePrice :: Double
    <*> arbitraryReduced n -- searchGroceryProductsByUPC200ResponseServings :: SearchGroceryProductsByUPC200ResponseServings
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseSpoonacularScore :: Double
  
instance Arbitrary SearchGroceryProductsByUPC200ResponseNutrition where
  arbitrary = sized genSearchGroceryProductsByUPC200ResponseNutrition

genSearchGroceryProductsByUPC200ResponseNutrition :: Int -> Gen SearchGroceryProductsByUPC200ResponseNutrition
genSearchGroceryProductsByUPC200ResponseNutrition n =
  SearchGroceryProductsByUPC200ResponseNutrition
    <$> arbitraryReduced n -- searchGroceryProductsByUPC200ResponseNutritionNutrients :: [SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner]
    <*> arbitraryReduced n -- searchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown :: SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown
  
instance Arbitrary SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown where
  arbitrary = sized genSearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown

genSearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown :: Int -> Gen SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown
genSearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown n =
  SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown
    <$> arbitrary -- searchGroceryProductsByUPC200ResponseNutritionCaloricBreakdownPercentProtein :: Double
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseNutritionCaloricBreakdownPercentFat :: Double
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseNutritionCaloricBreakdownPercentCarbs :: Double
  
instance Arbitrary SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner where
  arbitrary = sized genSearchGroceryProductsByUPC200ResponseNutritionNutrientsInner

genSearchGroceryProductsByUPC200ResponseNutritionNutrientsInner :: Int -> Gen SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner
genSearchGroceryProductsByUPC200ResponseNutritionNutrientsInner n =
  SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner
    <$> arbitrary -- searchGroceryProductsByUPC200ResponseNutritionNutrientsInnerName :: Text
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseNutritionNutrientsInnerAmount :: Double
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseNutritionNutrientsInnerUnit :: Text
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseNutritionNutrientsInnerPercentOfDailyNeeds :: Double
  
instance Arbitrary SearchGroceryProductsByUPC200ResponseServings where
  arbitrary = sized genSearchGroceryProductsByUPC200ResponseServings

genSearchGroceryProductsByUPC200ResponseServings :: Int -> Gen SearchGroceryProductsByUPC200ResponseServings
genSearchGroceryProductsByUPC200ResponseServings n =
  SearchGroceryProductsByUPC200ResponseServings
    <$> arbitrary -- searchGroceryProductsByUPC200ResponseServingsNumber :: Double
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseServingsSize :: Double
    <*> arbitrary -- searchGroceryProductsByUPC200ResponseServingsUnit :: Text
  
instance Arbitrary SearchMenuItems200Response where
  arbitrary = sized genSearchMenuItems200Response

genSearchMenuItems200Response :: Int -> Gen SearchMenuItems200Response
genSearchMenuItems200Response n =
  SearchMenuItems200Response
    <$> arbitraryReduced n -- searchMenuItems200ResponseMenuItems :: [MenuItem]
    <*> arbitrary -- searchMenuItems200ResponseTotalMenuItems :: Int
    <*> arbitrary -- searchMenuItems200ResponseType :: Text
    <*> arbitrary -- searchMenuItems200ResponseOffset :: Int
    <*> arbitrary -- searchMenuItems200ResponseNumber :: Int
  
instance Arbitrary SearchRecipes200Response where
  arbitrary = sized genSearchRecipes200Response

genSearchRecipes200Response :: Int -> Gen SearchRecipes200Response
genSearchRecipes200Response n =
  SearchRecipes200Response
    <$> arbitrary -- searchRecipes200ResponseOffset :: Int
    <*> arbitrary -- searchRecipes200ResponseNumber :: Int
    <*> arbitraryReduced n -- searchRecipes200ResponseResults :: [SearchRecipes200ResponseResultsInner]
    <*> arbitrary -- searchRecipes200ResponseTotalResults :: Int
  
instance Arbitrary SearchRecipes200ResponseResultsInner where
  arbitrary = sized genSearchRecipes200ResponseResultsInner

genSearchRecipes200ResponseResultsInner :: Int -> Gen SearchRecipes200ResponseResultsInner
genSearchRecipes200ResponseResultsInner n =
  SearchRecipes200ResponseResultsInner
    <$> arbitrary -- searchRecipes200ResponseResultsInnerId :: Int
    <*> arbitrary -- searchRecipes200ResponseResultsInnerTitle :: Text
    <*> arbitrary -- searchRecipes200ResponseResultsInnerImage :: Text
    <*> arbitrary -- searchRecipes200ResponseResultsInnerImageType :: Text
  
instance Arbitrary SearchRecipesByIngredients200ResponseInner where
  arbitrary = sized genSearchRecipesByIngredients200ResponseInner

genSearchRecipesByIngredients200ResponseInner :: Int -> Gen SearchRecipesByIngredients200ResponseInner
genSearchRecipesByIngredients200ResponseInner n =
  SearchRecipesByIngredients200ResponseInner
    <$> arbitrary -- searchRecipesByIngredients200ResponseInnerId :: Int
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerImage :: Text
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerImageType :: Text
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerLikes :: Int
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerMissedIngredientCount :: Int
    <*> arbitraryReduced n -- searchRecipesByIngredients200ResponseInnerMissedIngredients :: [SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner]
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerTitle :: Text
    <*> arbitraryReduced n -- searchRecipesByIngredients200ResponseInnerUnusedIngredients :: [A.Value]
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerUsedIngredientCount :: Double
    <*> arbitraryReduced n -- searchRecipesByIngredients200ResponseInnerUsedIngredients :: [SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner]
  
instance Arbitrary SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner where
  arbitrary = sized genSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner

genSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner :: Int -> Gen SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner
genSearchRecipesByIngredients200ResponseInnerMissedIngredientsInner n =
  SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner
    <$> arbitrary -- searchRecipesByIngredients200ResponseInnerMissedIngredientsInnerAisle :: Text
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerMissedIngredientsInnerAmount :: Double
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerMissedIngredientsInnerId :: Int
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerMissedIngredientsInnerImage :: Text
    <*> arbitraryReducedMaybe n -- searchRecipesByIngredients200ResponseInnerMissedIngredientsInnerMeta :: Maybe [Text]
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerMissedIngredientsInnerName :: Text
    <*> arbitraryReducedMaybe n -- searchRecipesByIngredients200ResponseInnerMissedIngredientsInnerExtendedName :: Maybe Text
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerMissedIngredientsInnerOriginal :: Text
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerMissedIngredientsInnerOriginalName :: Text
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerMissedIngredientsInnerUnit :: Text
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerMissedIngredientsInnerUnitLong :: Text
    <*> arbitrary -- searchRecipesByIngredients200ResponseInnerMissedIngredientsInnerUnitShort :: Text
  
instance Arbitrary SearchRecipesByNutrients200ResponseInner where
  arbitrary = sized genSearchRecipesByNutrients200ResponseInner

genSearchRecipesByNutrients200ResponseInner :: Int -> Gen SearchRecipesByNutrients200ResponseInner
genSearchRecipesByNutrients200ResponseInner n =
  SearchRecipesByNutrients200ResponseInner
    <$> arbitrary -- searchRecipesByNutrients200ResponseInnerCalories :: Double
    <*> arbitrary -- searchRecipesByNutrients200ResponseInnerCarbs :: Text
    <*> arbitrary -- searchRecipesByNutrients200ResponseInnerFat :: Text
    <*> arbitrary -- searchRecipesByNutrients200ResponseInnerId :: Int
    <*> arbitrary -- searchRecipesByNutrients200ResponseInnerImage :: Text
    <*> arbitrary -- searchRecipesByNutrients200ResponseInnerImageType :: Text
    <*> arbitrary -- searchRecipesByNutrients200ResponseInnerProtein :: Text
    <*> arbitrary -- searchRecipesByNutrients200ResponseInnerTitle :: Text
  
instance Arbitrary SearchRestaurants200Response where
  arbitrary = sized genSearchRestaurants200Response

genSearchRestaurants200Response :: Int -> Gen SearchRestaurants200Response
genSearchRestaurants200Response n =
  SearchRestaurants200Response
    <$> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurants :: Maybe [SearchRestaurants200ResponseRestaurantsInner]
  
instance Arbitrary SearchRestaurants200ResponseRestaurantsInner where
  arbitrary = sized genSearchRestaurants200ResponseRestaurantsInner

genSearchRestaurants200ResponseRestaurantsInner :: Int -> Gen SearchRestaurants200ResponseRestaurantsInner
genSearchRestaurants200ResponseRestaurantsInner n =
  SearchRestaurants200ResponseRestaurantsInner
    <$> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerId :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerPhoneNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddress :: Maybe SearchRestaurants200ResponseRestaurantsInnerAddress
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerType :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHours :: Maybe SearchRestaurants200ResponseRestaurantsInnerLocalHours
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerCuisines :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerFoodPhotos :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLogoPhotos :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerStorePhotos :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerDollarSigns :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerPickupEnabled :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerDeliveryEnabled :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerIsOpen :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerOffersFirstPartyDelivery :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerOffersThirdPartyDelivery :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerMiles :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerWeightedRatingValue :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAggregatedRatingCount :: Maybe Int
  
instance Arbitrary SearchRestaurants200ResponseRestaurantsInnerAddress where
  arbitrary = sized genSearchRestaurants200ResponseRestaurantsInnerAddress

genSearchRestaurants200ResponseRestaurantsInnerAddress :: Int -> Gen SearchRestaurants200ResponseRestaurantsInnerAddress
genSearchRestaurants200ResponseRestaurantsInnerAddress n =
  SearchRestaurants200ResponseRestaurantsInnerAddress
    <$> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressStreetAddr :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressState :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressZipcode :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressLat :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressLon :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressStreetAddr2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressLatitude :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressLongitude :: Maybe Double
  
instance Arbitrary SearchRestaurants200ResponseRestaurantsInnerLocalHours where
  arbitrary = sized genSearchRestaurants200ResponseRestaurantsInnerLocalHours

genSearchRestaurants200ResponseRestaurantsInnerLocalHours :: Int -> Gen SearchRestaurants200ResponseRestaurantsInnerLocalHours
genSearchRestaurants200ResponseRestaurantsInnerLocalHours n =
  SearchRestaurants200ResponseRestaurantsInnerLocalHours
    <$> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational :: Maybe SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursDelivery :: Maybe SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursPickup :: Maybe SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursDineIn :: Maybe SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
  
instance Arbitrary SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational where
  arbitrary = sized genSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational

genSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational :: Int -> Gen SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
genSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational n =
  SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
    <$> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalMonday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalTuesday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalWednesday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalThursday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalFriday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalSaturday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalSunday :: Maybe Text
  
instance Arbitrary SearchResult where
  arbitrary = sized genSearchResult

genSearchResult :: Int -> Gen SearchResult
genSearchResult n =
  SearchResult
    <$> arbitraryReducedMaybe n -- searchResultDataPoints :: Maybe [SearchResultDataPointsInner]
    <*> arbitraryReducedMaybe n -- searchResultImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResultLink :: Maybe Text
    <*> arbitrary -- searchResultName :: Text
    <*> arbitraryReducedMaybe n -- searchResultType :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResultKvtable :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResultContent :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResultId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchResultRelevance :: Maybe Double
  
instance Arbitrary SearchResultDataPointsInner where
  arbitrary = sized genSearchResultDataPointsInner

genSearchResultDataPointsInner :: Int -> Gen SearchResultDataPointsInner
genSearchResultDataPointsInner n =
  SearchResultDataPointsInner
    <$> arbitrary -- searchResultDataPointsInnerKey :: Text
    <*> arbitraryReduced n -- searchResultDataPointsInnerValue :: AnyType
    <*> arbitraryReducedMaybe n -- searchResultDataPointsInnerShow :: Maybe Bool
  
instance Arbitrary SearchSiteContent200Response where
  arbitrary = sized genSearchSiteContent200Response

genSearchSiteContent200Response :: Int -> Gen SearchSiteContent200Response
genSearchSiteContent200Response n =
  SearchSiteContent200Response
    <$> arbitraryReduced n -- searchSiteContent200ResponseArticles :: [SearchResult]
    <*> arbitraryReduced n -- searchSiteContent200ResponseGroceryProducts :: [SearchResult]
    <*> arbitraryReduced n -- searchSiteContent200ResponseMenuItems :: [SearchResult]
    <*> arbitraryReduced n -- searchSiteContent200ResponseRecipes :: [SearchResult]
  
instance Arbitrary SummarizeRecipe200Response where
  arbitrary = sized genSummarizeRecipe200Response

genSummarizeRecipe200Response :: Int -> Gen SummarizeRecipe200Response
genSummarizeRecipe200Response n =
  SummarizeRecipe200Response
    <$> arbitrary -- summarizeRecipe200ResponseId :: Int
    <*> arbitrary -- summarizeRecipe200ResponseSummary :: Text
    <*> arbitrary -- summarizeRecipe200ResponseTitle :: Text
  
instance Arbitrary TalkToChatbot200Response where
  arbitrary = sized genTalkToChatbot200Response

genTalkToChatbot200Response :: Int -> Gen TalkToChatbot200Response
genTalkToChatbot200Response n =
  TalkToChatbot200Response
    <$> arbitrary -- talkToChatbot200ResponseAnswerText :: Text
    <*> arbitraryReduced n -- talkToChatbot200ResponseMedia :: [TalkToChatbot200ResponseMediaInner]
  
instance Arbitrary TalkToChatbot200ResponseMediaInner where
  arbitrary = sized genTalkToChatbot200ResponseMediaInner

genTalkToChatbot200ResponseMediaInner :: Int -> Gen TalkToChatbot200ResponseMediaInner
genTalkToChatbot200ResponseMediaInner n =
  TalkToChatbot200ResponseMediaInner
    <$> arbitraryReducedMaybe n -- talkToChatbot200ResponseMediaInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- talkToChatbot200ResponseMediaInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- talkToChatbot200ResponseMediaInnerLink :: Maybe Text
  
instance Arbitrary TasteInformation where
  arbitrary = sized genTasteInformation

genTasteInformation :: Int -> Gen TasteInformation
genTasteInformation n =
  TasteInformation
    <$> arbitrary -- tasteInformationSweetness :: Double
    <*> arbitrary -- tasteInformationSaltiness :: Double
    <*> arbitrary -- tasteInformationSourness :: Double
    <*> arbitrary -- tasteInformationBitterness :: Double
    <*> arbitrary -- tasteInformationSavoriness :: Double
    <*> arbitrary -- tasteInformationFattiness :: Double
    <*> arbitrary -- tasteInformationSpiciness :: Double
  



instance Arbitrary E'BackgroundImage where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Language where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Locale where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Mask where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Measure where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'View where
  arbitrary = arbitraryBoundedEnum


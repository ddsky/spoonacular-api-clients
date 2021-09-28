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

-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (T.pack k, v)
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
 
instance Arbitrary FoodIngredientsMapProducts where
  arbitrary = sized genFoodIngredientsMapProducts

genFoodIngredientsMapProducts :: Int -> Gen FoodIngredientsMapProducts
genFoodIngredientsMapProducts n =
  FoodIngredientsMapProducts
    <$> arbitrary -- foodIngredientsMapProductsId :: Int
    <*> arbitrary -- foodIngredientsMapProductsTitle :: Text
    <*> arbitrary -- foodIngredientsMapProductsUpc :: Text
  
instance Arbitrary InlineObject where
  arbitrary = sized genInlineObject

genInlineObject :: Int -> Gen InlineObject
genInlineObject n =
  InlineObject
    <$> arbitrary -- inlineObjectTitle :: Text
    <*> arbitrary -- inlineObjectUpc :: Text
    <*> arbitrary -- inlineObjectPluCode :: Text
  
instance Arbitrary InlineObject1 where
  arbitrary = sized genInlineObject1

genInlineObject1 :: Int -> Gen InlineObject1
genInlineObject1 n =
  InlineObject1
    <$> arbitrary -- inlineObject1Title :: Text
    <*> arbitrary -- inlineObject1Upc :: Text
    <*> arbitrary -- inlineObject1PluCode :: Text
  
instance Arbitrary InlineObject2 where
  arbitrary = sized genInlineObject2

genInlineObject2 :: Int -> Gen InlineObject2
genInlineObject2 n =
  InlineObject2
    <$> arbitrary -- inlineObject2Ingredients :: [Text]
    <*> arbitrary -- inlineObject2Servings :: Double
  
instance Arbitrary InlineObject3 where
  arbitrary = sized genInlineObject3

genInlineObject3 :: Int -> Gen InlineObject3
genInlineObject3 n =
  InlineObject3
    <$> arbitrary -- inlineObject3Username :: Text
    <*> arbitrary -- inlineObject3Date :: Text
    <*> arbitrary -- inlineObject3Hash :: Text
  
instance Arbitrary InlineObject4 where
  arbitrary = sized genInlineObject4

genInlineObject4 :: Int -> Gen InlineObject4
genInlineObject4 n =
  InlineObject4
    <$> arbitrary -- inlineObject4Username :: Text
    <*> arbitrary -- inlineObject4Hash :: Text
  
instance Arbitrary InlineObject5 where
  arbitrary = sized genInlineObject5

genInlineObject5 :: Int -> Gen InlineObject5
genInlineObject5 n =
  InlineObject5
    <$> arbitrary -- inlineObject5Username :: Text
    <*> arbitrary -- inlineObject5Id :: Double
    <*> arbitrary -- inlineObject5Hash :: Text
  
instance Arbitrary InlineObject6 where
  arbitrary = sized genInlineObject6

genInlineObject6 :: Int -> Gen InlineObject6
genInlineObject6 n =
  InlineObject6
    <$> arbitrary -- inlineObject6Username :: Text
    <*> arbitrary -- inlineObject6StartDate :: Text
    <*> arbitrary -- inlineObject6EndDate :: Text
    <*> arbitrary -- inlineObject6Hash :: Text
  
instance Arbitrary InlineObject7 where
  arbitrary = sized genInlineObject7

genInlineObject7 :: Int -> Gen InlineObject7
genInlineObject7 n =
  InlineObject7
    <$> arbitrary -- inlineObject7Username :: Text
    <*> arbitrary -- inlineObject7Hash :: Text
  
instance Arbitrary InlineObject8 where
  arbitrary = sized genInlineObject8

genInlineObject8 :: Int -> Gen InlineObject8
genInlineObject8 n =
  InlineObject8
    <$> arbitrary -- inlineObject8Username :: Text
    <*> arbitrary -- inlineObject8Id :: Double
    <*> arbitrary -- inlineObject8Hash :: Text
  
instance Arbitrary InlineResponse200 where
  arbitrary = sized genInlineResponse200

genInlineResponse200 :: Int -> Gen InlineResponse200
genInlineResponse200 n =
  InlineResponse200
    <$> arbitrary -- inlineResponse200Offset :: Int
    <*> arbitrary -- inlineResponse200Number :: Int
    <*> arbitraryReduced n -- inlineResponse200Results :: [InlineResponse200Results]
    <*> arbitrary -- inlineResponse200TotalResults :: Int
  
instance Arbitrary InlineResponse2001 where
  arbitrary = sized genInlineResponse2001

genInlineResponse2001 :: Int -> Gen InlineResponse2001
genInlineResponse2001 n =
  InlineResponse2001
    <$> arbitrary -- inlineResponse2001Id :: Int
    <*> arbitrary -- inlineResponse2001Image :: Text
    <*> arbitrary -- inlineResponse2001ImageType :: Text
    <*> arbitrary -- inlineResponse2001Likes :: Int
    <*> arbitrary -- inlineResponse2001MissedIngredientCount :: Int
    <*> arbitraryReduced n -- inlineResponse2001MissedIngredients :: [RecipesFindByIngredientsMissedIngredients]
    <*> arbitrary -- inlineResponse2001Title :: Text
    <*> arbitraryReduced n -- inlineResponse2001UnusedIngredients :: [A.Value]
    <*> arbitrary -- inlineResponse2001UsedIngredientCount :: Double
    <*> arbitraryReduced n -- inlineResponse2001UsedIngredients :: [RecipesFindByIngredientsMissedIngredients]
    <*> arbitraryReducedMaybe n -- inlineResponse2001 :: Maybe Text
  
instance Arbitrary InlineResponse20010 where
  arbitrary = sized genInlineResponse20010

genInlineResponse20010 :: Int -> Gen InlineResponse20010
genInlineResponse20010 n =
  InlineResponse20010
    <$> arbitraryReduced n -- inlineResponse20010Ingredients :: [InlineResponse20010Ingredients]
    <*> arbitrary -- inlineResponse20010TotalCost :: Double
    <*> arbitrary -- inlineResponse20010TotalCostPerServing :: Double
  
instance Arbitrary InlineResponse20010Amount where
  arbitrary = sized genInlineResponse20010Amount

genInlineResponse20010Amount :: Int -> Gen InlineResponse20010Amount
genInlineResponse20010Amount n =
  InlineResponse20010Amount
    <$> arbitraryReduced n -- inlineResponse20010AmountMetric :: InlineResponse20010AmountMetric
    <*> arbitraryReduced n -- inlineResponse20010AmountUs :: InlineResponse20010AmountMetric
  
instance Arbitrary InlineResponse20010AmountMetric where
  arbitrary = sized genInlineResponse20010AmountMetric

genInlineResponse20010AmountMetric :: Int -> Gen InlineResponse20010AmountMetric
genInlineResponse20010AmountMetric n =
  InlineResponse20010AmountMetric
    <$> arbitrary -- inlineResponse20010AmountMetricUnit :: Text
    <*> arbitrary -- inlineResponse20010AmountMetricValue :: Double
  
instance Arbitrary InlineResponse20010Ingredients where
  arbitrary = sized genInlineResponse20010Ingredients

genInlineResponse20010Ingredients :: Int -> Gen InlineResponse20010Ingredients
genInlineResponse20010Ingredients n =
  InlineResponse20010Ingredients
    <$> arbitraryReducedMaybe n -- inlineResponse20010IngredientsAmount :: Maybe InlineResponse20010Amount
    <*> arbitrary -- inlineResponse20010IngredientsImage :: Text
    <*> arbitrary -- inlineResponse20010IngredientsName :: Text
    <*> arbitrary -- inlineResponse20010IngredientsPrice :: Double
  
instance Arbitrary InlineResponse20011 where
  arbitrary = sized genInlineResponse20011

genInlineResponse20011 :: Int -> Gen InlineResponse20011
genInlineResponse20011 n =
  InlineResponse20011
    <$> arbitraryReduced n -- inlineResponse20011Ingredients :: [InlineResponse20011Ingredients]
  
instance Arbitrary InlineResponse20011Ingredients where
  arbitrary = sized genInlineResponse20011Ingredients

genInlineResponse20011Ingredients :: Int -> Gen InlineResponse20011Ingredients
genInlineResponse20011Ingredients n =
  InlineResponse20011Ingredients
    <$> arbitraryReducedMaybe n -- inlineResponse20011IngredientsAmount :: Maybe InlineResponse20010Amount
    <*> arbitrary -- inlineResponse20011IngredientsImage :: Text
    <*> arbitrary -- inlineResponse20011IngredientsName :: Text
  
instance Arbitrary InlineResponse20012 where
  arbitrary = sized genInlineResponse20012

genInlineResponse20012 :: Int -> Gen InlineResponse20012
genInlineResponse20012 n =
  InlineResponse20012
    <$> arbitrary -- inlineResponse20012Calories :: Text
    <*> arbitrary -- inlineResponse20012Carbs :: Text
    <*> arbitrary -- inlineResponse20012Fat :: Text
    <*> arbitrary -- inlineResponse20012Protein :: Text
    <*> arbitraryReduced n -- inlineResponse20012Bad :: [A.Value]
    <*> arbitraryReduced n -- inlineResponse20012Good :: [A.Value]
  
instance Arbitrary InlineResponse20013 where
  arbitrary = sized genInlineResponse20013

genInlineResponse20013 :: Int -> Gen InlineResponse20013
genInlineResponse20013 n =
  InlineResponse20013
    <$> arbitraryReduced n -- inlineResponse20013ParsedInstructions :: [InlineResponse20013ParsedInstructions]
    <*> arbitraryReduced n -- inlineResponse20013Ingredients :: [InlineResponse20013Ingredients1]
    <*> arbitraryReduced n -- inlineResponse20013Equipment :: [InlineResponse20013Ingredients1]
  
instance Arbitrary InlineResponse20013Ingredients where
  arbitrary = sized genInlineResponse20013Ingredients

genInlineResponse20013Ingredients :: Int -> Gen InlineResponse20013Ingredients
genInlineResponse20013Ingredients n =
  InlineResponse20013Ingredients
    <$> arbitrary -- inlineResponse20013IngredientsId :: Int
    <*> arbitrary -- inlineResponse20013IngredientsName :: Text
    <*> arbitrary -- inlineResponse20013IngredientsLocalizedName :: Text
    <*> arbitrary -- inlineResponse20013IngredientsImage :: Text
  
instance Arbitrary InlineResponse20013Ingredients1 where
  arbitrary = sized genInlineResponse20013Ingredients1

genInlineResponse20013Ingredients1 :: Int -> Gen InlineResponse20013Ingredients1
genInlineResponse20013Ingredients1 n =
  InlineResponse20013Ingredients1
    <$> arbitrary -- inlineResponse20013Ingredients1Id :: Int
    <*> arbitrary -- inlineResponse20013Ingredients1Name :: Text
  
instance Arbitrary InlineResponse20013ParsedInstructions where
  arbitrary = sized genInlineResponse20013ParsedInstructions

genInlineResponse20013ParsedInstructions :: Int -> Gen InlineResponse20013ParsedInstructions
genInlineResponse20013ParsedInstructions n =
  InlineResponse20013ParsedInstructions
    <$> arbitrary -- inlineResponse20013ParsedInstructionsName :: Text
    <*> arbitraryReducedMaybe n -- inlineResponse20013ParsedInstructionsSteps :: Maybe [InlineResponse20013Steps]
  
instance Arbitrary InlineResponse20013Steps where
  arbitrary = sized genInlineResponse20013Steps

genInlineResponse20013Steps :: Int -> Gen InlineResponse20013Steps
genInlineResponse20013Steps n =
  InlineResponse20013Steps
    <$> arbitrary -- inlineResponse20013StepsNumber :: Double
    <*> arbitrary -- inlineResponse20013StepsStep :: Text
    <*> arbitraryReducedMaybe n -- inlineResponse20013StepsIngredients :: Maybe [InlineResponse20013Ingredients]
    <*> arbitraryReducedMaybe n -- inlineResponse20013StepsEquipment :: Maybe [InlineResponse20013Ingredients]
  
instance Arbitrary InlineResponse20014 where
  arbitrary = sized genInlineResponse20014

genInlineResponse20014 :: Int -> Gen InlineResponse20014
genInlineResponse20014 n =
  InlineResponse20014
    <$> arbitrary -- inlineResponse20014Id :: Int
    <*> arbitrary -- inlineResponse20014Summary :: Text
    <*> arbitrary -- inlineResponse20014Title :: Text
  
instance Arbitrary InlineResponse20015 where
  arbitrary = sized genInlineResponse20015

genInlineResponse20015 :: Int -> Gen InlineResponse20015
genInlineResponse20015 n =
  InlineResponse20015
    <$> arbitrary -- inlineResponse20015Url :: Text
  
instance Arbitrary InlineResponse20016 where
  arbitrary = sized genInlineResponse20016

genInlineResponse20016 :: Int -> Gen InlineResponse20016
genInlineResponse20016 n =
  InlineResponse20016
    <$> arbitraryReduced n -- inlineResponse20016ParsedInstructions :: [A.Value]
    <*> arbitraryReduced n -- inlineResponse20016Ingredients :: [A.Value]
    <*> arbitraryReduced n -- inlineResponse20016Equipment :: [A.Value]
  
instance Arbitrary InlineResponse20017 where
  arbitrary = sized genInlineResponse20017

genInlineResponse20017 :: Int -> Gen InlineResponse20017
genInlineResponse20017 n =
  InlineResponse20017
    <$> arbitrary -- inlineResponse20017Cuisine :: Text
    <*> arbitrary -- inlineResponse20017Cuisines :: [Text]
    <*> arbitrary -- inlineResponse20017Confidence :: Double
  
instance Arbitrary InlineResponse20018 where
  arbitrary = sized genInlineResponse20018

genInlineResponse20018 :: Int -> Gen InlineResponse20018
genInlineResponse20018 n =
  InlineResponse20018
    <$> arbitraryReduced n -- inlineResponse20018Dishes :: [InlineResponse20018Dishes]
    <*> arbitraryReduced n -- inlineResponse20018Ingredients :: [InlineResponse20018Ingredients]
    <*> arbitrary -- inlineResponse20018Cuisines :: [Text]
    <*> arbitrary -- inlineResponse20018Modifiers :: [Text]
  
instance Arbitrary InlineResponse20018Dishes where
  arbitrary = sized genInlineResponse20018Dishes

genInlineResponse20018Dishes :: Int -> Gen InlineResponse20018Dishes
genInlineResponse20018Dishes n =
  InlineResponse20018Dishes
    <$> arbitrary -- inlineResponse20018DishesImage :: Text
    <*> arbitrary -- inlineResponse20018DishesName :: Text
  
instance Arbitrary InlineResponse20018Ingredients where
  arbitrary = sized genInlineResponse20018Ingredients

genInlineResponse20018Ingredients :: Int -> Gen InlineResponse20018Ingredients
genInlineResponse20018Ingredients n =
  InlineResponse20018Ingredients
    <$> arbitrary -- inlineResponse20018IngredientsImage :: Text
    <*> arbitrary -- inlineResponse20018IngredientsInclude :: Bool
    <*> arbitrary -- inlineResponse20018IngredientsName :: Text
  
instance Arbitrary InlineResponse20019 where
  arbitrary = sized genInlineResponse20019

genInlineResponse20019 :: Int -> Gen InlineResponse20019
genInlineResponse20019 n =
  InlineResponse20019
    <$> arbitrary -- inlineResponse20019SourceAmount :: Double
    <*> arbitrary -- inlineResponse20019SourceUnit :: Text
    <*> arbitrary -- inlineResponse20019TargetAmount :: Double
    <*> arbitrary -- inlineResponse20019TargetUnit :: Text
    <*> arbitrary -- inlineResponse20019Answer :: Text
  
instance Arbitrary InlineResponse2002 where
  arbitrary = sized genInlineResponse2002

genInlineResponse2002 :: Int -> Gen InlineResponse2002
genInlineResponse2002 n =
  InlineResponse2002
    <$> arbitrary -- inlineResponse2002Calories :: Double
    <*> arbitrary -- inlineResponse2002Carbs :: Text
    <*> arbitrary -- inlineResponse2002Fat :: Text
    <*> arbitrary -- inlineResponse2002Id :: Int
    <*> arbitrary -- inlineResponse2002Image :: Text
    <*> arbitrary -- inlineResponse2002ImageType :: Text
    <*> arbitrary -- inlineResponse2002Protein :: Text
    <*> arbitrary -- inlineResponse2002Title :: Text
  
instance Arbitrary InlineResponse20020 where
  arbitrary = sized genInlineResponse20020

genInlineResponse20020 :: Int -> Gen InlineResponse20020
genInlineResponse20020 n =
  InlineResponse20020
    <$> arbitrary -- inlineResponse20020Id :: Int
    <*> arbitrary -- inlineResponse20020Original :: Text
    <*> arbitrary -- inlineResponse20020OriginalName :: Text
    <*> arbitrary -- inlineResponse20020Name :: Text
    <*> arbitrary -- inlineResponse20020NameClean :: Text
    <*> arbitrary -- inlineResponse20020Amount :: Double
    <*> arbitrary -- inlineResponse20020Unit :: Text
    <*> arbitrary -- inlineResponse20020UnitShort :: Text
    <*> arbitrary -- inlineResponse20020UnitLong :: Text
    <*> arbitrary -- inlineResponse20020PossibleUnits :: [Text]
    <*> arbitraryReduced n -- inlineResponse20020EstimatedCost :: RecipesParseIngredientsEstimatedCost
    <*> arbitrary -- inlineResponse20020Consistency :: Text
    <*> arbitrary -- inlineResponse20020Aisle :: Text
    <*> arbitrary -- inlineResponse20020Image :: Text
    <*> arbitrary -- inlineResponse20020Meta :: [Text]
    <*> arbitraryReduced n -- inlineResponse20020Nutrition :: RecipesParseIngredientsNutrition
  
instance Arbitrary InlineResponse20021 where
  arbitrary = sized genInlineResponse20021

genInlineResponse20021 :: Int -> Gen InlineResponse20021
genInlineResponse20021 n =
  InlineResponse20021
    <$> arbitraryReduced n -- inlineResponse20021Calories :: InlineResponse20021Calories
    <*> arbitraryReduced n -- inlineResponse20021Carbs :: InlineResponse20021Calories
    <*> arbitraryReduced n -- inlineResponse20021Fat :: InlineResponse20021Calories
    <*> arbitraryReduced n -- inlineResponse20021Protein :: InlineResponse20021Calories
    <*> arbitrary -- inlineResponse20021RecipesUsed :: Int
  
instance Arbitrary InlineResponse20021Calories where
  arbitrary = sized genInlineResponse20021Calories

genInlineResponse20021Calories :: Int -> Gen InlineResponse20021Calories
genInlineResponse20021Calories n =
  InlineResponse20021Calories
    <$> arbitraryReduced n -- inlineResponse20021CaloriesConfidenceRange95Percent :: InlineResponse20021CaloriesConfidenceRange95Percent
    <*> arbitrary -- inlineResponse20021CaloriesStandardDeviation :: Double
    <*> arbitrary -- inlineResponse20021CaloriesUnit :: Text
    <*> arbitrary -- inlineResponse20021CaloriesValue :: Double
  
instance Arbitrary InlineResponse20021CaloriesConfidenceRange95Percent where
  arbitrary = sized genInlineResponse20021CaloriesConfidenceRange95Percent

genInlineResponse20021CaloriesConfidenceRange95Percent :: Int -> Gen InlineResponse20021CaloriesConfidenceRange95Percent
genInlineResponse20021CaloriesConfidenceRange95Percent n =
  InlineResponse20021CaloriesConfidenceRange95Percent
    <$> arbitrary -- inlineResponse20021CaloriesConfidenceRange95PercentMax :: Double
    <*> arbitrary -- inlineResponse20021CaloriesConfidenceRange95PercentMin :: Double
  
instance Arbitrary InlineResponse20022 where
  arbitrary = sized genInlineResponse20022

genInlineResponse20022 :: Int -> Gen InlineResponse20022
genInlineResponse20022 n =
  InlineResponse20022
    <$> arbitrary -- inlineResponse20022Id :: Int
    <*> arbitrary -- inlineResponse20022Original :: Text
    <*> arbitrary -- inlineResponse20022OriginalName :: Text
    <*> arbitrary -- inlineResponse20022Name :: Text
    <*> arbitrary -- inlineResponse20022NameClean :: Text
    <*> arbitrary -- inlineResponse20022Amount :: Double
    <*> arbitrary -- inlineResponse20022Unit :: Text
    <*> arbitrary -- inlineResponse20022UnitShort :: Text
    <*> arbitrary -- inlineResponse20022UnitLong :: Text
    <*> arbitrary -- inlineResponse20022PossibleUnits :: [Text]
    <*> arbitraryReduced n -- inlineResponse20022EstimatedCost :: RecipesParseIngredientsEstimatedCost
    <*> arbitrary -- inlineResponse20022Consistency :: Text
    <*> arbitrary -- inlineResponse20022ShoppingListUnits :: [Text]
    <*> arbitrary -- inlineResponse20022Aisle :: Text
    <*> arbitrary -- inlineResponse20022Image :: Text
    <*> arbitraryReduced n -- inlineResponse20022Meta :: [A.Value]
    <*> arbitraryReduced n -- inlineResponse20022Nutrition :: InlineResponse20022Nutrition
    <*> arbitrary -- inlineResponse20022CategoryPath :: [Text]
  
instance Arbitrary InlineResponse20022Nutrition where
  arbitrary = sized genInlineResponse20022Nutrition

genInlineResponse20022Nutrition :: Int -> Gen InlineResponse20022Nutrition
genInlineResponse20022Nutrition n =
  InlineResponse20022Nutrition
    <$> arbitraryReduced n -- inlineResponse20022NutritionNutrients :: [RecipesParseIngredientsNutritionNutrients]
    <*> arbitraryReduced n -- inlineResponse20022NutritionProperties :: [RecipesParseIngredientsNutritionProperties]
    <*> arbitraryReduced n -- inlineResponse20022NutritionCaloricBreakdown :: RecipesParseIngredientsNutritionCaloricBreakdown
    <*> arbitraryReduced n -- inlineResponse20022NutritionWeightPerServing :: RecipesParseIngredientsNutritionWeightPerServing
  
instance Arbitrary InlineResponse20023 where
  arbitrary = sized genInlineResponse20023

genInlineResponse20023 :: Int -> Gen InlineResponse20023
genInlineResponse20023 n =
  InlineResponse20023
    <$> arbitrary -- inlineResponse20023TotalGlycemicLoad :: Double
    <*> arbitraryReduced n -- inlineResponse20023Ingredients :: [InlineResponse20023Ingredients]
  
instance Arbitrary InlineResponse20023Ingredients where
  arbitrary = sized genInlineResponse20023Ingredients

genInlineResponse20023Ingredients :: Int -> Gen InlineResponse20023Ingredients
genInlineResponse20023Ingredients n =
  InlineResponse20023Ingredients
    <$> arbitrary -- inlineResponse20023IngredientsId :: Int
    <*> arbitrary -- inlineResponse20023IngredientsOriginal :: Text
    <*> arbitrary -- inlineResponse20023IngredientsGlycemicIndex :: Double
    <*> arbitrary -- inlineResponse20023IngredientsGlycemicLoad :: Double
  
instance Arbitrary InlineResponse20024 where
  arbitrary = sized genInlineResponse20024

genInlineResponse20024 :: Int -> Gen InlineResponse20024
genInlineResponse20024 n =
  InlineResponse20024
    <$> arbitrary -- inlineResponse20024Name :: Text
    <*> arbitrary -- inlineResponse20024Image :: Text
    <*> arbitrary -- inlineResponse20024Id :: Int
    <*> arbitrary -- inlineResponse20024Aisle :: Text
    <*> arbitrary -- inlineResponse20024PossibleUnits :: [Text]
  
instance Arbitrary InlineResponse20025 where
  arbitrary = sized genInlineResponse20025

genInlineResponse20025 :: Int -> Gen InlineResponse20025
genInlineResponse20025 n =
  InlineResponse20025
    <$> arbitraryReduced n -- inlineResponse20025Results :: [InlineResponse20025Results]
    <*> arbitrary -- inlineResponse20025Offset :: Int
    <*> arbitrary -- inlineResponse20025Number :: Int
    <*> arbitrary -- inlineResponse20025TotalResults :: Int
  
instance Arbitrary InlineResponse20025Results where
  arbitrary = sized genInlineResponse20025Results

genInlineResponse20025Results :: Int -> Gen InlineResponse20025Results
genInlineResponse20025Results n =
  InlineResponse20025Results
    <$> arbitrary -- inlineResponse20025ResultsId :: Int
    <*> arbitrary -- inlineResponse20025ResultsName :: Text
    <*> arbitrary -- inlineResponse20025ResultsImage :: Text
  
instance Arbitrary InlineResponse20026 where
  arbitrary = sized genInlineResponse20026

genInlineResponse20026 :: Int -> Gen InlineResponse20026
genInlineResponse20026 n =
  InlineResponse20026
    <$> arbitrary -- inlineResponse20026Ingredient :: Text
    <*> arbitrary -- inlineResponse20026Substitutes :: [Text]
    <*> arbitrary -- inlineResponse20026Message :: Text
  
instance Arbitrary InlineResponse20027 where
  arbitrary = sized genInlineResponse20027

genInlineResponse20027 :: Int -> Gen InlineResponse20027
genInlineResponse20027 n =
  InlineResponse20027
    <$> arbitraryReduced n -- inlineResponse20027Products :: [InlineResponse2007]
    <*> arbitrary -- inlineResponse20027TotalProducts :: Int
    <*> arbitrary -- inlineResponse20027Type :: Text
    <*> arbitrary -- inlineResponse20027Offset :: Int
    <*> arbitrary -- inlineResponse20027Number :: Int
  
instance Arbitrary InlineResponse20028 where
  arbitrary = sized genInlineResponse20028

genInlineResponse20028 :: Int -> Gen InlineResponse20028
genInlineResponse20028 n =
  InlineResponse20028
    <$> arbitrary -- inlineResponse20028Id :: Int
    <*> arbitrary -- inlineResponse20028Title :: Text
    <*> arbitrary -- inlineResponse20028Badges :: [Text]
    <*> arbitrary -- inlineResponse20028ImportantBadges :: [Text]
    <*> arbitrary -- inlineResponse20028Breadcrumbs :: [Text]
    <*> arbitrary -- inlineResponse20028GeneratedText :: Text
    <*> arbitrary -- inlineResponse20028ImageType :: Text
    <*> arbitraryReducedMaybe n -- inlineResponse20028IngredientCount :: Maybe Int
    <*> arbitrary -- inlineResponse20028IngredientList :: Text
    <*> arbitraryReduced n -- inlineResponse20028Ingredients :: [InlineResponse20028Ingredients]
    <*> arbitrary -- inlineResponse20028Likes :: Double
    <*> arbitraryReduced n -- inlineResponse20028Nutrition :: InlineResponse20028Nutrition
    <*> arbitrary -- inlineResponse20028Price :: Double
    <*> arbitraryReduced n -- inlineResponse20028Servings :: InlineResponse20028Servings
    <*> arbitrary -- inlineResponse20028SpoonacularScore :: Double
  
instance Arbitrary InlineResponse20028Ingredients where
  arbitrary = sized genInlineResponse20028Ingredients

genInlineResponse20028Ingredients :: Int -> Gen InlineResponse20028Ingredients
genInlineResponse20028Ingredients n =
  InlineResponse20028Ingredients
    <$> arbitraryReducedMaybeValue n -- inlineResponse20028IngredientsDescription :: Maybe A.Value
    <*> arbitrary -- inlineResponse20028IngredientsName :: Text
    <*> arbitraryReducedMaybeValue n -- inlineResponse20028IngredientsSafetyLevel :: Maybe A.Value
  
instance Arbitrary InlineResponse20028Nutrition where
  arbitrary = sized genInlineResponse20028Nutrition

genInlineResponse20028Nutrition :: Int -> Gen InlineResponse20028Nutrition
genInlineResponse20028Nutrition n =
  InlineResponse20028Nutrition
    <$> arbitraryReduced n -- inlineResponse20028NutritionNutrients :: [RecipesParseIngredientsNutritionNutrients]
    <*> arbitraryReduced n -- inlineResponse20028NutritionCaloricBreakdown :: RecipesParseIngredientsNutritionCaloricBreakdown
  
instance Arbitrary InlineResponse20028Servings where
  arbitrary = sized genInlineResponse20028Servings

genInlineResponse20028Servings :: Int -> Gen InlineResponse20028Servings
genInlineResponse20028Servings n =
  InlineResponse20028Servings
    <$> arbitrary -- inlineResponse20028ServingsNumber :: Double
    <*> arbitrary -- inlineResponse20028ServingsSize :: Double
    <*> arbitrary -- inlineResponse20028ServingsUnit :: Text
  
instance Arbitrary InlineResponse20029 where
  arbitrary = sized genInlineResponse20029

genInlineResponse20029 :: Int -> Gen InlineResponse20029
genInlineResponse20029 n =
  InlineResponse20029
    <$> arbitraryReduced n -- inlineResponse20029CustomFoods :: [InlineResponse20029CustomFoods]
    <*> arbitrary -- inlineResponse20029Type :: Text
    <*> arbitrary -- inlineResponse20029Offset :: Int
    <*> arbitrary -- inlineResponse20029Number :: Int
  
instance Arbitrary InlineResponse20029CustomFoods where
  arbitrary = sized genInlineResponse20029CustomFoods

genInlineResponse20029CustomFoods :: Int -> Gen InlineResponse20029CustomFoods
genInlineResponse20029CustomFoods n =
  InlineResponse20029CustomFoods
    <$> arbitrary -- inlineResponse20029CustomFoodsId :: Int
    <*> arbitrary -- inlineResponse20029CustomFoodsTitle :: Text
    <*> arbitrary -- inlineResponse20029CustomFoodsServings :: Double
    <*> arbitrary -- inlineResponse20029CustomFoodsImageUrl :: Text
    <*> arbitrary -- inlineResponse20029CustomFoodsPrice :: Double
  
instance Arbitrary InlineResponse2003 where
  arbitrary = sized genInlineResponse2003

genInlineResponse2003 :: Int -> Gen InlineResponse2003
genInlineResponse2003 n =
  InlineResponse2003
    <$> arbitrary -- inlineResponse2003Id :: Int
    <*> arbitrary -- inlineResponse2003Title :: Text
    <*> arbitrary -- inlineResponse2003Image :: Text
    <*> arbitrary -- inlineResponse2003ImageType :: Text
    <*> arbitrary -- inlineResponse2003Servings :: Double
    <*> arbitrary -- inlineResponse2003ReadyInMinutes :: Int
    <*> arbitrary -- inlineResponse2003License :: Text
    <*> arbitrary -- inlineResponse2003SourceName :: Text
    <*> arbitrary -- inlineResponse2003SourceUrl :: Text
    <*> arbitrary -- inlineResponse2003SpoonacularSourceUrl :: Text
    <*> arbitrary -- inlineResponse2003AggregateLikes :: Int
    <*> arbitrary -- inlineResponse2003HealthScore :: Double
    <*> arbitrary -- inlineResponse2003SpoonacularScore :: Double
    <*> arbitrary -- inlineResponse2003PricePerServing :: Double
    <*> arbitraryReduced n -- inlineResponse2003AnalyzedInstructions :: [A.Value]
    <*> arbitrary -- inlineResponse2003Cheap :: Bool
    <*> arbitrary -- inlineResponse2003CreditsText :: Text
    <*> arbitrary -- inlineResponse2003Cuisines :: [Text]
    <*> arbitrary -- inlineResponse2003DairyFree :: Bool
    <*> arbitrary -- inlineResponse2003Diets :: [Text]
    <*> arbitrary -- inlineResponse2003Gaps :: Text
    <*> arbitrary -- inlineResponse2003GlutenFree :: Bool
    <*> arbitrary -- inlineResponse2003Instructions :: Text
    <*> arbitrary -- inlineResponse2003Ketogenic :: Bool
    <*> arbitrary -- inlineResponse2003LowFodmap :: Bool
    <*> arbitrary -- inlineResponse2003Occasions :: [Text]
    <*> arbitrary -- inlineResponse2003Sustainable :: Bool
    <*> arbitrary -- inlineResponse2003Vegan :: Bool
    <*> arbitrary -- inlineResponse2003Vegetarian :: Bool
    <*> arbitrary -- inlineResponse2003VeryHealthy :: Bool
    <*> arbitrary -- inlineResponse2003VeryPopular :: Bool
    <*> arbitrary -- inlineResponse2003Whole30 :: Bool
    <*> arbitrary -- inlineResponse2003WeightWatcherSmartPoints :: Double
    <*> arbitrary -- inlineResponse2003DishTypes :: [Text]
    <*> arbitraryReduced n -- inlineResponse2003ExtendedIngredients :: [InlineResponse2003ExtendedIngredients]
    <*> arbitrary -- inlineResponse2003Summary :: Text
    <*> arbitraryReduced n -- inlineResponse2003WinePairing :: InlineResponse2003WinePairing
  
instance Arbitrary InlineResponse20030 where
  arbitrary = sized genInlineResponse20030

genInlineResponse20030 :: Int -> Gen InlineResponse20030
genInlineResponse20030 n =
  InlineResponse20030
    <$> arbitrary -- inlineResponse20030Id :: Int
    <*> arbitrary -- inlineResponse20030Title :: Text
    <*> arbitrary -- inlineResponse20030Breadcrumbs :: [Text]
    <*> arbitrary -- inlineResponse20030ImageType :: Text
    <*> arbitrary -- inlineResponse20030Badges :: [Text]
    <*> arbitrary -- inlineResponse20030ImportantBadges :: [Text]
    <*> arbitrary -- inlineResponse20030IngredientCount :: Int
    <*> arbitraryReducedMaybeValue n -- inlineResponse20030GeneratedText :: Maybe A.Value
    <*> arbitrary -- inlineResponse20030IngredientList :: Text
    <*> arbitraryReduced n -- inlineResponse20030Ingredients :: [InlineResponse20030Ingredients]
    <*> arbitrary -- inlineResponse20030Likes :: Double
    <*> arbitrary -- inlineResponse20030Aisle :: Text
    <*> arbitraryReduced n -- inlineResponse20030Nutrition :: InlineResponse20028Nutrition
    <*> arbitrary -- inlineResponse20030Price :: Double
    <*> arbitraryReduced n -- inlineResponse20030Servings :: InlineResponse20028Servings
    <*> arbitrary -- inlineResponse20030SpoonacularScore :: Double
  
instance Arbitrary InlineResponse20030Ingredients where
  arbitrary = sized genInlineResponse20030Ingredients

genInlineResponse20030Ingredients :: Int -> Gen InlineResponse20030Ingredients
genInlineResponse20030Ingredients n =
  InlineResponse20030Ingredients
    <$> arbitraryReducedMaybeValue n -- inlineResponse20030IngredientsDescription :: Maybe A.Value
    <*> arbitrary -- inlineResponse20030IngredientsName :: Text
    <*> arbitraryReducedMaybeValue n -- inlineResponse20030IngredientsSafetyLevel :: Maybe A.Value
  
instance Arbitrary InlineResponse20031 where
  arbitrary = sized genInlineResponse20031

genInlineResponse20031 :: Int -> Gen InlineResponse20031
genInlineResponse20031 n =
  InlineResponse20031
    <$> arbitraryReduced n -- inlineResponse20031ComparableProducts :: InlineResponse20031ComparableProducts
  
instance Arbitrary InlineResponse20031ComparableProducts where
  arbitrary = sized genInlineResponse20031ComparableProducts

genInlineResponse20031ComparableProducts :: Int -> Gen InlineResponse20031ComparableProducts
genInlineResponse20031ComparableProducts n =
  InlineResponse20031ComparableProducts
    <$> arbitraryReduced n -- inlineResponse20031ComparableProductsCalories :: [A.Value]
    <*> arbitraryReduced n -- inlineResponse20031ComparableProductsLikes :: [A.Value]
    <*> arbitraryReduced n -- inlineResponse20031ComparableProductsPrice :: [A.Value]
    <*> arbitraryReduced n -- inlineResponse20031ComparableProductsProtein :: [InlineResponse20031ComparableProductsProtein]
    <*> arbitraryReduced n -- inlineResponse20031ComparableProductsSpoonacularScore :: [InlineResponse20031ComparableProductsProtein]
    <*> arbitraryReduced n -- inlineResponse20031ComparableProductsSugar :: [A.Value]
  
instance Arbitrary InlineResponse20031ComparableProductsProtein where
  arbitrary = sized genInlineResponse20031ComparableProductsProtein

genInlineResponse20031ComparableProductsProtein :: Int -> Gen InlineResponse20031ComparableProductsProtein
genInlineResponse20031ComparableProductsProtein n =
  InlineResponse20031ComparableProductsProtein
    <$> arbitrary -- inlineResponse20031ComparableProductsProteinDifference :: Double
    <*> arbitrary -- inlineResponse20031ComparableProductsProteinId :: Int
    <*> arbitrary -- inlineResponse20031ComparableProductsProteinImage :: Text
    <*> arbitrary -- inlineResponse20031ComparableProductsProteinTitle :: Text
  
instance Arbitrary InlineResponse20032 where
  arbitrary = sized genInlineResponse20032

genInlineResponse20032 :: Int -> Gen InlineResponse20032
genInlineResponse20032 n =
  InlineResponse20032
    <$> arbitraryReduced n -- inlineResponse20032Results :: [InlineResponse20032Results]
  
instance Arbitrary InlineResponse20032Results where
  arbitrary = sized genInlineResponse20032Results

genInlineResponse20032Results :: Int -> Gen InlineResponse20032Results
genInlineResponse20032Results n =
  InlineResponse20032Results
    <$> arbitrary -- inlineResponse20032ResultsId :: Int
    <*> arbitrary -- inlineResponse20032ResultsTitle :: Text
  
instance Arbitrary InlineResponse20033 where
  arbitrary = sized genInlineResponse20033

genInlineResponse20033 :: Int -> Gen InlineResponse20033
genInlineResponse20033 n =
  InlineResponse20033
    <$> arbitrary -- inlineResponse20033CleanTitle :: Text
    <*> arbitrary -- inlineResponse20033Image :: Text
    <*> arbitrary -- inlineResponse20033Category :: Text
    <*> arbitrary -- inlineResponse20033Breadcrumbs :: [Text]
    <*> arbitrary -- inlineResponse20033UsdaCode :: Int
  
instance Arbitrary InlineResponse20034 where
  arbitrary = sized genInlineResponse20034

genInlineResponse20034 :: Int -> Gen InlineResponse20034
genInlineResponse20034 n =
  InlineResponse20034
    <$> arbitrary -- inlineResponse20034Original :: Text
    <*> arbitrary -- inlineResponse20034OriginalName :: Text
    <*> arbitrary -- inlineResponse20034IngredientImage :: Text
    <*> arbitrary -- inlineResponse20034Meta :: [Text]
    <*> arbitraryReduced n -- inlineResponse20034Products :: [FoodIngredientsMapProducts]
  
instance Arbitrary InlineResponse20035 where
  arbitrary = sized genInlineResponse20035

genInlineResponse20035 :: Int -> Gen InlineResponse20035
genInlineResponse20035 n =
  InlineResponse20035
    <$> arbitraryReduced n -- inlineResponse20035MenuItems :: [InlineResponse20035MenuItems]
    <*> arbitrary -- inlineResponse20035TotalMenuItems :: Int
    <*> arbitrary -- inlineResponse20035Type :: Text
    <*> arbitrary -- inlineResponse20035Offset :: Int
    <*> arbitrary -- inlineResponse20035Number :: Int
  
instance Arbitrary InlineResponse20035MenuItems where
  arbitrary = sized genInlineResponse20035MenuItems

genInlineResponse20035MenuItems :: Int -> Gen InlineResponse20035MenuItems
genInlineResponse20035MenuItems n =
  InlineResponse20035MenuItems
    <$> arbitrary -- inlineResponse20035MenuItemsId :: Int
    <*> arbitrary -- inlineResponse20035MenuItemsTitle :: Text
    <*> arbitrary -- inlineResponse20035MenuItemsRestaurantChain :: Text
    <*> arbitrary -- inlineResponse20035MenuItemsImage :: Text
    <*> arbitrary -- inlineResponse20035MenuItemsImageType :: Text
    <*> arbitraryReducedMaybe n -- inlineResponse20035MenuItemsServings :: Maybe InlineResponse20028Servings
  
instance Arbitrary InlineResponse20036 where
  arbitrary = sized genInlineResponse20036

genInlineResponse20036 :: Int -> Gen InlineResponse20036
genInlineResponse20036 n =
  InlineResponse20036
    <$> arbitrary -- inlineResponse20036Id :: Int
    <*> arbitrary -- inlineResponse20036Title :: Text
    <*> arbitrary -- inlineResponse20036RestaurantChain :: Text
    <*> arbitraryReduced n -- inlineResponse20036Nutrition :: InlineResponse20028Nutrition
    <*> arbitrary -- inlineResponse20036Badges :: [Text]
    <*> arbitrary -- inlineResponse20036Breadcrumbs :: [Text]
    <*> arbitraryReducedMaybe n -- inlineResponse20036GeneratedText :: Maybe Text
    <*> arbitrary -- inlineResponse20036ImageType :: Text
    <*> arbitrary -- inlineResponse20036Likes :: Double
    <*> arbitraryReduced n -- inlineResponse20036Servings :: InlineResponse20028Servings
    <*> arbitraryReducedMaybe n -- inlineResponse20036Price :: Maybe Double
    <*> arbitraryReducedMaybe n -- inlineResponse20036SpoonacularScore :: Maybe Double
  
instance Arbitrary InlineResponse20037 where
  arbitrary = sized genInlineResponse20037

genInlineResponse20037 :: Int -> Gen InlineResponse20037
genInlineResponse20037 n =
  InlineResponse20037
    <$> arbitraryReduced n -- inlineResponse20037Meals :: [InlineResponse2005]
    <*> arbitraryReduced n -- inlineResponse20037Nutrients :: InlineResponse20037Nutrients
  
instance Arbitrary InlineResponse20037Nutrients where
  arbitrary = sized genInlineResponse20037Nutrients

genInlineResponse20037Nutrients :: Int -> Gen InlineResponse20037Nutrients
genInlineResponse20037Nutrients n =
  InlineResponse20037Nutrients
    <$> arbitrary -- inlineResponse20037NutrientsCalories :: Double
    <*> arbitrary -- inlineResponse20037NutrientsCarbohydrates :: Double
    <*> arbitrary -- inlineResponse20037NutrientsFat :: Double
    <*> arbitrary -- inlineResponse20037NutrientsProtein :: Double
  
instance Arbitrary InlineResponse20038 where
  arbitrary = sized genInlineResponse20038

genInlineResponse20038 :: Int -> Gen InlineResponse20038
genInlineResponse20038 n =
  InlineResponse20038
    <$> arbitraryReduced n -- inlineResponse20038Days :: [InlineResponse20038Days]
  
instance Arbitrary InlineResponse20038Days where
  arbitrary = sized genInlineResponse20038Days

genInlineResponse20038Days :: Int -> Gen InlineResponse20038Days
genInlineResponse20038Days n =
  InlineResponse20038Days
    <$> arbitraryReducedMaybe n -- inlineResponse20038DaysNutritionSummary :: Maybe InlineResponse20038NutritionSummary
    <*> arbitraryReducedMaybe n -- inlineResponse20038DaysNutritionSummaryBreakfast :: Maybe InlineResponse20038NutritionSummary
    <*> arbitraryReducedMaybe n -- inlineResponse20038DaysNutritionSummaryLunch :: Maybe InlineResponse20038NutritionSummary
    <*> arbitraryReducedMaybe n -- inlineResponse20038DaysNutritionSummaryDinner :: Maybe InlineResponse20038NutritionSummary
    <*> arbitrary -- inlineResponse20038DaysDate :: Double
    <*> arbitrary -- inlineResponse20038DaysDay :: Text
    <*> arbitraryReducedMaybe n -- inlineResponse20038DaysItems :: Maybe [InlineResponse20038Items]
  
instance Arbitrary InlineResponse20038Items where
  arbitrary = sized genInlineResponse20038Items

genInlineResponse20038Items :: Int -> Gen InlineResponse20038Items
genInlineResponse20038Items n =
  InlineResponse20038Items
    <$> arbitrary -- inlineResponse20038ItemsId :: Int
    <*> arbitrary -- inlineResponse20038ItemsSlot :: Int
    <*> arbitrary -- inlineResponse20038ItemsPosition :: Int
    <*> arbitrary -- inlineResponse20038ItemsType :: Text
    <*> arbitraryReducedMaybe n -- inlineResponse20038ItemsValue :: Maybe InlineResponse20038Value
  
instance Arbitrary InlineResponse20038NutritionSummary where
  arbitrary = sized genInlineResponse20038NutritionSummary

genInlineResponse20038NutritionSummary :: Int -> Gen InlineResponse20038NutritionSummary
genInlineResponse20038NutritionSummary n =
  InlineResponse20038NutritionSummary
    <$> arbitraryReduced n -- inlineResponse20038NutritionSummaryNutrients :: [InlineResponse20038NutritionSummaryNutrients]
  
instance Arbitrary InlineResponse20038NutritionSummaryNutrients where
  arbitrary = sized genInlineResponse20038NutritionSummaryNutrients

genInlineResponse20038NutritionSummaryNutrients :: Int -> Gen InlineResponse20038NutritionSummaryNutrients
genInlineResponse20038NutritionSummaryNutrients n =
  InlineResponse20038NutritionSummaryNutrients
    <$> arbitrary -- inlineResponse20038NutritionSummaryNutrientsName :: Text
    <*> arbitrary -- inlineResponse20038NutritionSummaryNutrientsAmount :: Double
    <*> arbitrary -- inlineResponse20038NutritionSummaryNutrientsUnit :: Text
    <*> arbitrary -- inlineResponse20038NutritionSummaryNutrientsPercentDailyNeeds :: Double
  
instance Arbitrary InlineResponse20038Value where
  arbitrary = sized genInlineResponse20038Value

genInlineResponse20038Value :: Int -> Gen InlineResponse20038Value
genInlineResponse20038Value n =
  InlineResponse20038Value
    <$> arbitrary -- inlineResponse20038ValueServings :: Double
    <*> arbitrary -- inlineResponse20038ValueId :: Double
    <*> arbitrary -- inlineResponse20038ValueTitle :: Text
    <*> arbitrary -- inlineResponse20038ValueImageType :: Text
  
instance Arbitrary InlineResponse20039 where
  arbitrary = sized genInlineResponse20039

genInlineResponse20039 :: Int -> Gen InlineResponse20039
genInlineResponse20039 n =
  InlineResponse20039
    <$> arbitraryReduced n -- inlineResponse20039Templates :: [InlineResponse20013Ingredients1]
  
instance Arbitrary InlineResponse2003ExtendedIngredients where
  arbitrary = sized genInlineResponse2003ExtendedIngredients

genInlineResponse2003ExtendedIngredients :: Int -> Gen InlineResponse2003ExtendedIngredients
genInlineResponse2003ExtendedIngredients n =
  InlineResponse2003ExtendedIngredients
    <$> arbitrary -- inlineResponse2003ExtendedIngredientsAisle :: Text
    <*> arbitrary -- inlineResponse2003ExtendedIngredientsAmount :: Double
    <*> arbitrary -- inlineResponse2003ExtendedIngredientsConsitency :: Text
    <*> arbitrary -- inlineResponse2003ExtendedIngredientsId :: Int
    <*> arbitrary -- inlineResponse2003ExtendedIngredientsImage :: Text
    <*> arbitraryReducedMaybe n -- inlineResponse2003ExtendedIngredientsMeasures :: Maybe InlineResponse2003Measures
    <*> arbitraryReducedMaybe n -- inlineResponse2003ExtendedIngredientsMeta :: Maybe [Text]
    <*> arbitrary -- inlineResponse2003ExtendedIngredientsName :: Text
    <*> arbitrary -- inlineResponse2003ExtendedIngredientsOriginal :: Text
    <*> arbitrary -- inlineResponse2003ExtendedIngredientsOriginalName :: Text
    <*> arbitrary -- inlineResponse2003ExtendedIngredientsUnit :: Text
  
instance Arbitrary InlineResponse2003Measures where
  arbitrary = sized genInlineResponse2003Measures

genInlineResponse2003Measures :: Int -> Gen InlineResponse2003Measures
genInlineResponse2003Measures n =
  InlineResponse2003Measures
    <$> arbitraryReduced n -- inlineResponse2003MeasuresMetric :: InlineResponse2003MeasuresMetric
    <*> arbitraryReduced n -- inlineResponse2003MeasuresUs :: InlineResponse2003MeasuresMetric
  
instance Arbitrary InlineResponse2003MeasuresMetric where
  arbitrary = sized genInlineResponse2003MeasuresMetric

genInlineResponse2003MeasuresMetric :: Int -> Gen InlineResponse2003MeasuresMetric
genInlineResponse2003MeasuresMetric n =
  InlineResponse2003MeasuresMetric
    <$> arbitrary -- inlineResponse2003MeasuresMetricAmount :: Double
    <*> arbitrary -- inlineResponse2003MeasuresMetricUnitLong :: Text
    <*> arbitrary -- inlineResponse2003MeasuresMetricUnitShort :: Text
  
instance Arbitrary InlineResponse2003WinePairing where
  arbitrary = sized genInlineResponse2003WinePairing

genInlineResponse2003WinePairing :: Int -> Gen InlineResponse2003WinePairing
genInlineResponse2003WinePairing n =
  InlineResponse2003WinePairing
    <$> arbitrary -- inlineResponse2003WinePairingPairedWines :: [Text]
    <*> arbitrary -- inlineResponse2003WinePairingPairingText :: Text
    <*> arbitraryReduced n -- inlineResponse2003WinePairingProductMatches :: [InlineResponse2003WinePairingProductMatches]
  
instance Arbitrary InlineResponse2003WinePairingProductMatches where
  arbitrary = sized genInlineResponse2003WinePairingProductMatches

genInlineResponse2003WinePairingProductMatches :: Int -> Gen InlineResponse2003WinePairingProductMatches
genInlineResponse2003WinePairingProductMatches n =
  InlineResponse2003WinePairingProductMatches
    <$> arbitrary -- inlineResponse2003WinePairingProductMatchesId :: Int
    <*> arbitrary -- inlineResponse2003WinePairingProductMatchesTitle :: Text
    <*> arbitrary -- inlineResponse2003WinePairingProductMatchesDescription :: Text
    <*> arbitrary -- inlineResponse2003WinePairingProductMatchesPrice :: Text
    <*> arbitrary -- inlineResponse2003WinePairingProductMatchesImageUrl :: Text
    <*> arbitrary -- inlineResponse2003WinePairingProductMatchesAverageRating :: Double
    <*> arbitrary -- inlineResponse2003WinePairingProductMatchesRatingCount :: Int
    <*> arbitrary -- inlineResponse2003WinePairingProductMatchesScore :: Double
    <*> arbitrary -- inlineResponse2003WinePairingProductMatchesLink :: Text
  
instance Arbitrary InlineResponse2004 where
  arbitrary = sized genInlineResponse2004

genInlineResponse2004 :: Int -> Gen InlineResponse2004
genInlineResponse2004 n =
  InlineResponse2004
    <$> arbitrary -- inlineResponse2004Id :: Int
    <*> arbitrary -- inlineResponse2004Title :: Text
    <*> arbitrary -- inlineResponse2004Image :: Text
    <*> arbitrary -- inlineResponse2004ImageType :: Text
    <*> arbitrary -- inlineResponse2004Servings :: Double
    <*> arbitrary -- inlineResponse2004ReadyInMinutes :: Int
    <*> arbitrary -- inlineResponse2004License :: Text
    <*> arbitrary -- inlineResponse2004SourceName :: Text
    <*> arbitrary -- inlineResponse2004SourceUrl :: Text
    <*> arbitrary -- inlineResponse2004SpoonacularSourceUrl :: Text
    <*> arbitrary -- inlineResponse2004AggregateLikes :: Int
    <*> arbitrary -- inlineResponse2004HealthScore :: Double
    <*> arbitrary -- inlineResponse2004SpoonacularScore :: Double
    <*> arbitrary -- inlineResponse2004PricePerServing :: Double
    <*> arbitrary -- inlineResponse2004AnalyzedInstructions :: [Text]
    <*> arbitrary -- inlineResponse2004Cheap :: Bool
    <*> arbitrary -- inlineResponse2004CreditsText :: Text
    <*> arbitrary -- inlineResponse2004Cuisines :: [Text]
    <*> arbitrary -- inlineResponse2004DairyFree :: Bool
    <*> arbitrary -- inlineResponse2004Diets :: [Text]
    <*> arbitrary -- inlineResponse2004Gaps :: Text
    <*> arbitrary -- inlineResponse2004GlutenFree :: Bool
    <*> arbitrary -- inlineResponse2004Instructions :: Text
    <*> arbitrary -- inlineResponse2004Ketogenic :: Bool
    <*> arbitrary -- inlineResponse2004LowFodmap :: Bool
    <*> arbitrary -- inlineResponse2004Occasions :: [Text]
    <*> arbitrary -- inlineResponse2004Sustainable :: Bool
    <*> arbitrary -- inlineResponse2004Vegan :: Bool
    <*> arbitrary -- inlineResponse2004Vegetarian :: Bool
    <*> arbitrary -- inlineResponse2004VeryHealthy :: Bool
    <*> arbitrary -- inlineResponse2004VeryPopular :: Bool
    <*> arbitrary -- inlineResponse2004Whole30 :: Bool
    <*> arbitrary -- inlineResponse2004WeightWatcherSmartPoints :: Double
    <*> arbitrary -- inlineResponse2004DishTypes :: [Text]
    <*> arbitraryReduced n -- inlineResponse2004ExtendedIngredients :: [InlineResponse2003ExtendedIngredients]
    <*> arbitrary -- inlineResponse2004Summary :: Text
    <*> arbitraryReduced n -- inlineResponse2004WinePairing :: InlineResponse2003WinePairing
  
instance Arbitrary InlineResponse20040 where
  arbitrary = sized genInlineResponse20040

genInlineResponse20040 :: Int -> Gen InlineResponse20040
genInlineResponse20040 n =
  InlineResponse20040
    <$> arbitrary -- inlineResponse20040Id :: Int
    <*> arbitrary -- inlineResponse20040Name :: Text
    <*> arbitraryReduced n -- inlineResponse20040Days :: [InlineResponse20040Days]
  
instance Arbitrary InlineResponse20040Days where
  arbitrary = sized genInlineResponse20040Days

genInlineResponse20040Days :: Int -> Gen InlineResponse20040Days
genInlineResponse20040Days n =
  InlineResponse20040Days
    <$> arbitraryReducedMaybe n -- inlineResponse20040DaysNutritionSummary :: Maybe InlineResponse20038NutritionSummary
    <*> arbitraryReducedMaybe n -- inlineResponse20040DaysNutritionSummaryBreakfast :: Maybe InlineResponse20038NutritionSummary
    <*> arbitraryReducedMaybe n -- inlineResponse20040DaysNutritionSummaryLunch :: Maybe InlineResponse20038NutritionSummary
    <*> arbitraryReducedMaybe n -- inlineResponse20040DaysNutritionSummaryDinner :: Maybe InlineResponse20038NutritionSummary
    <*> arbitrary -- inlineResponse20040DaysDay :: Text
    <*> arbitraryReducedMaybe n -- inlineResponse20040DaysItems :: Maybe [InlineResponse20040Items]
  
instance Arbitrary InlineResponse20040Items where
  arbitrary = sized genInlineResponse20040Items

genInlineResponse20040Items :: Int -> Gen InlineResponse20040Items
genInlineResponse20040Items n =
  InlineResponse20040Items
    <$> arbitrary -- inlineResponse20040ItemsId :: Int
    <*> arbitrary -- inlineResponse20040ItemsSlot :: Int
    <*> arbitrary -- inlineResponse20040ItemsPosition :: Int
    <*> arbitrary -- inlineResponse20040ItemsType :: Text
    <*> arbitraryReducedMaybe n -- inlineResponse20040ItemsValue :: Maybe InlineResponse20040Value
  
instance Arbitrary InlineResponse20040Value where
  arbitrary = sized genInlineResponse20040Value

genInlineResponse20040Value :: Int -> Gen InlineResponse20040Value
genInlineResponse20040Value n =
  InlineResponse20040Value
    <$> arbitrary -- inlineResponse20040ValueId :: Double
    <*> arbitrary -- inlineResponse20040ValueTitle :: Text
    <*> arbitrary -- inlineResponse20040ValueImageType :: Text
  
instance Arbitrary InlineResponse20041 where
  arbitrary = sized genInlineResponse20041

genInlineResponse20041 :: Int -> Gen InlineResponse20041
genInlineResponse20041 n =
  InlineResponse20041
    <$> arbitraryReduced n -- inlineResponse20041Aisles :: [InlineResponse20041Aisles]
    <*> arbitrary -- inlineResponse20041Cost :: Double
    <*> arbitrary -- inlineResponse20041StartDate :: Double
    <*> arbitrary -- inlineResponse20041EndDate :: Double
  
instance Arbitrary InlineResponse20041Aisles where
  arbitrary = sized genInlineResponse20041Aisles

genInlineResponse20041Aisles :: Int -> Gen InlineResponse20041Aisles
genInlineResponse20041Aisles n =
  InlineResponse20041Aisles
    <$> arbitrary -- inlineResponse20041AislesAisle :: Text
    <*> arbitraryReducedMaybe n -- inlineResponse20041AislesItems :: Maybe [InlineResponse20041Items]
  
instance Arbitrary InlineResponse20041Items where
  arbitrary = sized genInlineResponse20041Items

genInlineResponse20041Items :: Int -> Gen InlineResponse20041Items
genInlineResponse20041Items n =
  InlineResponse20041Items
    <$> arbitrary -- inlineResponse20041ItemsId :: Int
    <*> arbitrary -- inlineResponse20041ItemsName :: Text
    <*> arbitraryReducedMaybe n -- inlineResponse20041ItemsMeasures :: Maybe InlineResponse20041Measures
    <*> arbitrary -- inlineResponse20041ItemsPantryItem :: Bool
    <*> arbitrary -- inlineResponse20041ItemsAisle :: Text
    <*> arbitrary -- inlineResponse20041ItemsCost :: Double
    <*> arbitrary -- inlineResponse20041ItemsIngredientId :: Int
  
instance Arbitrary InlineResponse20041Measures where
  arbitrary = sized genInlineResponse20041Measures

genInlineResponse20041Measures :: Int -> Gen InlineResponse20041Measures
genInlineResponse20041Measures n =
  InlineResponse20041Measures
    <$> arbitraryReduced n -- inlineResponse20041MeasuresOriginal :: RecipesParseIngredientsNutritionWeightPerServing
    <*> arbitraryReduced n -- inlineResponse20041MeasuresMetric :: RecipesParseIngredientsNutritionWeightPerServing
    <*> arbitraryReduced n -- inlineResponse20041MeasuresUs :: RecipesParseIngredientsNutritionWeightPerServing
  
instance Arbitrary InlineResponse20042 where
  arbitrary = sized genInlineResponse20042

genInlineResponse20042 :: Int -> Gen InlineResponse20042
genInlineResponse20042 n =
  InlineResponse20042
    <$> arbitrary -- inlineResponse20042Username :: Text
    <*> arbitrary -- inlineResponse20042Hash :: Text
  
instance Arbitrary InlineResponse20043 where
  arbitrary = sized genInlineResponse20043

genInlineResponse20043 :: Int -> Gen InlineResponse20043
genInlineResponse20043 n =
  InlineResponse20043
    <$> arbitrary -- inlineResponse20043Pairings :: [Text]
    <*> arbitrary -- inlineResponse20043Text :: Text
  
instance Arbitrary InlineResponse20044 where
  arbitrary = sized genInlineResponse20044

genInlineResponse20044 :: Int -> Gen InlineResponse20044
genInlineResponse20044 n =
  InlineResponse20044
    <$> arbitrary -- inlineResponse20044PairedWines :: [Text]
    <*> arbitrary -- inlineResponse20044PairingText :: Text
    <*> arbitraryReduced n -- inlineResponse20044ProductMatches :: [InlineResponse20044ProductMatches]
  
instance Arbitrary InlineResponse20044ProductMatches where
  arbitrary = sized genInlineResponse20044ProductMatches

genInlineResponse20044ProductMatches :: Int -> Gen InlineResponse20044ProductMatches
genInlineResponse20044ProductMatches n =
  InlineResponse20044ProductMatches
    <$> arbitrary -- inlineResponse20044ProductMatchesId :: Int
    <*> arbitrary -- inlineResponse20044ProductMatchesTitle :: Text
    <*> arbitrary -- inlineResponse20044ProductMatchesAverageRating :: Double
    <*> arbitraryReducedMaybeValue n -- inlineResponse20044ProductMatchesDescription :: Maybe A.Value
    <*> arbitrary -- inlineResponse20044ProductMatchesImageUrl :: Text
    <*> arbitrary -- inlineResponse20044ProductMatchesLink :: Text
    <*> arbitrary -- inlineResponse20044ProductMatchesPrice :: Text
    <*> arbitrary -- inlineResponse20044ProductMatchesRatingCount :: Int
    <*> arbitrary -- inlineResponse20044ProductMatchesScore :: Double
  
instance Arbitrary InlineResponse20045 where
  arbitrary = sized genInlineResponse20045

genInlineResponse20045 :: Int -> Gen InlineResponse20045
genInlineResponse20045 n =
  InlineResponse20045
    <$> arbitrary -- inlineResponse20045WineDescription :: Text
  
instance Arbitrary InlineResponse20046 where
  arbitrary = sized genInlineResponse20046

genInlineResponse20046 :: Int -> Gen InlineResponse20046
genInlineResponse20046 n =
  InlineResponse20046
    <$> arbitraryReduced n -- inlineResponse20046RecommendedWines :: [InlineResponse20046RecommendedWines]
    <*> arbitrary -- inlineResponse20046TotalFound :: Int
  
instance Arbitrary InlineResponse20046RecommendedWines where
  arbitrary = sized genInlineResponse20046RecommendedWines

genInlineResponse20046RecommendedWines :: Int -> Gen InlineResponse20046RecommendedWines
genInlineResponse20046RecommendedWines n =
  InlineResponse20046RecommendedWines
    <$> arbitrary -- inlineResponse20046RecommendedWinesId :: Int
    <*> arbitrary -- inlineResponse20046RecommendedWinesTitle :: Text
    <*> arbitrary -- inlineResponse20046RecommendedWinesAverageRating :: Double
    <*> arbitrary -- inlineResponse20046RecommendedWinesDescription :: Text
    <*> arbitrary -- inlineResponse20046RecommendedWinesImageUrl :: Text
    <*> arbitrary -- inlineResponse20046RecommendedWinesLink :: Text
    <*> arbitrary -- inlineResponse20046RecommendedWinesPrice :: Text
    <*> arbitrary -- inlineResponse20046RecommendedWinesRatingCount :: Int
    <*> arbitrary -- inlineResponse20046RecommendedWinesScore :: Double
  
instance Arbitrary InlineResponse20047 where
  arbitrary = sized genInlineResponse20047

genInlineResponse20047 :: Int -> Gen InlineResponse20047
genInlineResponse20047 n =
  InlineResponse20047
    <$> arbitrary -- inlineResponse20047Category :: Text
    <*> arbitrary -- inlineResponse20047Probability :: Double
  
instance Arbitrary InlineResponse20048 where
  arbitrary = sized genInlineResponse20048

genInlineResponse20048 :: Int -> Gen InlineResponse20048
genInlineResponse20048 n =
  InlineResponse20048
    <$> arbitraryReduced n -- inlineResponse20048Nutrition :: InlineResponse20048Nutrition
    <*> arbitraryReduced n -- inlineResponse20048Category :: InlineResponse20048Category
    <*> arbitraryReduced n -- inlineResponse20048Recipes :: [InlineResponse20048Recipes]
  
instance Arbitrary InlineResponse20048Category where
  arbitrary = sized genInlineResponse20048Category

genInlineResponse20048Category :: Int -> Gen InlineResponse20048Category
genInlineResponse20048Category n =
  InlineResponse20048Category
    <$> arbitrary -- inlineResponse20048CategoryName :: Text
    <*> arbitrary -- inlineResponse20048CategoryProbability :: Double
  
instance Arbitrary InlineResponse20048Nutrition where
  arbitrary = sized genInlineResponse20048Nutrition

genInlineResponse20048Nutrition :: Int -> Gen InlineResponse20048Nutrition
genInlineResponse20048Nutrition n =
  InlineResponse20048Nutrition
    <$> arbitrary -- inlineResponse20048NutritionRecipesUsed :: Int
    <*> arbitraryReduced n -- inlineResponse20048NutritionCalories :: InlineResponse20048NutritionCalories
    <*> arbitraryReduced n -- inlineResponse20048NutritionFat :: InlineResponse20048NutritionCalories
    <*> arbitraryReduced n -- inlineResponse20048NutritionProtein :: InlineResponse20048NutritionCalories
    <*> arbitraryReduced n -- inlineResponse20048NutritionCarbs :: InlineResponse20048NutritionCalories
  
instance Arbitrary InlineResponse20048NutritionCalories where
  arbitrary = sized genInlineResponse20048NutritionCalories

genInlineResponse20048NutritionCalories :: Int -> Gen InlineResponse20048NutritionCalories
genInlineResponse20048NutritionCalories n =
  InlineResponse20048NutritionCalories
    <$> arbitrary -- inlineResponse20048NutritionCaloriesValue :: Double
    <*> arbitrary -- inlineResponse20048NutritionCaloriesUnit :: Text
    <*> arbitraryReduced n -- inlineResponse20048NutritionCaloriesConfidenceRange95Percent :: InlineResponse20048NutritionCaloriesConfidenceRange95Percent
    <*> arbitrary -- inlineResponse20048NutritionCaloriesStandardDeviation :: Double
  
instance Arbitrary InlineResponse20048NutritionCaloriesConfidenceRange95Percent where
  arbitrary = sized genInlineResponse20048NutritionCaloriesConfidenceRange95Percent

genInlineResponse20048NutritionCaloriesConfidenceRange95Percent :: Int -> Gen InlineResponse20048NutritionCaloriesConfidenceRange95Percent
genInlineResponse20048NutritionCaloriesConfidenceRange95Percent n =
  InlineResponse20048NutritionCaloriesConfidenceRange95Percent
    <$> arbitrary -- inlineResponse20048NutritionCaloriesConfidenceRange95PercentMin :: Double
    <*> arbitrary -- inlineResponse20048NutritionCaloriesConfidenceRange95PercentMax :: Double
  
instance Arbitrary InlineResponse20048Recipes where
  arbitrary = sized genInlineResponse20048Recipes

genInlineResponse20048Recipes :: Int -> Gen InlineResponse20048Recipes
genInlineResponse20048Recipes n =
  InlineResponse20048Recipes
    <$> arbitrary -- inlineResponse20048RecipesId :: Int
    <*> arbitrary -- inlineResponse20048RecipesTitle :: Text
    <*> arbitrary -- inlineResponse20048RecipesImageType :: Text
    <*> arbitrary -- inlineResponse20048RecipesUrl :: Text
  
instance Arbitrary InlineResponse20049 where
  arbitrary = sized genInlineResponse20049

genInlineResponse20049 :: Int -> Gen InlineResponse20049
genInlineResponse20049 n =
  InlineResponse20049
    <$> arbitrary -- inlineResponse20049Answer :: Text
    <*> arbitrary -- inlineResponse20049Image :: Text
  
instance Arbitrary InlineResponse2005 where
  arbitrary = sized genInlineResponse2005

genInlineResponse2005 :: Int -> Gen InlineResponse2005
genInlineResponse2005 n =
  InlineResponse2005
    <$> arbitrary -- inlineResponse2005Id :: Int
    <*> arbitrary -- inlineResponse2005Title :: Text
    <*> arbitrary -- inlineResponse2005ImageType :: Text
    <*> arbitrary -- inlineResponse2005ReadyInMinutes :: Int
    <*> arbitrary -- inlineResponse2005Servings :: Double
    <*> arbitrary -- inlineResponse2005SourceUrl :: Text
  
instance Arbitrary InlineResponse20050 where
  arbitrary = sized genInlineResponse20050

genInlineResponse20050 :: Int -> Gen InlineResponse20050
genInlineResponse20050 n =
  InlineResponse20050
    <$> arbitraryReduced n -- inlineResponse20050Annotations :: [A.Value]
  
instance Arbitrary InlineResponse20051 where
  arbitrary = sized genInlineResponse20051

genInlineResponse20051 :: Int -> Gen InlineResponse20051
genInlineResponse20051 n =
  InlineResponse20051
    <$> arbitraryReduced n -- inlineResponse20051Articles :: [A.Value]
    <*> arbitraryReduced n -- inlineResponse20051GroceryProducts :: [A.Value]
    <*> arbitraryReduced n -- inlineResponse20051MenuItems :: [A.Value]
    <*> arbitraryReduced n -- inlineResponse20051Recipes :: [A.Value]
  
instance Arbitrary InlineResponse20052 where
  arbitrary = sized genInlineResponse20052

genInlineResponse20052 :: Int -> Gen InlineResponse20052
genInlineResponse20052 n =
  InlineResponse20052
    <$> arbitrary -- inlineResponse20052Query :: Text
    <*> arbitrary -- inlineResponse20052TotalResults :: Int
    <*> arbitrary -- inlineResponse20052Limit :: Int
    <*> arbitrary -- inlineResponse20052Offset :: Int
    <*> arbitraryReduced n -- inlineResponse20052SearchResults :: [InlineResponse20052SearchResults]
  
instance Arbitrary InlineResponse20052Results where
  arbitrary = sized genInlineResponse20052Results

genInlineResponse20052Results :: Int -> Gen InlineResponse20052Results
genInlineResponse20052Results n =
  InlineResponse20052Results
    <$> arbitrary -- inlineResponse20052ResultsId :: Text
    <*> arbitrary -- inlineResponse20052ResultsName :: Text
    <*> arbitrary -- inlineResponse20052ResultsImage :: Text
    <*> arbitrary -- inlineResponse20052ResultsLink :: Text
    <*> arbitrary -- inlineResponse20052ResultsType :: Text
    <*> arbitrary -- inlineResponse20052ResultsRelevance :: Double
    <*> arbitrary -- inlineResponse20052ResultsContent :: Text
  
instance Arbitrary InlineResponse20052SearchResults where
  arbitrary = sized genInlineResponse20052SearchResults

genInlineResponse20052SearchResults :: Int -> Gen InlineResponse20052SearchResults
genInlineResponse20052SearchResults n =
  InlineResponse20052SearchResults
    <$> arbitrary -- inlineResponse20052SearchResultsName :: Text
    <*> arbitrary -- inlineResponse20052SearchResultsTotalResults :: Int
    <*> arbitraryReducedMaybe n -- inlineResponse20052SearchResultsResults :: Maybe [InlineResponse20052Results]
  
instance Arbitrary InlineResponse20053 where
  arbitrary = sized genInlineResponse20053

genInlineResponse20053 :: Int -> Gen InlineResponse20053
genInlineResponse20053 n =
  InlineResponse20053
    <$> arbitraryReduced n -- inlineResponse20053Videos :: [InlineResponse20053Videos]
    <*> arbitrary -- inlineResponse20053TotalResults :: Int
  
instance Arbitrary InlineResponse20053Videos where
  arbitrary = sized genInlineResponse20053Videos

genInlineResponse20053Videos :: Int -> Gen InlineResponse20053Videos
genInlineResponse20053Videos n =
  InlineResponse20053Videos
    <$> arbitrary -- inlineResponse20053VideosTitle :: Text
    <*> arbitrary -- inlineResponse20053VideosLength :: Int
    <*> arbitrary -- inlineResponse20053VideosRating :: Double
    <*> arbitrary -- inlineResponse20053VideosShortTitle :: Text
    <*> arbitrary -- inlineResponse20053VideosThumbnail :: Text
    <*> arbitrary -- inlineResponse20053VideosViews :: Int
    <*> arbitrary -- inlineResponse20053VideosYouTubeId :: Text
  
instance Arbitrary InlineResponse20054 where
  arbitrary = sized genInlineResponse20054

genInlineResponse20054 :: Int -> Gen InlineResponse20054
genInlineResponse20054 n =
  InlineResponse20054
    <$> arbitrary -- inlineResponse20054Text :: Text
  
instance Arbitrary InlineResponse20055 where
  arbitrary = sized genInlineResponse20055

genInlineResponse20055 :: Int -> Gen InlineResponse20055
genInlineResponse20055 n =
  InlineResponse20055
    <$> arbitrary -- inlineResponse20055AnswerText :: Text
    <*> arbitraryReduced n -- inlineResponse20055Media :: [A.Value]
  
instance Arbitrary InlineResponse20056 where
  arbitrary = sized genInlineResponse20056

genInlineResponse20056 :: Int -> Gen InlineResponse20056
genInlineResponse20056 n =
  InlineResponse20056
    <$> arbitraryReduced n -- inlineResponse20056Suggests :: InlineResponse20056Suggests
    <*> arbitraryReduced n -- inlineResponse20056Words :: [A.Value]
  
instance Arbitrary InlineResponse20056Suggests where
  arbitrary = sized genInlineResponse20056Suggests

genInlineResponse20056Suggests :: Int -> Gen InlineResponse20056Suggests
genInlineResponse20056Suggests n =
  InlineResponse20056Suggests
    <$> arbitraryReduced n -- inlineResponse20056Suggests :: [A.Value]
  
instance Arbitrary InlineResponse2006 where
  arbitrary = sized genInlineResponse2006

genInlineResponse2006 :: Int -> Gen InlineResponse2006
genInlineResponse2006 n =
  InlineResponse2006
    <$> arbitraryReduced n -- inlineResponse2006Recipes :: [InlineResponse2006Recipes]
  
instance Arbitrary InlineResponse2006Recipes where
  arbitrary = sized genInlineResponse2006Recipes

genInlineResponse2006Recipes :: Int -> Gen InlineResponse2006Recipes
genInlineResponse2006Recipes n =
  InlineResponse2006Recipes
    <$> arbitrary -- inlineResponse2006RecipesId :: Int
    <*> arbitrary -- inlineResponse2006RecipesTitle :: Text
    <*> arbitrary -- inlineResponse2006RecipesImage :: Text
    <*> arbitrary -- inlineResponse2006RecipesImageType :: Text
    <*> arbitrary -- inlineResponse2006RecipesServings :: Double
    <*> arbitrary -- inlineResponse2006RecipesReadyInMinutes :: Int
    <*> arbitrary -- inlineResponse2006RecipesLicense :: Text
    <*> arbitrary -- inlineResponse2006RecipesSourceName :: Text
    <*> arbitrary -- inlineResponse2006RecipesSourceUrl :: Text
    <*> arbitrary -- inlineResponse2006RecipesSpoonacularSourceUrl :: Text
    <*> arbitrary -- inlineResponse2006RecipesAggregateLikes :: Double
    <*> arbitrary -- inlineResponse2006RecipesHealthScore :: Double
    <*> arbitrary -- inlineResponse2006RecipesSpoonacularScore :: Double
    <*> arbitrary -- inlineResponse2006RecipesPricePerServing :: Double
    <*> arbitraryReducedMaybe n -- inlineResponse2006RecipesAnalyzedInstructions :: Maybe [A.Value]
    <*> arbitrary -- inlineResponse2006RecipesCheap :: Bool
    <*> arbitrary -- inlineResponse2006RecipesCreditsText :: Text
    <*> arbitraryReducedMaybe n -- inlineResponse2006RecipesCuisines :: Maybe [Text]
    <*> arbitrary -- inlineResponse2006RecipesDairyFree :: Bool
    <*> arbitraryReducedMaybe n -- inlineResponse2006RecipesDiets :: Maybe [Text]
    <*> arbitrary -- inlineResponse2006RecipesGaps :: Text
    <*> arbitrary -- inlineResponse2006RecipesGlutenFree :: Bool
    <*> arbitrary -- inlineResponse2006RecipesInstructions :: Text
    <*> arbitrary -- inlineResponse2006RecipesKetogenic :: Bool
    <*> arbitrary -- inlineResponse2006RecipesLowFodmap :: Bool
    <*> arbitraryReducedMaybe n -- inlineResponse2006RecipesOccasions :: Maybe [Text]
    <*> arbitrary -- inlineResponse2006RecipesSustainable :: Bool
    <*> arbitrary -- inlineResponse2006RecipesVegan :: Bool
    <*> arbitrary -- inlineResponse2006RecipesVegetarian :: Bool
    <*> arbitrary -- inlineResponse2006RecipesVeryHealthy :: Bool
    <*> arbitrary -- inlineResponse2006RecipesVeryPopular :: Bool
    <*> arbitrary -- inlineResponse2006RecipesWhole30 :: Bool
    <*> arbitrary -- inlineResponse2006RecipesWeightWatcherSmartPoints :: Double
    <*> arbitraryReducedMaybe n -- inlineResponse2006RecipesDishTypes :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- inlineResponse2006RecipesExtendedIngredients :: Maybe [InlineResponse2003ExtendedIngredients]
    <*> arbitrary -- inlineResponse2006RecipesSummary :: Text
    <*> arbitraryReducedMaybe n -- inlineResponse2006RecipesWinePairing :: Maybe InlineResponse2003WinePairing
  
instance Arbitrary InlineResponse2007 where
  arbitrary = sized genInlineResponse2007

genInlineResponse2007 :: Int -> Gen InlineResponse2007
genInlineResponse2007 n =
  InlineResponse2007
    <$> arbitrary -- inlineResponse2007Id :: Int
    <*> arbitrary -- inlineResponse2007Title :: Text
    <*> arbitrary -- inlineResponse2007ImageType :: Text
  
instance Arbitrary InlineResponse2008 where
  arbitrary = sized genInlineResponse2008

genInlineResponse2008 :: Int -> Gen InlineResponse2008
genInlineResponse2008 n =
  InlineResponse2008
    <$> arbitrary -- inlineResponse2008Sweetness :: Double
    <*> arbitrary -- inlineResponse2008Saltiness :: Double
    <*> arbitrary -- inlineResponse2008Sourness :: Double
    <*> arbitrary -- inlineResponse2008Bitterness :: Double
    <*> arbitrary -- inlineResponse2008Savoriness :: Double
    <*> arbitrary -- inlineResponse2008Fattiness :: Double
    <*> arbitrary -- inlineResponse2008Spiciness :: Double
  
instance Arbitrary InlineResponse2009 where
  arbitrary = sized genInlineResponse2009

genInlineResponse2009 :: Int -> Gen InlineResponse2009
genInlineResponse2009 n =
  InlineResponse2009
    <$> arbitraryReduced n -- inlineResponse2009Equipment :: [A.Value]
  
instance Arbitrary InlineResponse200Results where
  arbitrary = sized genInlineResponse200Results

genInlineResponse200Results :: Int -> Gen InlineResponse200Results
genInlineResponse200Results n =
  InlineResponse200Results
    <$> arbitrary -- inlineResponse200ResultsId :: Int
    <*> arbitrary -- inlineResponse200ResultsTitle :: Text
    <*> arbitrary -- inlineResponse200ResultsCalories :: Double
    <*> arbitrary -- inlineResponse200ResultsCarbs :: Text
    <*> arbitrary -- inlineResponse200ResultsFat :: Text
    <*> arbitrary -- inlineResponse200ResultsImage :: Text
    <*> arbitrary -- inlineResponse200ResultsImageType :: Text
    <*> arbitrary -- inlineResponse200ResultsProtein :: Text
  
instance Arbitrary RecipesFindByIngredientsMissedIngredients where
  arbitrary = sized genRecipesFindByIngredientsMissedIngredients

genRecipesFindByIngredientsMissedIngredients :: Int -> Gen RecipesFindByIngredientsMissedIngredients
genRecipesFindByIngredientsMissedIngredients n =
  RecipesFindByIngredientsMissedIngredients
    <$> arbitrary -- recipesFindByIngredientsMissedIngredientsAisle :: Text
    <*> arbitrary -- recipesFindByIngredientsMissedIngredientsAmount :: Double
    <*> arbitrary -- recipesFindByIngredientsMissedIngredientsId :: Int
    <*> arbitrary -- recipesFindByIngredientsMissedIngredientsImage :: Text
    <*> arbitraryReducedMaybe n -- recipesFindByIngredientsMissedIngredientsMeta :: Maybe [Text]
    <*> arbitrary -- recipesFindByIngredientsMissedIngredientsName :: Text
    <*> arbitrary -- recipesFindByIngredientsMissedIngredientsOriginal :: Text
    <*> arbitrary -- recipesFindByIngredientsMissedIngredientsOriginalName :: Text
    <*> arbitrary -- recipesFindByIngredientsMissedIngredientsUnit :: Text
    <*> arbitrary -- recipesFindByIngredientsMissedIngredientsUnitLong :: Text
    <*> arbitrary -- recipesFindByIngredientsMissedIngredientsUnitShort :: Text
  
instance Arbitrary RecipesParseIngredientsEstimatedCost where
  arbitrary = sized genRecipesParseIngredientsEstimatedCost

genRecipesParseIngredientsEstimatedCost :: Int -> Gen RecipesParseIngredientsEstimatedCost
genRecipesParseIngredientsEstimatedCost n =
  RecipesParseIngredientsEstimatedCost
    <$> arbitrary -- recipesParseIngredientsEstimatedCostValue :: Double
    <*> arbitrary -- recipesParseIngredientsEstimatedCostUnit :: Text
  
instance Arbitrary RecipesParseIngredientsNutrition where
  arbitrary = sized genRecipesParseIngredientsNutrition

genRecipesParseIngredientsNutrition :: Int -> Gen RecipesParseIngredientsNutrition
genRecipesParseIngredientsNutrition n =
  RecipesParseIngredientsNutrition
    <$> arbitraryReduced n -- recipesParseIngredientsNutritionNutrients :: [RecipesParseIngredientsNutritionNutrients]
    <*> arbitraryReduced n -- recipesParseIngredientsNutritionProperties :: [RecipesParseIngredientsNutritionProperties]
    <*> arbitraryReduced n -- recipesParseIngredientsNutritionFlavonoids :: [RecipesParseIngredientsNutritionProperties]
    <*> arbitraryReduced n -- recipesParseIngredientsNutritionCaloricBreakdown :: RecipesParseIngredientsNutritionCaloricBreakdown
    <*> arbitraryReduced n -- recipesParseIngredientsNutritionWeightPerServing :: RecipesParseIngredientsNutritionWeightPerServing
  
instance Arbitrary RecipesParseIngredientsNutritionCaloricBreakdown where
  arbitrary = sized genRecipesParseIngredientsNutritionCaloricBreakdown

genRecipesParseIngredientsNutritionCaloricBreakdown :: Int -> Gen RecipesParseIngredientsNutritionCaloricBreakdown
genRecipesParseIngredientsNutritionCaloricBreakdown n =
  RecipesParseIngredientsNutritionCaloricBreakdown
    <$> arbitrary -- recipesParseIngredientsNutritionCaloricBreakdownPercentProtein :: Double
    <*> arbitrary -- recipesParseIngredientsNutritionCaloricBreakdownPercentFat :: Double
    <*> arbitrary -- recipesParseIngredientsNutritionCaloricBreakdownPercentCarbs :: Double
  
instance Arbitrary RecipesParseIngredientsNutritionNutrients where
  arbitrary = sized genRecipesParseIngredientsNutritionNutrients

genRecipesParseIngredientsNutritionNutrients :: Int -> Gen RecipesParseIngredientsNutritionNutrients
genRecipesParseIngredientsNutritionNutrients n =
  RecipesParseIngredientsNutritionNutrients
    <$> arbitrary -- recipesParseIngredientsNutritionNutrientsName :: Text
    <*> arbitrary -- recipesParseIngredientsNutritionNutrientsAmount :: Double
    <*> arbitrary -- recipesParseIngredientsNutritionNutrientsUnit :: Text
    <*> arbitrary -- recipesParseIngredientsNutritionNutrientsPercentOfDailyNeeds :: Double
  
instance Arbitrary RecipesParseIngredientsNutritionProperties where
  arbitrary = sized genRecipesParseIngredientsNutritionProperties

genRecipesParseIngredientsNutritionProperties :: Int -> Gen RecipesParseIngredientsNutritionProperties
genRecipesParseIngredientsNutritionProperties n =
  RecipesParseIngredientsNutritionProperties
    <$> arbitrary -- recipesParseIngredientsNutritionPropertiesName :: Text
    <*> arbitrary -- recipesParseIngredientsNutritionPropertiesAmount :: Double
    <*> arbitrary -- recipesParseIngredientsNutritionPropertiesUnit :: Text
  
instance Arbitrary RecipesParseIngredientsNutritionWeightPerServing where
  arbitrary = sized genRecipesParseIngredientsNutritionWeightPerServing

genRecipesParseIngredientsNutritionWeightPerServing :: Int -> Gen RecipesParseIngredientsNutritionWeightPerServing
genRecipesParseIngredientsNutritionWeightPerServing n =
  RecipesParseIngredientsNutritionWeightPerServing
    <$> arbitrary -- recipesParseIngredientsNutritionWeightPerServingAmount :: Double
    <*> arbitrary -- recipesParseIngredientsNutritionWeightPerServingUnit :: Text
  



instance Arbitrary E'Accept where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'ContentType where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Language where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Locale where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Measure where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Normalize where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Normalize2 where
  arbitrary = arbitraryBoundedEnum


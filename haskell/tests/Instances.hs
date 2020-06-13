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
 
instance Arbitrary InlineObject where
  arbitrary = sized genInlineObject

genInlineObject :: Int -> Gen InlineObject
genInlineObject n =
  InlineObject
    <$> arbitrary -- inlineObjectIngredientList :: Text
    <*> arbitrary -- inlineObjectServings :: Double
    <*> arbitraryReducedMaybe n -- inlineObjectDefaultCss :: Maybe Bool
    <*> arbitraryReducedMaybe n -- inlineObjectShowBacklink :: Maybe Bool
  
instance Arbitrary InlineObject1 where
  arbitrary = sized genInlineObject1

genInlineObject1 :: Int -> Gen InlineObject1
genInlineObject1 n =
  InlineObject1
    <$> arbitrary -- inlineObject1IngredientList :: Text
    <*> arbitrary -- inlineObject1Servings :: Double
    <*> arbitraryReducedMaybe n -- inlineObject1Mode :: Maybe Double
    <*> arbitraryReducedMaybe n -- inlineObject1DefaultCss :: Maybe Bool
    <*> arbitraryReducedMaybe n -- inlineObject1ShowBacklink :: Maybe Bool
  
instance Arbitrary InlineObject10 where
  arbitrary = sized genInlineObject10

genInlineObject10 :: Int -> Gen InlineObject10
genInlineObject10 n =
  InlineObject10
    <$> arbitrary -- inlineObject10Username :: Text
    <*> arbitrary -- inlineObject10Id :: Double
    <*> arbitrary -- inlineObject10Hash :: Text
  
instance Arbitrary InlineObject11 where
  arbitrary = sized genInlineObject11

genInlineObject11 :: Int -> Gen InlineObject11
genInlineObject11 n =
  InlineObject11
    <$> arbitrary -- inlineObject11Username :: Text
    <*> arbitrary -- inlineObject11StartDate :: Text
    <*> arbitrary -- inlineObject11EndDate :: Text
    <*> arbitrary -- inlineObject11Hash :: Text
  
instance Arbitrary InlineObject12 where
  arbitrary = sized genInlineObject12

genInlineObject12 :: Int -> Gen InlineObject12
genInlineObject12 n =
  InlineObject12
    <$> arbitrary -- inlineObject12Username :: Text
    <*> arbitrary -- inlineObject12Hash :: Text
  
instance Arbitrary InlineObject13 where
  arbitrary = sized genInlineObject13

genInlineObject13 :: Int -> Gen InlineObject13
genInlineObject13 n =
  InlineObject13
    <$> arbitrary -- inlineObject13Username :: Text
    <*> arbitrary -- inlineObject13Id :: Double
    <*> arbitrary -- inlineObject13Hash :: Text
  
instance Arbitrary InlineObject14 where
  arbitrary = sized genInlineObject14

genInlineObject14 :: Int -> Gen InlineObject14
genInlineObject14 n =
  InlineObject14
    <$> arbitrary -- inlineObject14Text :: Text
  
instance Arbitrary InlineObject2 where
  arbitrary = sized genInlineObject2

genInlineObject2 :: Int -> Gen InlineObject2
genInlineObject2 n =
  InlineObject2
    <$> arbitrary -- inlineObject2IngredientList :: Text
    <*> arbitrary -- inlineObject2Servings :: Double
    <*> arbitraryReducedMaybe n -- inlineObject2View :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineObject2DefaultCss :: Maybe Bool
    <*> arbitraryReducedMaybe n -- inlineObject2ShowBacklink :: Maybe Bool
  
instance Arbitrary InlineObject3 where
  arbitrary = sized genInlineObject3

genInlineObject3 :: Int -> Gen InlineObject3
genInlineObject3 n =
  InlineObject3
    <$> arbitrary -- inlineObject3Title :: Text
    <*> arbitrary -- inlineObject3Image :: FilePath
    <*> arbitrary -- inlineObject3Ingredients :: Text
    <*> arbitrary -- inlineObject3Instructions :: Text
    <*> arbitrary -- inlineObject3ReadyInMinutes :: Double
    <*> arbitrary -- inlineObject3Servings :: Double
    <*> arbitrary -- inlineObject3Mask :: Text
    <*> arbitrary -- inlineObject3BackgroundImage :: Text
    <*> arbitraryReducedMaybe n -- inlineObject3Author :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineObject3BackgroundColor :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineObject3FontColor :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineObject3Source :: Maybe Text
  
instance Arbitrary InlineObject4 where
  arbitrary = sized genInlineObject4

genInlineObject4 :: Int -> Gen InlineObject4
genInlineObject4 n =
  InlineObject4
    <$> arbitrary -- inlineObject4Instructions :: Text
  
instance Arbitrary InlineObject5 where
  arbitrary = sized genInlineObject5

genInlineObject5 :: Int -> Gen InlineObject5
genInlineObject5 n =
  InlineObject5
    <$> arbitrary -- inlineObject5Title :: Text
    <*> arbitrary -- inlineObject5IngredientList :: Text
  
instance Arbitrary InlineObject6 where
  arbitrary = sized genInlineObject6

genInlineObject6 :: Int -> Gen InlineObject6
genInlineObject6 n =
  InlineObject6
    <$> arbitrary -- inlineObject6IngredientList :: Text
    <*> arbitrary -- inlineObject6Servings :: Double
    <*> arbitraryReducedMaybe n -- inlineObject6IncludeNutrition :: Maybe Bool
  
instance Arbitrary InlineObject7 where
  arbitrary = sized genInlineObject7

genInlineObject7 :: Int -> Gen InlineObject7
genInlineObject7 n =
  InlineObject7
    <$> arbitrary -- inlineObject7IngredientList :: Text
    <*> arbitrary -- inlineObject7Servings :: Double
    <*> arbitraryReducedMaybe n -- inlineObject7Measure :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineObject7View :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineObject7DefaultCss :: Maybe Bool
    <*> arbitraryReducedMaybe n -- inlineObject7ShowBacklink :: Maybe Bool
  
instance Arbitrary InlineObject8 where
  arbitrary = sized genInlineObject8

genInlineObject8 :: Int -> Gen InlineObject8
genInlineObject8 n =
  InlineObject8
    <$> arbitraryReducedMaybe n -- inlineObject8Locale :: Maybe Text
  
instance Arbitrary InlineObject9 where
  arbitrary = sized genInlineObject9

genInlineObject9 :: Int -> Gen InlineObject9
genInlineObject9 n =
  InlineObject9
    <$> arbitrary -- inlineObject9Username :: Text
    <*> arbitrary -- inlineObject9Hash :: Text
  




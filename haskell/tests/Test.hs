{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import Spoonacular.Model
import Spoonacular.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject1)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject10)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject11)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject12)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject13)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject14)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject15)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject16)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject2)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject3)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject4)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject5)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject6)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject7)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject8)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject9)
      

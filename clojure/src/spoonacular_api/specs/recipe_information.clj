(ns spoonacular-api.specs.recipe-information
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.recipe-information-extended-ingredients-inner :refer :all]
            [spoonacular-api.specs.recipe-information-wine-pairing :refer :all]
            [spoonacular-api.specs.taste-information :refer :all]
            )
  (:import (java.io File)))


(def recipe-information-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :image) string?
   (ds/opt :imageType) string?
   (ds/req :servings) float?
   (ds/req :readyInMinutes) int?
   (ds/opt :preparationMinutes) int?
   (ds/opt :cookingMinutes) int?
   (ds/opt :license) string?
   (ds/req :sourceName) string?
   (ds/req :sourceUrl) string?
   (ds/req :spoonacularSourceUrl) string?
   (ds/req :aggregateLikes) int?
   (ds/req :healthScore) float?
   (ds/req :spoonacularScore) float?
   (ds/req :pricePerServing) float?
   (ds/req :analyzedInstructions) (s/coll-of any?)
   (ds/req :cheap) boolean?
   (ds/req :creditsText) string?
   (ds/req :cuisines) (s/coll-of string?)
   (ds/req :dairyFree) boolean?
   (ds/req :diets) (s/coll-of string?)
   (ds/req :gaps) string?
   (ds/req :glutenFree) boolean?
   (ds/req :instructions) string?
   (ds/req :lowFodmap) boolean?
   (ds/req :occasions) (s/coll-of string?)
   (ds/req :sustainable) boolean?
   (ds/req :vegan) boolean?
   (ds/req :vegetarian) boolean?
   (ds/req :veryHealthy) boolean?
   (ds/req :veryPopular) boolean?
   (ds/req :weightWatcherSmartPoints) float?
   (ds/req :dishTypes) (s/coll-of string?)
   (ds/req :extendedIngredients) (s/coll-of recipe-information-extended-ingredients-inner-spec)
   (ds/req :summary) string?
   (ds/opt :winePairing) recipe-information-wine-pairing-spec
   (ds/opt :taste) taste-information-spec
   })

(def recipe-information-spec
  (ds/spec
    {:name ::recipe-information
     :spec recipe-information-data}))

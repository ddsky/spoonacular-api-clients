(ns spoonacular-api.specs.search-recipes-by-ingredients-200-response-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-recipes-by-ingredients-200-response-inner-missed-ingredients-inner :refer :all]
            [spoonacular-api.specs.search-recipes-by-ingredients-200-response-inner-missed-ingredients-inner :refer :all]
            )
  (:import (java.io File)))


(def search-recipes-by-ingredients-200-response-inner-data
  {
   (ds/req :id) int?
   (ds/req :image) string?
   (ds/req :imageType) string?
   (ds/req :likes) int?
   (ds/req :missedIngredientCount) int?
   (ds/req :missedIngredients) (s/coll-of search-recipes-by-ingredients-200-response-inner-missed-ingredients-inner-spec)
   (ds/req :title) string?
   (ds/req :unusedIngredients) (s/coll-of any?)
   (ds/req :usedIngredientCount) float?
   (ds/req :usedIngredients) (s/coll-of search-recipes-by-ingredients-200-response-inner-missed-ingredients-inner-spec)
   })

(def search-recipes-by-ingredients-200-response-inner-spec
  (ds/spec
    {:name ::search-recipes-by-ingredients-200-response-inner
     :spec search-recipes-by-ingredients-200-response-inner-data}))

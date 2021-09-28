(ns spoonacular-api.specs.inline-response-200-1
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.-recipes-find-by-ingredients-missed-ingredients :refer :all]
            [spoonacular-api.specs.-recipes-find-by-ingredients-missed-ingredients :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-1-data
  {
   (ds/req :id) int?
   (ds/req :image) string?
   (ds/req :imageType) string?
   (ds/req :likes) int?
   (ds/req :missedIngredientCount) int?
   (ds/req :missedIngredients) (s/coll-of -recipes-find-by-ingredients-missed-ingredients-spec)
   (ds/req :title) string?
   (ds/req :unusedIngredients) (s/coll-of any?)
   (ds/req :usedIngredientCount) float?
   (ds/req :usedIngredients) (s/coll-of -recipes-find-by-ingredients-missed-ingredients-spec)
   (ds/opt :) string?
   })

(def inline-response-200-1-spec
  (ds/spec
    {:name ::inline-response-200-1
     :spec inline-response-200-1-data}))

(ns spoonacular-api.specs.get-ingredient-information-200-response-nutrition
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-nutrients-inner :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-properties-inner :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-caloric-breakdown :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-weight-per-serving :refer :all]
            )
  (:import (java.io File)))


(def get-ingredient-information-200-response-nutrition-data
  {
   (ds/req :nutrients) (s/coll-of parse-ingredients-200-response-inner-nutrition-nutrients-inner-spec)
   (ds/req :properties) (s/coll-of parse-ingredients-200-response-inner-nutrition-properties-inner-spec)
   (ds/req :caloricBreakdown) parse-ingredients-200-response-inner-nutrition-caloric-breakdown-spec
   (ds/req :weightPerServing) parse-ingredients-200-response-inner-nutrition-weight-per-serving-spec
   })

(def get-ingredient-information-200-response-nutrition-spec
  (ds/spec
    {:name ::get-ingredient-information-200-response-nutrition
     :spec get-ingredient-information-200-response-nutrition-data}))

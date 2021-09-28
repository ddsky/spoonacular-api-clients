(ns spoonacular-api.specs.-recipes-parse-ingredients-nutrition
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-nutrients :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-properties :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-properties :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-caloric-breakdown :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-weight-per-serving :refer :all]
            )
  (:import (java.io File)))


(def -recipes-parse-ingredients-nutrition-data
  {
   (ds/req :nutrients) (s/coll-of -recipes-parse-ingredients-nutrition-nutrients-spec)
   (ds/req :properties) (s/coll-of -recipes-parse-ingredients-nutrition-properties-spec)
   (ds/req :flavonoids) (s/coll-of -recipes-parse-ingredients-nutrition-properties-spec)
   (ds/req :caloricBreakdown) -recipes-parse-ingredients-nutrition-caloric-breakdown-spec
   (ds/req :weightPerServing) -recipes-parse-ingredients-nutrition-weight-per-serving-spec
   })

(def -recipes-parse-ingredients-nutrition-spec
  (ds/spec
    {:name ::-recipes-parse-ingredients-nutrition
     :spec -recipes-parse-ingredients-nutrition-data}))

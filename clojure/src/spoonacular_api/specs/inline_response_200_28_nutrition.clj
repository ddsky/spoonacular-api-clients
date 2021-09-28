(ns spoonacular-api.specs.inline-response-200-28-nutrition
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-nutrients :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-caloric-breakdown :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-28-nutrition-data
  {
   (ds/req :nutrients) (s/coll-of -recipes-parse-ingredients-nutrition-nutrients-spec)
   (ds/req :caloricBreakdown) -recipes-parse-ingredients-nutrition-caloric-breakdown-spec
   })

(def inline-response-200-28-nutrition-spec
  (ds/spec
    {:name ::inline-response-200-28-nutrition
     :spec inline-response-200-28-nutrition-data}))

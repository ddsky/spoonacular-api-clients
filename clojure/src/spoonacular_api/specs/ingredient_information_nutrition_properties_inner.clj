(ns spoonacular-api.specs.ingredient-information-nutrition-properties-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ingredient-information-nutrition-properties-inner-data
  {
   (ds/req :name) string?
   (ds/req :amount) float?
   (ds/req :unit) string?
   })

(def ingredient-information-nutrition-properties-inner-spec
  (ds/spec
    {:name ::ingredient-information-nutrition-properties-inner
     :spec ingredient-information-nutrition-properties-inner-data}))

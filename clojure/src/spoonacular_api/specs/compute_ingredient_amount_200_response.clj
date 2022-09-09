(ns spoonacular-api.specs.compute-ingredient-amount-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def compute-ingredient-amount-200-response-data
  {
   (ds/req :amount) float?
   (ds/req :unit) string?
   })

(def compute-ingredient-amount-200-response-spec
  (ds/spec
    {:name ::compute-ingredient-amount-200-response
     :spec compute-ingredient-amount-200-response-data}))

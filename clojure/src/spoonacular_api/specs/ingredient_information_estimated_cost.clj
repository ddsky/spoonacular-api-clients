(ns spoonacular-api.specs.ingredient-information-estimated-cost
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ingredient-information-estimated-cost-data
  {
   (ds/req :value) float?
   (ds/req :unit) string?
   })

(def ingredient-information-estimated-cost-spec
  (ds/spec
    {:name ::ingredient-information-estimated-cost
     :spec ingredient-information-estimated-cost-data}))

(ns spoonacular-api.specs.inline-object-7
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-object-7-data
  {
   (ds/req :ingredientList) string?
   (ds/req :servings) float?
   (ds/opt :includeNutrition) boolean?
   })

(def inline-object-7-spec
  (ds/spec
    {:name ::inline-object-7
     :spec inline-object-7-data}))

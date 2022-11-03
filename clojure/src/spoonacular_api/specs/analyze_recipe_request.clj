(ns spoonacular-api.specs.analyze-recipe-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def analyze-recipe-request-data
  {
   (ds/opt :language) string?
   (ds/opt :includeNutrition) boolean?
   (ds/opt :includeTaste) boolean?
   })

(def analyze-recipe-request-spec
  (ds/spec
    {:name ::analyze-recipe-request
     :spec analyze-recipe-request-data}))

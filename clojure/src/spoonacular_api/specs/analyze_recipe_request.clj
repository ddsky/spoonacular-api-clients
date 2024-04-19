(ns spoonacular-api.specs.analyze-recipe-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def analyze-recipe-request-data
  {
   (ds/opt :title) string?
   (ds/opt :servings) int?
   (ds/opt :ingredients) (s/coll-of string?)
   (ds/opt :instructions) string?
   })

(def analyze-recipe-request-spec
  (ds/spec
    {:name ::analyze-recipe-request
     :spec analyze-recipe-request-data}))

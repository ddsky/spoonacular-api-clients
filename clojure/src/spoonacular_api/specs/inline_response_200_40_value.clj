(ns spoonacular-api.specs.inline-response-200-40-value
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-40-value-data
  {
   (ds/opt :id) int?
   (ds/opt :servings) float?
   (ds/opt :title) string?
   (ds/opt :imageType) string?
   })

(def inline-response-200-40-value-spec
  (ds/spec
    {:name ::inline-response-200-40-value
     :spec inline-response-200-40-value-data}))

(ns spoonacular-api.specs.inline-response-200-results
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-results-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :calories) float?
   (ds/req :carbs) string?
   (ds/req :fat) string?
   (ds/req :image) string?
   (ds/req :imageType) string?
   (ds/req :protein) string?
   })

(def inline-response-200-results-spec
  (ds/spec
    {:name ::inline-response-200-results
     :spec inline-response-200-results-data}))

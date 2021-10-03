(ns spoonacular-api.specs.inline-response-200-53-results
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-53-results-data
  {
   (ds/req :id) string?
   (ds/req :name) string?
   (ds/req :image) string?
   (ds/req :link) string?
   (ds/req :type) string?
   (ds/req :relevance) float?
   (ds/req :content) string?
   })

(def inline-response-200-53-results-spec
  (ds/spec
    {:name ::inline-response-200-53-results
     :spec inline-response-200-53-results-data}))

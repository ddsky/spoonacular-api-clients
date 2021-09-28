(ns spoonacular-api.specs.inline-response-200-25-results
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-25-results-data
  {
   (ds/req :id) int?
   (ds/req :name) string?
   (ds/req :image) string?
   })

(def inline-response-200-25-results-spec
  (ds/spec
    {:name ::inline-response-200-25-results
     :spec inline-response-200-25-results-data}))

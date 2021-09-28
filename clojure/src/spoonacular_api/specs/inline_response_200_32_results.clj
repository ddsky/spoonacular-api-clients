(ns spoonacular-api.specs.inline-response-200-32-results
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-32-results-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   })

(def inline-response-200-32-results-spec
  (ds/spec
    {:name ::inline-response-200-32-results
     :spec inline-response-200-32-results-data}))

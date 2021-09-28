(ns spoonacular-api.specs.inline-response-200
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-results :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-data
  {
   (ds/req :offset) int?
   (ds/req :number) int?
   (ds/req :results) (s/coll-of inline-response-200-results-spec)
   (ds/req :totalResults) int?
   })

(def inline-response-200-spec
  (ds/spec
    {:name ::inline-response-200
     :spec inline-response-200-data}))

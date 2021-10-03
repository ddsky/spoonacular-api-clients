(ns spoonacular-api.specs.inline-response-200-53-search-results
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-53-results :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-53-search-results-data
  {
   (ds/req :name) string?
   (ds/req :totalResults) int?
   (ds/opt :results) (s/coll-of inline-response-200-53-results-spec)
   })

(def inline-response-200-53-search-results-spec
  (ds/spec
    {:name ::inline-response-200-53-search-results
     :spec inline-response-200-53-search-results-data}))

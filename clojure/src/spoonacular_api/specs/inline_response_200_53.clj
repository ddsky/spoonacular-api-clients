(ns spoonacular-api.specs.inline-response-200-53
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-53-search-results :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-53-data
  {
   (ds/req :query) string?
   (ds/req :totalResults) int?
   (ds/req :limit) int?
   (ds/req :offset) int?
   (ds/req :searchResults) (s/coll-of inline-response-200-53-search-results-spec)
   })

(def inline-response-200-53-spec
  (ds/spec
    {:name ::inline-response-200-53
     :spec inline-response-200-53-data}))

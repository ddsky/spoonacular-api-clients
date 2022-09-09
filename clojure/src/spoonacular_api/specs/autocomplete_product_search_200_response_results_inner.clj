(ns spoonacular-api.specs.autocomplete-product-search-200-response-results-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def autocomplete-product-search-200-response-results-inner-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   })

(def autocomplete-product-search-200-response-results-inner-spec
  (ds/spec
    {:name ::autocomplete-product-search-200-response-results-inner
     :spec autocomplete-product-search-200-response-results-inner-data}))

(ns spoonacular-api.specs.autocomplete-product-search-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.autocomplete-product-search-200-response-results-inner :refer :all]
            )
  (:import (java.io File)))


(def autocomplete-product-search-200-response-data
  {
   (ds/req :results) (s/coll-of autocomplete-product-search-200-response-results-inner-spec)
   })

(def autocomplete-product-search-200-response-spec
  (ds/spec
    {:name ::autocomplete-product-search-200-response
     :spec autocomplete-product-search-200-response-data}))

(ns spoonacular-api.specs.search-restaurants-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner :refer :all]
            )
  (:import (java.io File)))


(def search-restaurants-200-response-data
  {
   (ds/opt :restaurants) (s/coll-of search-restaurants-200-response-restaurants-inner-spec)
   })

(def search-restaurants-200-response-spec
  (ds/spec
    {:name ::search-restaurants-200-response
     :spec search-restaurants-200-response-data}))

(ns spoonacular-api.specs.search-site-content-200-response-grocery-products-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-site-content-200-response-grocery-products-inner-data-points-inner :refer :all]
            )
  (:import (java.io File)))


(def search-site-content-200-response-grocery-products-inner-data
  {
   (ds/opt :dataPoints) (s/coll-of search-site-content-200-response-grocery-products-inner-data-points-inner-spec)
   (ds/req :image) string?
   (ds/req :link) string?
   (ds/req :name) string?
   })

(def search-site-content-200-response-grocery-products-inner-spec
  (ds/spec
    {:name ::search-site-content-200-response-grocery-products-inner
     :spec search-site-content-200-response-grocery-products-inner-data}))

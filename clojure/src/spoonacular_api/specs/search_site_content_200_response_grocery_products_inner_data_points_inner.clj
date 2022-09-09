(ns spoonacular-api.specs.search-site-content-200-response-grocery-products-inner-data-points-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-site-content-200-response-grocery-products-inner-data-points-inner-data
  {
   (ds/req :key) string?
   (ds/req :value) string?
   })

(def search-site-content-200-response-grocery-products-inner-data-points-inner-spec
  (ds/spec
    {:name ::search-site-content-200-response-grocery-products-inner-data-points-inner
     :spec search-site-content-200-response-grocery-products-inner-data-points-inner-data}))

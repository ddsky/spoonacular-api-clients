(ns spoonacular-api.specs.search-menu-items-200-response-menu-items-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-servings :refer :all]
            )
  (:import (java.io File)))


(def search-menu-items-200-response-menu-items-inner-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :restaurantChain) string?
   (ds/req :image) string?
   (ds/req :imageType) string?
   (ds/opt :servings) search-grocery-products-by-upc-200-response-servings-spec
   })

(def search-menu-items-200-response-menu-items-inner-spec
  (ds/spec
    {:name ::search-menu-items-200-response-menu-items-inner
     :spec search-menu-items-200-response-menu-items-inner-data}))

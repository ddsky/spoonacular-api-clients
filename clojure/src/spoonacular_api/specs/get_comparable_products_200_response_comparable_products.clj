(ns spoonacular-api.specs.get-comparable-products-200-response-comparable-products
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.comparable-product :refer :all]
            [spoonacular-api.specs.comparable-product :refer :all]
            [spoonacular-api.specs.comparable-product :refer :all]
            [spoonacular-api.specs.comparable-product :refer :all]
            [spoonacular-api.specs.comparable-product :refer :all]
            [spoonacular-api.specs.comparable-product :refer :all]
            )
  (:import (java.io File)))


(def get-comparable-products-200-response-comparable-products-data
  {
   (ds/req :calories) (s/coll-of comparable-product-spec)
   (ds/req :likes) (s/coll-of comparable-product-spec)
   (ds/req :price) (s/coll-of comparable-product-spec)
   (ds/req :protein) (s/coll-of comparable-product-spec)
   (ds/req :spoonacular_score) (s/coll-of comparable-product-spec)
   (ds/req :sugar) (s/coll-of comparable-product-spec)
   })

(def get-comparable-products-200-response-comparable-products-spec
  (ds/spec
    {:name ::get-comparable-products-200-response-comparable-products
     :spec get-comparable-products-200-response-comparable-products-data}))

(ns spoonacular-api.specs.get-comparable-products-200-response-comparable-products
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-comparable-products-200-response-comparable-products-protein-inner :refer :all]
            [spoonacular-api.specs.get-comparable-products-200-response-comparable-products-protein-inner :refer :all]
            )
  (:import (java.io File)))


(def get-comparable-products-200-response-comparable-products-data
  {
   (ds/req :calories) (s/coll-of any?)
   (ds/req :likes) (s/coll-of any?)
   (ds/req :price) (s/coll-of any?)
   (ds/req :protein) (s/coll-of get-comparable-products-200-response-comparable-products-protein-inner-spec)
   (ds/req :spoonacularScore) (s/coll-of get-comparable-products-200-response-comparable-products-protein-inner-spec)
   (ds/req :sugar) (s/coll-of any?)
   })

(def get-comparable-products-200-response-comparable-products-spec
  (ds/spec
    {:name ::get-comparable-products-200-response-comparable-products
     :spec get-comparable-products-200-response-comparable-products-data}))

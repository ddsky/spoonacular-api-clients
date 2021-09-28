(ns spoonacular-api.specs.inline-response-200-31-comparable-products
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-31-comparable-products-protein :refer :all]
            [spoonacular-api.specs.inline-response-200-31-comparable-products-protein :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-31-comparable-products-data
  {
   (ds/req :calories) (s/coll-of any?)
   (ds/req :likes) (s/coll-of any?)
   (ds/req :price) (s/coll-of any?)
   (ds/req :protein) (s/coll-of inline-response-200-31-comparable-products-protein-spec)
   (ds/req :spoonacularScore) (s/coll-of inline-response-200-31-comparable-products-protein-spec)
   (ds/req :sugar) (s/coll-of any?)
   })

(def inline-response-200-31-comparable-products-spec
  (ds/spec
    {:name ::inline-response-200-31-comparable-products
     :spec inline-response-200-31-comparable-products-data}))

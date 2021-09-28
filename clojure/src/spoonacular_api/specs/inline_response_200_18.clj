(ns spoonacular-api.specs.inline-response-200-18
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-18-dishes :refer :all]
            [spoonacular-api.specs.inline-response-200-18-ingredients :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-18-data
  {
   (ds/req :dishes) (s/coll-of inline-response-200-18-dishes-spec)
   (ds/req :ingredients) (s/coll-of inline-response-200-18-ingredients-spec)
   (ds/req :cuisines) (s/coll-of string?)
   (ds/req :modifiers) (s/coll-of string?)
   })

(def inline-response-200-18-spec
  (ds/spec
    {:name ::inline-response-200-18
     :spec inline-response-200-18-data}))

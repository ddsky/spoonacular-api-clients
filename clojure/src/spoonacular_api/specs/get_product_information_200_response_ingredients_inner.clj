(ns spoonacular-api.specs.get-product-information-200-response-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs. :refer :all]
            [spoonacular-api.specs. :refer :all]
            )
  (:import (java.io File)))


(def get-product-information-200-response-ingredients-inner-data
  {
   (ds/opt :description) any-type-spec
   (ds/req :name) string?
   (ds/opt :safety_level) any-type-spec
   })

(def get-product-information-200-response-ingredients-inner-spec
  (ds/spec
    {:name ::get-product-information-200-response-ingredients-inner
     :spec get-product-information-200-response-ingredients-inner-data}))

(ns spoonacular-api.specs.get-comparable-products-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-comparable-products-200-response-comparable-products :refer :all]
            )
  (:import (java.io File)))


(def get-comparable-products-200-response-data
  {
   (ds/req :comparableProducts) get-comparable-products-200-response-comparable-products-spec
   })

(def get-comparable-products-200-response-spec
  (ds/spec
    {:name ::get-comparable-products-200-response
     :spec get-comparable-products-200-response-data}))

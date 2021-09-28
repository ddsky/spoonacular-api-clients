(ns spoonacular-api.specs.inline-response-200-31
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-31-comparable-products :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-31-data
  {
   (ds/req :comparableProducts) inline-response-200-31-comparable-products-spec
   })

(def inline-response-200-31-spec
  (ds/spec
    {:name ::inline-response-200-31
     :spec inline-response-200-31-data}))

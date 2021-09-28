(ns spoonacular-api.specs.inline-response-200-10-ingredients
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-10-amount :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-10-ingredients-data
  {
   (ds/opt :amount) inline-response-200-10-amount-spec
   (ds/req :image) string?
   (ds/req :name) string?
   (ds/req :price) float?
   })

(def inline-response-200-10-ingredients-spec
  (ds/spec
    {:name ::inline-response-200-10-ingredients
     :spec inline-response-200-10-ingredients-data}))

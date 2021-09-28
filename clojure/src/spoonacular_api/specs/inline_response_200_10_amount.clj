(ns spoonacular-api.specs.inline-response-200-10-amount
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-10-amount-metric :refer :all]
            [spoonacular-api.specs.inline-response-200-10-amount-metric :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-10-amount-data
  {
   (ds/req :metric) inline-response-200-10-amount-metric-spec
   (ds/req :us) inline-response-200-10-amount-metric-spec
   })

(def inline-response-200-10-amount-spec
  (ds/spec
    {:name ::inline-response-200-10-amount
     :spec inline-response-200-10-amount-data}))

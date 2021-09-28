(ns spoonacular-api.specs.inline-response-200-3-measures
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-3-measures-metric :refer :all]
            [spoonacular-api.specs.inline-response-200-3-measures-metric :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-3-measures-data
  {
   (ds/req :metric) inline-response-200-3-measures-metric-spec
   (ds/req :us) inline-response-200-3-measures-metric-spec
   })

(def inline-response-200-3-measures-spec
  (ds/spec
    {:name ::inline-response-200-3-measures
     :spec inline-response-200-3-measures-data}))

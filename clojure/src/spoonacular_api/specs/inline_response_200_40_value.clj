(ns spoonacular-api.specs.inline-response-200-40-value
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-40-value-data
  {
   (ds/req :id) float?
   (ds/req :title) string?
   (ds/req :imageType) string?
   })

(def inline-response-200-40-value-spec
  (ds/spec
    {:name ::inline-response-200-40-value
     :spec inline-response-200-40-value-data}))

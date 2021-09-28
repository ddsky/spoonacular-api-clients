(ns spoonacular-api.specs.inline-response-200-47
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-47-data
  {
   (ds/req :category) string?
   (ds/req :probability) float?
   })

(def inline-response-200-47-spec
  (ds/spec
    {:name ::inline-response-200-47
     :spec inline-response-200-47-data}))

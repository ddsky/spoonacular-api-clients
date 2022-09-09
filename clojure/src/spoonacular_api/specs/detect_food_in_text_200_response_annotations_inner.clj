(ns spoonacular-api.specs.detect-food-in-text-200-response-annotations-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def detect-food-in-text-200-response-annotations-inner-data
  {
   (ds/req :annotation) string?
   (ds/req :image) string?
   (ds/req :tag) string?
   })

(def detect-food-in-text-200-response-annotations-inner-spec
  (ds/spec
    {:name ::detect-food-in-text-200-response-annotations-inner
     :spec detect-food-in-text-200-response-annotations-inner-data}))

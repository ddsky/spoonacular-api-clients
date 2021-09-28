(ns spoonacular-api.specs.inline-response-200-48-category
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-48-category-data
  {
   (ds/req :name) string?
   (ds/req :probability) float?
   })

(def inline-response-200-48-category-spec
  (ds/spec
    {:name ::inline-response-200-48-category
     :spec inline-response-200-48-category-data}))

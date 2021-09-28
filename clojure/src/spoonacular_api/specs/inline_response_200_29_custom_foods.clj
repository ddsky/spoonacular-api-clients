(ns spoonacular-api.specs.inline-response-200-29-custom-foods
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-29-custom-foods-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :servings) float?
   (ds/req :imageUrl) string?
   (ds/req :price) float?
   })

(def inline-response-200-29-custom-foods-spec
  (ds/spec
    {:name ::inline-response-200-29-custom-foods
     :spec inline-response-200-29-custom-foods-data}))

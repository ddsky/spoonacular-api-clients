(ns spoonacular-api.specs.inline-response-200-18-ingredients
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-18-ingredients-data
  {
   (ds/req :image) string?
   (ds/req :include) boolean?
   (ds/req :name) string?
   })

(def inline-response-200-18-ingredients-spec
  (ds/spec
    {:name ::inline-response-200-18-ingredients
     :spec inline-response-200-18-ingredients-data}))

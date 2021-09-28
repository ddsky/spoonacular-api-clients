(ns spoonacular-api.specs.inline-response-200-30-ingredients
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-30-ingredients-data
  {
   (ds/opt :description) any?
   (ds/req :name) string?
   (ds/opt :safety_level) any?
   })

(def inline-response-200-30-ingredients-spec
  (ds/spec
    {:name ::inline-response-200-30-ingredients
     :spec inline-response-200-30-ingredients-data}))

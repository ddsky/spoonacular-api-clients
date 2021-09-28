(ns spoonacular-api.specs.inline-response-200-13-ingredients
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-13-ingredients-data
  {
   (ds/req :id) int?
   (ds/req :name) string?
   (ds/req :localizedName) string?
   (ds/req :image) string?
   })

(def inline-response-200-13-ingredients-spec
  (ds/spec
    {:name ::inline-response-200-13-ingredients
     :spec inline-response-200-13-ingredients-data}))

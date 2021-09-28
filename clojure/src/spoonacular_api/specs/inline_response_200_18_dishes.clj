(ns spoonacular-api.specs.inline-response-200-18-dishes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-18-dishes-data
  {
   (ds/req :image) string?
   (ds/req :name) string?
   })

(def inline-response-200-18-dishes-spec
  (ds/spec
    {:name ::inline-response-200-18-dishes
     :spec inline-response-200-18-dishes-data}))

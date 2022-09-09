(ns spoonacular-api.specs.generate-shopping-list-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def generate-shopping-list-request-data
  {
   (ds/req :username) string?
   (ds/req :start-date) string?
   (ds/req :end-date) string?
   (ds/req :hash) string?
   })

(def generate-shopping-list-request-spec
  (ds/spec
    {:name ::generate-shopping-list-request
     :spec generate-shopping-list-request-data}))

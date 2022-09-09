(ns spoonacular-api.specs.add-to-shopping-list-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def add-to-shopping-list-request-data
  {
   (ds/req :item) string?
   (ds/req :aisle) string?
   (ds/req :parse) boolean?
   })

(def add-to-shopping-list-request-spec
  (ds/spec
    {:name ::add-to-shopping-list-request
     :spec add-to-shopping-list-request-data}))

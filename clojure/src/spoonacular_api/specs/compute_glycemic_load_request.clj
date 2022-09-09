(ns spoonacular-api.specs.compute-glycemic-load-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def compute-glycemic-load-request-data
  {
   (ds/req :ingredients) (s/coll-of string?)
   })

(def compute-glycemic-load-request-spec
  (ds/spec
    {:name ::compute-glycemic-load-request
     :spec compute-glycemic-load-request-data}))

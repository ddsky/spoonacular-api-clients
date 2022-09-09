(ns spoonacular-api.specs.get-dish-pairing-for-wine-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-dish-pairing-for-wine-200-response-data
  {
   (ds/req :pairings) (s/coll-of string?)
   (ds/req :text) string?
   })

(def get-dish-pairing-for-wine-200-response-spec
  (ds/spec
    {:name ::get-dish-pairing-for-wine-200-response
     :spec get-dish-pairing-for-wine-200-response-data}))

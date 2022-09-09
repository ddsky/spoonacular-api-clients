(ns spoonacular-api.specs.get-wine-pairing-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-wine-pairing-200-response-product-matches-inner :refer :all]
            )
  (:import (java.io File)))


(def get-wine-pairing-200-response-data
  {
   (ds/req :pairedWines) (s/coll-of string?)
   (ds/req :pairingText) string?
   (ds/req :productMatches) (s/coll-of get-wine-pairing-200-response-product-matches-inner-spec)
   })

(def get-wine-pairing-200-response-spec
  (ds/spec
    {:name ::get-wine-pairing-200-response
     :spec get-wine-pairing-200-response-data}))

(ns spoonacular-api.specs.inline-response-200-3-wine-pairing
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-3-wine-pairing-product-matches :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-3-wine-pairing-data
  {
   (ds/req :pairedWines) (s/coll-of string?)
   (ds/req :pairingText) string?
   (ds/req :productMatches) (s/coll-of inline-response-200-3-wine-pairing-product-matches-spec)
   })

(def inline-response-200-3-wine-pairing-spec
  (ds/spec
    {:name ::inline-response-200-3-wine-pairing
     :spec inline-response-200-3-wine-pairing-data}))

(ns spoonacular-api.specs.inline-response-200-45
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-45-product-matches :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-45-data
  {
   (ds/req :pairedWines) (s/coll-of string?)
   (ds/req :pairingText) string?
   (ds/req :productMatches) (s/coll-of inline-response-200-45-product-matches-spec)
   })

(def inline-response-200-45-spec
  (ds/spec
    {:name ::inline-response-200-45
     :spec inline-response-200-45-data}))

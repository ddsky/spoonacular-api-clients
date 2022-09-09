(ns spoonacular-api.specs.get-recipe-information-200-response-wine-pairing
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-recipe-information-200-response-wine-pairing-product-matches-inner :refer :all]
            )
  (:import (java.io File)))


(def get-recipe-information-200-response-wine-pairing-data
  {
   (ds/req :pairedWines) (s/coll-of string?)
   (ds/req :pairingText) string?
   (ds/req :productMatches) (s/coll-of get-recipe-information-200-response-wine-pairing-product-matches-inner-spec)
   })

(def get-recipe-information-200-response-wine-pairing-spec
  (ds/spec
    {:name ::get-recipe-information-200-response-wine-pairing
     :spec get-recipe-information-200-response-wine-pairing-data}))

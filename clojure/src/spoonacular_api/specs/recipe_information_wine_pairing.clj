(ns spoonacular-api.specs.recipe-information-wine-pairing
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.recipe-information-wine-pairing-product-matches-inner :refer :all]
            )
  (:import (java.io File)))


(def recipe-information-wine-pairing-data
  {
   (ds/opt :pairedWines) (s/coll-of string?)
   (ds/opt :pairingText) string?
   (ds/opt :productMatches) (s/coll-of recipe-information-wine-pairing-product-matches-inner-spec)
   })

(def recipe-information-wine-pairing-spec
  (ds/spec
    {:name ::recipe-information-wine-pairing
     :spec recipe-information-wine-pairing-data}))

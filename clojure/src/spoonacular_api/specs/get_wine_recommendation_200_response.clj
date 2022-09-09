(ns spoonacular-api.specs.get-wine-recommendation-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-wine-recommendation-200-response-recommended-wines-inner :refer :all]
            )
  (:import (java.io File)))


(def get-wine-recommendation-200-response-data
  {
   (ds/req :recommendedWines) (s/coll-of get-wine-recommendation-200-response-recommended-wines-inner-spec)
   (ds/req :totalFound) int?
   })

(def get-wine-recommendation-200-response-spec
  (ds/spec
    {:name ::get-wine-recommendation-200-response
     :spec get-wine-recommendation-200-response-data}))

(ns spoonacular-api.specs.get-wine-description-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-wine-description-200-response-data
  {
   (ds/req :wineDescription) string?
   })

(def get-wine-description-200-response-spec
  (ds/spec
    {:name ::get-wine-description-200-response
     :spec get-wine-description-200-response-data}))

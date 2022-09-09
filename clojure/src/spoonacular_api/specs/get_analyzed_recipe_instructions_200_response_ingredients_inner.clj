(ns spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-analyzed-recipe-instructions-200-response-ingredients-inner-data
  {
   (ds/req :id) int?
   (ds/req :name) string?
   })

(def get-analyzed-recipe-instructions-200-response-ingredients-inner-spec
  (ds/spec
    {:name ::get-analyzed-recipe-instructions-200-response-ingredients-inner
     :spec get-analyzed-recipe-instructions-200-response-ingredients-inner-data}))

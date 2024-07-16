(ns spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-inner-steps-inner-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-analyzed-recipe-instructions-200-response-inner-steps-inner-ingredients-inner-data
  {
   (ds/req :id) int?
   (ds/req :name) string?
   (ds/req :localizedName) string?
   (ds/req :image) string?
   })

(def get-analyzed-recipe-instructions-200-response-inner-steps-inner-ingredients-inner-spec
  (ds/spec
    {:name ::get-analyzed-recipe-instructions-200-response-inner-steps-inner-ingredients-inner
     :spec get-analyzed-recipe-instructions-200-response-inner-steps-inner-ingredients-inner-data}))

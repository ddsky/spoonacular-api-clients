(ns spoonacular-api.specs.image-analysis-by-url-200-response-nutrition-calories-confidence-range95-percent
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def image-analysis-by-url-200-response-nutrition-calories-confidence-range95-percent-data
  {
   (ds/req :min) float?
   (ds/req :max) float?
   })

(def image-analysis-by-url-200-response-nutrition-calories-confidence-range95-percent-spec
  (ds/spec
    {:name ::image-analysis-by-url-200-response-nutrition-calories-confidence-range95-percent
     :spec image-analysis-by-url-200-response-nutrition-calories-confidence-range95-percent-data}))

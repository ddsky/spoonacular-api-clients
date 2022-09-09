(ns spoonacular-api.specs.image-analysis-by-url-200-response-nutrition-calories
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.image-analysis-by-url-200-response-nutrition-calories-confidence-range95-percent :refer :all]
            )
  (:import (java.io File)))


(def image-analysis-by-url-200-response-nutrition-calories-data
  {
   (ds/req :value) float?
   (ds/req :unit) string?
   (ds/req :confidenceRange95Percent) image-analysis-by-url-200-response-nutrition-calories-confidence-range95-percent-spec
   (ds/req :standardDeviation) float?
   })

(def image-analysis-by-url-200-response-nutrition-calories-spec
  (ds/spec
    {:name ::image-analysis-by-url-200-response-nutrition-calories
     :spec image-analysis-by-url-200-response-nutrition-calories-data}))

(ns spoonacular-api.specs.image-analysis-by-url-200-response-nutrition
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.image-analysis-by-url-200-response-nutrition-calories :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-nutrition-calories :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-nutrition-calories :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-nutrition-calories :refer :all]
            )
  (:import (java.io File)))


(def image-analysis-by-url-200-response-nutrition-data
  {
   (ds/req :recipesUsed) int?
   (ds/req :calories) image-analysis-by-url-200-response-nutrition-calories-spec
   (ds/req :fat) image-analysis-by-url-200-response-nutrition-calories-spec
   (ds/req :protein) image-analysis-by-url-200-response-nutrition-calories-spec
   (ds/req :carbs) image-analysis-by-url-200-response-nutrition-calories-spec
   })

(def image-analysis-by-url-200-response-nutrition-spec
  (ds/spec
    {:name ::image-analysis-by-url-200-response-nutrition
     :spec image-analysis-by-url-200-response-nutrition-data}))

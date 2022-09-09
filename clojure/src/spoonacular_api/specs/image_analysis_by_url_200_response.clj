(ns spoonacular-api.specs.image-analysis-by-url-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.image-analysis-by-url-200-response-nutrition :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-category :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-recipes-inner :refer :all]
            )
  (:import (java.io File)))


(def image-analysis-by-url-200-response-data
  {
   (ds/req :nutrition) image-analysis-by-url-200-response-nutrition-spec
   (ds/req :category) image-analysis-by-url-200-response-category-spec
   (ds/req :recipes) (s/coll-of image-analysis-by-url-200-response-recipes-inner-spec)
   })

(def image-analysis-by-url-200-response-spec
  (ds/spec
    {:name ::image-analysis-by-url-200-response
     :spec image-analysis-by-url-200-response-data}))

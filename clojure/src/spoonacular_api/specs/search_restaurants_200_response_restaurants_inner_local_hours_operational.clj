(ns spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-local-hours-operational
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-restaurants-200-response-restaurants-inner-local-hours-operational-data
  {
   (ds/opt :Monday) string?
   (ds/opt :Tuesday) string?
   (ds/opt :Wednesday) string?
   (ds/opt :Thursday) string?
   (ds/opt :Friday) string?
   (ds/opt :Saturday) string?
   (ds/opt :Sunday) string?
   })

(def search-restaurants-200-response-restaurants-inner-local-hours-operational-spec
  (ds/spec
    {:name ::search-restaurants-200-response-restaurants-inner-local-hours-operational
     :spec search-restaurants-200-response-restaurants-inner-local-hours-operational-data}))

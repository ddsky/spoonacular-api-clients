Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -F
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g java --enable-post-process-file --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id java-client -o java -c java-config.json --global-property apiTests=false
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g javascript --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id javascript-client -o javascript
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g typescript --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id typescript-client -o typescript
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g typescript-angular --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id angular-client -o angular
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g android --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id android-client -o android
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g clojure --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id clojure-client -o clojure
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g cpp-qt-client --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id cpp-client -o cpp
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g csharp-dotnet2 --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id csharp-client -o csharp --additional-properties hideGenerationTimestamp=true
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g dart --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id dart-client -o dart
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g elixir --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id elixir-client -o elixir
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g erlang-client --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id erlang-client -o erlang
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g scala-finch --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id scala-client -o scala -c java-config.json
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g go --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id go-client -o go
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g php --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id php-client -o php
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g python --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id python-client -o python
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g rust --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id rust-client -o rust
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g ruby --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id ruby-client -o ruby
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g lua --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id lua-client -o lua
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g perl --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id perl-client -o perl
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g objc --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id objc-client -o  objc
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g groovy --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id groovy-client -o groovy
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g haskell-http-client --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id haskell-client -o haskell
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g kotlin --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id kotlin-client -o kotlin -c java-config.json
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g elm --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id elm-client -o elm --additional-properties elmPrefixCustomTypeVariants=true
#java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g nodejs-server --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id nodejs-client -o nodejs

# create sdk zips
Compress-Archive -Path .\java\* -DestinationPath .\zips\java-client.zip -Force
Compress-Archive -Path .\javascript\* -DestinationPath .\zips\javascript-client.zip -Force
Compress-Archive -Path .\typescript\* -DestinationPath .\zips\typescript-client.zip -Force
Compress-Archive -Path .\angular\* -DestinationPath .\zips\angular-client.zip -Force
Compress-Archive -Path .\android\* -DestinationPath .\zips\android-client.zip -Force
Compress-Archive -Path .\clojure\* -DestinationPath .\zips\clojure-client.zip -Force
Compress-Archive -Path .\cpp\* -DestinationPath .\zips\cpp-client.zip -Force
Compress-Archive -Path .\csharp\* -DestinationPath .\zips\csharp-client.zip -Force
Compress-Archive -Path .\dart\* -DestinationPath .\zips\dart-client.zip -Force
Compress-Archive -Path .\elixir\* -DestinationPath .\zips\elixir-client.zip -Force
Compress-Archive -Path .\erlang\* -DestinationPath .\zips\erlang-client.zip -Force
Compress-Archive -Path .\scala\* -DestinationPath .\zips\scala-client.zip -Force
Compress-Archive -Path .\go\* -DestinationPath .\zips\go-client.zip -Force
Compress-Archive -Path .\php\* -DestinationPath .\zips\php-client.zip -Force
Compress-Archive -Path .\python\* -DestinationPath .\zips\python-client.zip -Force
Compress-Archive -Path .\rust\* -DestinationPath .\zips\rust-client.zip -Force
Compress-Archive -Path .\ruby\* -DestinationPath .\zips\ruby-client.zip -Force
Compress-Archive -Path .\lua\* -DestinationPath .\zips\lua-client.zip -Force
Compress-Archive -Path .\perl\* -DestinationPath .\zips\perl-client.zip -Force
Compress-Archive -Path .\objc\* -DestinationPath .\zips\objc-client.zip -Force
Compress-Archive -Path .\groovy\* -DestinationPath .\zips\groovy-client.zip -Force
Compress-Archive -Path .\haskell\* -DestinationPath .\zips\haskell-client.zip -Force
Compress-Archive -Path .\kotlin\* -DestinationPath .\zips\kotlin-client.zip -Force
Compress-Archive -Path .\elm\* -DestinationPath .\zips\elm-client.zip -Force
#Compress-Archive -Path .\nodejs\* -DestinationPath .\zips\nodejs-client.zip -Force
lazy val root = (project in file(".")).
  settings(
    organization := "com.spoonacular",
    name := "java-client",
    version := "1.0",
    scalaVersion := "2.11.4",
    scalacOptions ++= Seq("-feature"),
    javacOptions in compile ++= Seq("-Xlint:deprecation"),
    publishArtifact in (Compile, packageDoc) := false,
    resolvers += Resolver.mavenLocal,
    libraryDependencies ++= Seq(
      "io.swagger" % "swagger-annotations" % "1.5.21",
      "com.squareup.okhttp3" % "okhttp" % "3.13.1",
      "com.squareup.okhttp3" % "logging-interceptor" % "3.13.1",
      "com.google.code.gson" % "gson" % "2.8.5",
      "org.apache.commons" % "commons-lang3" % "3.8.1",
      "io.gsonfire" % "gson-fire" % "1.8.3" % "compile",
      "junit" % "junit" % "4.12" % "test",
      "com.novocode" % "junit-interface" % "0.10" % "test"
    )
  )




Build Scalatra docs on [Travis CI](https://travis-ci.org/dozed/travis-test)

  - https://scalatra.github.io/scalatra-docbuild/                         
  - https://scalatra.github.io/scalatra-docbuild/apidocs/2.5/org/scalatra/
  - https://scalatra.github.io/scalatra-docbuild/apidocs/2.4/org/scalatra/


| Docs        | Repo                                          | Branch         | Built with                                      |
| :---------- | :-------------------------------------------- | :------------- | :---------------------------------------------- |
| Site        | https://github.com/scalatra/scalatra-website  | `feature/hugo` | [Hugo](https://gohugo.io/)                      |
| API v2.5.x  | https://github.com/scalatra/scalatra          | `2.5.x`        | [sbt-unidoc](https://github.com/sbt/sbt-unidoc) |
| API v2.4.x  | https://github.com/scalatra/scalatra          | `2.4.x`        | [sbt-unidoc](https://github.com/sbt/sbt-unidoc) |




TODO

  - trigger build for push to branch `2.4.x` on repo `scalatra`
  - trigger build for push to branch `2.5.x` on repo `scalatra`
  - trigger build for push to branch `master` on repo `scalatra-website`
  - remove `|| true` for hugo build

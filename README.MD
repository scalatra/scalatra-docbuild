


Build Scalatra docs on GitHub Actions

  - https://scalatra.github.io/scalatra-docbuild/
  - https://scalatra.github.io/scalatra-docbuild/apidocs/2.5/org/scalatra/
  - https://scalatra.github.io/scalatra-docbuild/apidocs/2.4/org/scalatra/
  - https://scalatra.github.io/scalatra-docbuild/apidocs/2.3/org/scalatra/


| Docs        | Repo                                          | Branch    | Built with                                      |
| :---------- | :-------------------------------------------- | :-------- | :---------------------------------------------- |
| Site        | https://github.com/scalatra/scalatra-website  | `master`  | [Hugo](https://gohugo.io/)                      |
| API v2.5.x  | https://github.com/scalatra/scalatra          | `2.5.x`   | [sbt-unidoc](https://github.com/sbt/sbt-unidoc) |
| API v2.4.x  | https://github.com/scalatra/scalatra          | `2.4.x`   | [sbt-unidoc](https://github.com/sbt/sbt-unidoc) |
| API v2.3.x  | https://github.com/scalatra/scalatra          | `2.3.x`   | [sbt-unidoc](https://github.com/sbt/sbt-unidoc) |


Options to trigger a build:

  - Push a dummy change to branch `master`
  - Invoke GitHub Actions https://github.com/scalatra/scalatra-docbuild/actions


TODO

  - trigger build for push to branch `master` on repo `scalatra-website`
  - remove `|| true` for hugo build

![Build Status](https://gitlab.com/pages/vuepress/badges/master/build.svg)

---

Example [VuePress][project] website using GitLab Pages.

Learn more about GitLab Pages at https://about.gitlab.com/product/pages and the official
documentation https://docs.gitlab.com/ee/user/project/pages/.

---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [GitLab CI](#gitlab-ci)
- [Building locally](#building-locally)
- [GitLab User or Group Pages](#gitlab-user-or-group-pages)
- [Did you fork this project?](#did-you-fork-this-project)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## GitLab CI

This project's static Pages are built by [GitLab CI][ci], following the steps
defined in [`.gitlab-ci.yml`](.gitlab-ci.yml):

```
image: node:9.11.1

pages:
  cache:
    paths:
    - node_modules/

  script:
  - yarn install
  - yarn build

  artifacts:
    paths:
    - public
  
  only:
  - master

```

This sets up a `node9.11.1` environment, then uses `yarn install` to install dependencies and `yarn build` to build out the website to the `./public` directory.
It also caches the `node_modules` directory to speed up subsequent builds.

## Building locally

This project uses [yarn](https://yarnpkg.com), you'll need to install this globally before you can get started.

```
npm install -g yarn
```

Then you need to install the project dependencies:

```
yarn install
```

Now you're ready to go.
To run the local dev server just use the following command:

```
yarn start
```

Your website should be available at [http://localhost:8080/vuepress]

*Read more at VuePress' [documentation][].*

## GitLab User or Group Pages

To use this project as your user/group website, you will need one additional
step: just rename your project to `namespace.gitlab.io`, where `namespace` is
your `username` or `groupname`. This can be done by navigating to your
project's **Settings**.

Read more about [user/group Pages][userpages] and [project Pages][projpages].

## Project name
You'll need to set the correct base in docs/.vuepress/config.js.

If you are deploying to https://<USERNAME or GROUP>.gitlab.io/, you can omit base as it defaults to "/".

If you are deploying to https://<USERNAME or GROUP>.gitlab.io/<REPO>/, (i.e. your repository is at https://gitlab.com/<USERNAME>/<REPO>), set base to "/<REPO>/".

## Did you fork this project?

If you forked this project for your own use, please go to your project's
**Settings** and remove the forking relationship, which won't be necessary
unless you want to contribute back to the upstream project.

[ci]: https://about.gitlab.com/gitlab-ci/
[project]: https://vuepress.vuejs.org/
[install]: https://vuepress.vuejs.org/guide/getting-started.html
[documentation]: https://vuepress.vuejs.org/guide/
[userpages]: https://docs.gitlab.com/ce/user/project/pages/introduction.html#user-or-group-pages
[projpages]: https://docs.gitlab.com/ce/user/project/pages/introduction.html#project-pages

----

Forked from @samdbeckham

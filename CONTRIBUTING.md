# Contributing

We accept contributions of every kind: documentation, code, artwork. Any help is greatly
appreciated. This document contains everything needed to get started with your first contribution.


## Contributing Code

We keep the source code on [GitHub](https://www.github.com/) and take contributions through
[GitHub pull requests](https://help.github.com/articles/using-pull-requests).

For smaller patches and bug fixes just go ahead and either report an issue or submit a pull
request.

It is usually a good idea to discuss major changes with the developers, this will help us
determine whether the contribution would be a good fit for the project and if it is likely to be
accepted. There's nothing worse than seeing your hard work being rejected because it falls outside
of the scope of the project.

Make sure your editor respects the [EditorConfig](http://editorconfig.org/) configuration file we
put at the root of the repository.

We follow [GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html) as our git workflow of
choice which boils down to:

* The `master` branch is always stable and deployable.
* To work on something new, branch off `master` and give the new branch a descriptive name (e.g.:
  `sort-packages-by-name`, `issue-32`, etc).
* Regularly __rebase__ that branch against `master` and push your work to a branch with the same
  name on the server.
* When you need feedback, help or think you are ready,
  [submit a pull request](https://help.github.com/articles/using-pull-requests).
* Once the branch has been merged (or rebased) into `master`, delete it from both your local and
  remote repository.

We invite you to follow
[these guidelines](http://who-t.blogspot.de/2009/12/on-commit-messages.html) to write useful
commit messages.

Additionally, you don't need to add entries to the [CHANGELOG.md](CHANGELOG.md) file, this is our
responsibility.


## Reading List

* [GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html)
* [Keep a Changelog](http://keepachangelog.com/)
* [On Commit Messages](http://who-t.blogspot.de/2009/12/on-commit-messages.html)
* [Semantic Versioning](http://semver.org/)

# Reformat YAML Files
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

Reformats YAML files

* Removes trailing whitepace
* Converts tabs to spaces

## How to use it?
This is a GitHub action, so it has to be added to a GitHub workflow.  

A simple example of running this action on all pushes to the repository would be
to add a `reformatyaml.yml` file under `.github/workflows` with the following content
```yaml
on: [push]

jobs:
  reformat-sql:
    runs-on: ubuntu-latest
    steps:
      # Checkout the source code so there are some files to look at.
      - uses: actions/checkout@v3
        with:
          fetch-depth: 0
      # Run the reformat action
      - name: Reformat YAML Files
        uses: credfeto/action-yaml-format@v1.3.2
      - name: Commit files
        run: |
          git config --local user.email "<githubusername>@users.noreply.github.com"
          git config --local user.name "YAML Reformat Bot"
          git commit --all -m"Reformat YAML Files to common format." || true
      - name: Push
        run: git push "https://${{github.actor}}:${{secrets.SOURCE_PUSH_TOKEN}}@github.com/${{github.repository}}.git" "HEAD:${{ env.GIT_BRANCH }}"
```

On each push, it will reformat the YAML files.  Note you'll need to commit and push any commits back to your github repo. 

## Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://datana.rocks"><img src="https://avatars.githubusercontent.com/u/995707?v=4?s=100" width="100px;" alt="Oskar Stark"/><br /><sub><b>Oskar Stark</b></sub></a><br /><a href="https://github.com/credfeto/action-yaml-format/commits?author=OskarStark" title="Code">💻</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->
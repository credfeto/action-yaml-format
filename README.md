# Reformat YAML Files

Reformats YAML files

* Removes trailing whitepace
* Converts tabs to spaces

## How to use it?
This is a Github action, so it has to be added to a github workflow.  

A simple example of running this action on all pushes to the repository would be
add a `reformatsql.yml` file under `.github/workflows` with the following content
```yaml
on: [push]

jobs:
  reformat-sql:
    runs-on: ubuntu-latest
    steps:
      # Checkout the source code so we have some files to look at.
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

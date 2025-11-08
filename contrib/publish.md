# Publish

## Steps

When a release is done, a tag with the following pattern is created and pushed
```
packageName-vx.x.x
```
and the [publish.yml](../.github/workflows/publish.yml) workflow is kicked to package, test and publish to chocolatey

## How to develop the workflow

If you want to develop the [publish.yml](../.github/workflows/publish.yml) workflow, you need to modify it
to push you commit, to create and push the tag with force.

Example:
```bash
git tag -a "doc-exec-v1.0.0" -f -m "doc-exec v1.0.0"
git push origin --tag "doc-exec-v1.0.0" --force
```
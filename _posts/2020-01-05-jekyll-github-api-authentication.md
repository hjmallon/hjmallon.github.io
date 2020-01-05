---
layout: post
title:  "Jekyll GitHub API authentication"
date: 2020-01-05 12:01:24 +0000
categories: jekyll update
---

## Serve locally

You need an auth token to get the GitHub metadata otherwise you may see warnings (with default theme) or errors with some themes.

```sh
GitHub Metadata: No GitHub API authentication could be found. Some fields may be missing or have incorrect data.
GitHub Metadata: Error processing value 'repo_pages_info':
Liquid Exception: uninitialized constant Faraday::Error::ConnectionFailed in /_layouts/post.html
```

Make a GitHub [Personal access token](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line) with `public_repo` scope and put it in the environment variable `JEKYLL_GITHUB_TOKEN`, see `github-metadata` Jekyll [plugin docs](https://github.com/jekyll/github-metadata/blob/master/docs/authentication.md).

```sh
export JEKYLL_GITHUB_TOKEN="XXXXXXXXXX"
```

Then serve the site as normal with `bundle exec jekyll serve`. The errors should have gone.

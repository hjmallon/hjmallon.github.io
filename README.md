# Jekyll Github Pages site notes

## Serve locally

You need an auth token to get the GitHub metadata otherwise you may see warnings/errors.

```sh
GitHub Metadata: No GitHub API authentication could be found. Some fields may be missing or have incorrect data.
GitHub Metadata: Error processing value 'repo_pages_info':
Liquid Exception: uninitialized constant Faraday::Error::ConnectionFailed in /_layouts/post.html
```

Make a GitHub 'Personal access tokens' with `public_repo` scope and put it in the environment variable `JEKYLL_GITHUB_TOKEN`, see [hare](https://github.com/jekyll/github-metadata/blob/master/docs/authentication.md).

Then serve the site with `bundle exec jekyll serve`.

## Add new blog post

I have written a little script to start a new post.

```sh
./new_post.sh "A Great New Post"
```

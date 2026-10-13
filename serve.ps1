# Local preview with the same Jekyll + plugin versions GitHub Pages uses.
# Usage:  .\serve.ps1            -> real content only
#         .\serve.ps1 -Examples  -> also renders the published:false sample entries
# Then open http://localhost:4000
param([switch]$Examples)

$flags = '--host 0.0.0.0 --livereload --force_polling'
if ($Examples) { $flags += ' --unpublished' }

docker run --rm -it `
  -v "${PSScriptRoot}:/srv/site" `
  -v cbagriacik-site-bundle:/usr/local/bundle `
  -w /srv/site `
  -p 4000:4000 -p 35729:35729 `
  ruby:3.3 `
  bash -c "bundle install --quiet && bundle exec jekyll serve $flags"

#USAF Website

The Jekyll code for the USAF website. 

# dev 
- had to use github-pages old version 200 to make it work

- `bundler package --no-install --path vendor`
- `bundix`
- `bundle exec jekyll serve`

Alternatively just pull down jekyll and other gems in one command 
`nix-shell --pure -p jekyll rubyPackages.jekyll-feed rubyPackages.jekyll-redirect-from`

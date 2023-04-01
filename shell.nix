with import <nixpkgs> { };
stdenv.mkDerivation rec {
  name = "jekyll";
  BUNDLE_FORCE_RUBY_PLATFORM = true;
  buildInputs = [
    (bundlerEnv rec {
      inherit ruby;
      name = "jekyll_env";
      gemfile = ./Gemfile;
      lockfile = ./Gemfile.lock;
      gemset = ./gemset.nix;
    })
    bundler
    ruby
  ];
}

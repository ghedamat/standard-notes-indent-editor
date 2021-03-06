with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    nodejs-12_x
    yarn
    python3
    ruby
    sass
  ];
  shellHook = ''
      mkdir -p .nix-node
      export NODE_PATH=$PWD/.nix-node
      export NPM_CONFIG_PREFIX=$PWD/.nix-node
      export PATH=$NODE_PATH/bin:$PATH
  '';
}

{ pkgs ? import <nixpkgs> {} }: 

let 
  node = pkgs.nodejs_20;
in

pkgs.mkShellNoCC {
  name = "astro";

  buildInputs = [
    node
  ];

  shellHook = ''
    HOST=0.0.0.0 PORT=4321 node ./dist/server/entry.mjs
  '';
}

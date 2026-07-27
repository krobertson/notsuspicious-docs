{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  packages = [
    pkgs.mkdocs
    pkgs.python314Packages.mkdocs-material
    pkgs.python314Packages.mkdocs-material-extensions
  ];
}

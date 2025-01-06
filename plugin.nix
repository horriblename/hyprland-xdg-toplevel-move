{
  lib,
  stdenv,
  meson,
  ninja,
  pkg-config,
  hyprland,
}: let
  version = builtins.readFile ./VERSION;
in
  stdenv.mkDerivation {
    pname = "example";
    inherit version;
    src = ./.;

    nativeBuildInputs =
      hyprland.nativeBuildInputs
      ++ [ninja meson pkg-config];

    buildInputs = [hyprland] ++ hyprland.buildInputs;

    meta = with lib; {
      homepage = "https://example.com";
      description = "Example hyprland plugin";
      license = licenses.bsd3;
      platforms = platforms.linux;
    };
  }

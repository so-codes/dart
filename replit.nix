{ pkgs }: {
    deps = [
        pkgs.haskellPackages.snap-templates
        pkgs.sudo
        pkgs.dart
    ];
}
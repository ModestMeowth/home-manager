{ pkgs, ... }: {
  programs.chromium = {
    package = (pkgs.unstable.chromium.override {
      commandLineArgs = [
        "--enable-features=Vulkan"
      ];
      enableWideVine = true;
    });

    extensions = [
      "nngceckbapebfimnlniiiahkandclblb" # Bitwarden
      "cjpalhdlnbpafiamejdnhcphjbkeiagm" # Ublock
    ];
  };
}

{ pkgs, ... }: {
  home.packages = with pkgs; [
  ];

  programs = {
    k9s.enable = true;
    k9s.settings.k9s.skin = "dracula";

    fish.shellAbbrs = {
      dcd = "docker compose down";
      dce = "docker compose exec";
      dcl = "docker compose logs";
      dcr = "docker compose restart";
      dcu = "docker compose up -d";
      dls = "docker compose ls";
      dps = "docker compose ps";

      hau = "virsh -c qemu:///system start home-assistant";
      had = "virsh -c qemu:///system destroy home-assistant";
    };
  };
}

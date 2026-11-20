{ ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    configType = "lua";
    extraConfig = ''
      -- Load base configuration
      require("common")

      -- Load host/device overrides
      require("device")
    '';
  };

  # Link the common Lua configuration into ~/.config/hypr/
  xdg.configFile."hypr/common.lua".source = ./hyprland.lua;
}

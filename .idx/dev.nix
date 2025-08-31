{ pkgs, ... }: {
  channel = "stable-24.05"; # or "unstable"

  packages = [
    # pkgs.go
    pkgs.python311
    pkgs.python311Packages.pip
    pkgs.nodejs_20
  ];

  env = {};
  idx = {
    extensions = [];

    previews = {
      enable = true;
      previews = {
        web = {

          command = ["python3" "-m" "http.server" "$PORT"];
          manager = "web";
          env = {
            PORT = "$PORT";
          };
        };
      };
    };

    workspace = {
      onCreate = {
      };
      onStart = {
      };
    };
  };
}

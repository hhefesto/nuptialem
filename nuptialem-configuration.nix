{
  nuptialem = {pkgs, ...}:{
    networking.firewall.allowedTCPPorts = [ 22 80 5432 587 443 ];

    nixpkgs.config = import ~/src/nuptialem/config.nix;

    systemd.services.nuptialem =
      { description = "nuptialem";
        enable = true;
        wantedBy = [ "multi-user.target" "nginx.service" ];
        after = [ "network.service" "local-fs.target" ];
        environment = {
          AANALYZER_STATIC_DIR="${pkgs.configuration-files-yesod}/static";
          AANALYZER_PORT="3000";
          # AANALYZER_APPROOT="https://aanalyzer.hhefesto.com";
          # AANALYZER_APPROOT="https://www.rdata.com.mx";
          # AANALYZER_APPROOT="https://www.rdataa.com";
        };
        serviceConfig = {
          Type = "simple";
          User = "root";
          WorkingDirectory = "${pkgs.configuration-files-yesod}";
          ExecStart = ''${pkgs.haskellPackages.nuptialem}/bin/nuptialem'';
          ExecStop = "";
          Restart = "always";
        };
      };
    # security.acme.certs."www.hhefesto.com" = {
    #   email = "hhefesto@rdataa.com";
    # };

    # security.acme.acceptTerms = true;
    # security.acme.certs."lauraydaniel.hhefesto.com" = {
    #   email = "hhefesto@rdataa.com";
    # };

    services.nginx = {
      enable = true;
      
      virtualHosts."lauraydaniel.hhefesto.com" = {
        # enableACME = true;
        # forceSSL = true;
        locations = {
          "/" = {
            proxyPass = "http://localhost:3000";
          };
        };
      };
    };

    services.postgresql = {
      enable = true;
      package = pkgs.postgresql_11;
      enableTCPIP = true;
      authentication = pkgs.lib.mkOverride 10 ''
        local all all trust
        host all all ::1/128 trust
      '';
      initialScript = pkgs.writeText "backend-initScript" ''
        CREATE ROLE nuptialem WITH LOGIN PASSWORD 'nuptialem';
        CREATE DATABASE nuptialem;
        GRANT ALL PRIVILEGES ON DATABASE nuptialem TO nuptialem;
      '';
    };

    environment.systemPackages = with pkgs; [
      git
      msmtp
      vim
      emacs
    ];

    users.extraUsers.hhefesto = {
      createHome = true;
      isNormalUser = true;
      home = "/home/hhefesto";
      description = "Daniel Herrera";
      extraGroups = [ "wheel" "networkmanager" "docker" ];
      hashedPassword = "$6$/RvS0Se.iCx$A0eA/8PzgMj.Ms9ohNamfu53c9S.zdG30hEmUHLjmWP0CaXTPVA6QxGIZ6fy.abkjSOTJMAq7fFL6LUBGs4BU0";
      # shell = pkgs.zsh; #"/run/current-system/sw/bin/bash";
  };

  };
}

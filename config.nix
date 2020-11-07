{ packageOverrides = pkgs: {
    haskellPackages = pkgs.haskellPackages.override {
      overrides = haskellPackagesNew: haskellPackagesOld: {
        nuptialem = (import ./default.nix {}).nuptialem.components.exes.nuptialem;
      };
    };
    configuration-files-yesod = pkgs.runCommand "staticFilesYesod" { src = ./.; } ''
      mkdir -p $out/config
      mkdir -p $out/static
      cp -R $src/config $out/
      cp -R $src/static $out/
    '';
    # msmtp-etc = pkgs.runCommand "msmtpFiles" { src = ./.; } ''
    #   mkdir -p $out
    #   mkdir -p /etc/msmtp
    #   cp $src/laurus-msmtp /etc/msmtp/laurus-msmtp
    #   chmod 600 /etc/msmtp/laurus-msmtp
    #   echo "msmtp-etc succesful!"
    # '';
  };
}

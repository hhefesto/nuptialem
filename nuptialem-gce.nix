{
  nuptialem =
    { deployment.targetEnv = "gce";
      deployment.gce = {
        # credentials
        project = "nuptialem";
        serviceAccount = "hhefesto@nuptialem.iam.gserviceaccount.com";
        accessKey = "~/.ssh/nuptialem-c910f4ec2413.json";

        # instance properties
        region = "us-west2-b";
        # instanceType = "n1-standard-1";
        instanceType = "f1-micro";
        tags = ["crazy"];
        scheduling.automaticRestart = true;
        scheduling.onHostMaintenance = "MIGRATE";

        rootDiskSize = 10;
      } ;
    };
}

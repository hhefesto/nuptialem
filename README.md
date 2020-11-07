## Contributions

Any are more than welcome.

The easiest way for me to add your contribution is through a pull request.

## Development Environment

The rest of this ```README.md``` assumes you are in this environment.

```sh
# Be on channel NixOS 20.09 (I'll provide a propper nix-shell if someone asks)
nix-shell -p haskellPackages.yesod-bin nixops stack
```

## Deployment

### Prerequisites

0. Have a Google Compute Engine account with the credentials specified on ```nuptialem-gce.nix``` (proyect, serviceAccount, accessKey).
1. Open firewall of that project (option on the Google Cloud Platform under Networking > VPC network > Firewall: (Ingress; Apply to all; IP ranges: 0.0.0.0/0; tcp:20,80,3000,443,5432; udp:20,80,3000,443,5432; Allow; 1000; default; Off ))
   1.1 I surely opened more ports than needed, if you see a problem with this, do tell.

### Steps

```sh
cd /path/to/project/nuptialem
nixops create nuptialem-configuration.nix nuptialem-gce.nix -d nuptialem-gce
nixops deploy -d nuptialem-gce
```

### DNS
On ```nuptialem-configuration.nix``` your domain name is specified. You have to have an ```A Record``` pointing to the IP of your deployment.

To get the depoloyment's IP do:

``` sh
nixops info -d nuptialem-gce
```

## Development

Start a development server (i.e. local development) with:

```sh
yesod devel
```

As your code changes, your site will be automatically recompiled and redeployed to localhost.

Sometimes it just stalls. If that is the case, exit hitting ```Ctrl-c``` a couple of times, do a ```stack build``` (even just half way through) and retry ```yesod devel```

## Documentation

* https://nixos.org/
* https://hydra.nixos.org/build/115931128/download/1/manual/manual.html
* https://nixos.org/manual/nix/stable/
* Read the [Yesod Book](https://www.yesodweb.com/book) online for free
* Check [Stackage](http://stackage.org/) for documentation on the packages in your LTS Haskell version, or [search it using Hoogle](https://www.stackage.org/lts/hoogle?q=). Tip: Your LTS version is in your `stack.yaml` file.
* For local documentation, use:
	* `stack haddock --open` to generate Haddock documentation for your dependencies, and open that documentation in a browser
	* `stack hoogle <function, module or type signature>` to generate a Hoogle database and search for your query
* The [Yesod cookbook](https://github.com/yesodweb/yesod-cookbook) has sample code for various needs

## Getting Help

* Todo: put nix links
* Ask questions on [Stack Overflow, using the Yesod or Haskell tags](https://stackoverflow.com/questions/tagged/yesod+haskell)
* Ask the [Yesod Google Group](https://groups.google.com/forum/#!forum/yesodweb)
* There are several chatrooms you can ask for help:
	* For IRC, try Freenode#yesod and Freenode#haskell
	* [Functional Programming Slack](https://fpchat-invite.herokuapp.com/), in the #haskell, #haskell-beginners, or #yesod channels.

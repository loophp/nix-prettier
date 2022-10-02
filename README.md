[![Sponsor!][sponsor github]][sponsor github link]

# Nix Prettier

This [flake][nix flake] provides a quick way to run
[Prettier][prettier homepage] locally.

The idea behind this tool is to have a quick up-and-running tool to run prettier
using [Nix][nix homepage].

## Usage

While being extremely stable for years, "[flake][nix flake]" is an upcoming
feature of the Nix package manager. In order to use it, you must explicitly
enable it, please check the documentation to enable it, this is currently an
opt-in option.

To run prettier, run:

```shell
nix run github:loophp/nix-prettier --
```

## Contributing

Feel free to contribute by sending pull requests. We are a
usually very responsive team and we will help you going
through your pull request from the beginning to the end.

For some reasons, if you can't contribute to the code and
willing to help, sponsoring is a good, sound and safe way
to show us some gratitude for the hours we invested in this
package.

Sponsor me on [Github][sponsor github link] and/or any of
[the contributors][github contributors].

## Changelog

See [CHANGELOG.md][changelog file] for a changelog based on [git commits][github commit history].

For more detailed changelogs, please check [the release changelogs][github release changelogs].

[nix flake]: https://nixos.wiki/wiki/Flakes
[sponsor github]: https://img.shields.io/badge/Sponsor-Github-brightgreen.svg?style=flat-square
[sponsor github link]: https://github.com/sponsors/drupol
[nix homepage]: https://nixos.org/
[prettier homepage]: https://prettier.io/
[changelog file]: https://github.com/loophp/nix-prettier/blob/main/CHANGELOG.md
[github commit history]: https://github.com/loophp/nix-prettier/commits/main
[github release changelogs]: https://github.com/loophp/nix-prettier/releases
[github contributors]: https://github.com/loophp/nix-prettier/graphs/contributors

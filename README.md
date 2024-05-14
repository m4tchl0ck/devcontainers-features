# Development Container Features

<table style="width: 100%; border-style: none;"><tr>
<td style="width: 140px; text-align: center;"><a href="https://github.com/devcontainers"><img width="128px" src="https://raw.githubusercontent.com/microsoft/fluentui-system-icons/78c9587b995299d5bfc007a0077773556ecb0994/assets/Cube/SVG/ic_fluent_cube_32_filled.svg" alt="devcontainers organization logo"/></a></td>
<td>
<strong>Development Container 'Features'</strong><br />
<i>A set of simple and reusable Features. Quickly add a language/tool/CLI to a development container.
</td>
</tr></table>

'Features' are self-contained units of installation code and development container configuration. Features are designed
to install atop a wide-range of base container images.

Missing a CLI or language in your otherwise _perfect_ container image? Add the relevant Feature to the `features`
property of a [`devcontainer.json`](https://containers.dev/implementors/json_reference/#general-properties). A
[tool supporting the dev container specification](https://containers.dev/supporting) is required to build a development
container.

You may learn about Features at [containers.dev](https://containers.dev/implementors/features/), which is the website for the dev container specification.

## My Dev Container Features

This repo is contains my custom dev container features.

I cannot assure that the features here will remain unaffected by updates and similar changes.

| Feature                                                      | Description                                                       |
| ------------------------------------------------------------ | ----------------------------------------------------------------- |
| [powerlevel10k](src/powerlevel10k/README.md)                 | Another implementation for [powerlevel10k](https://github.com/romkatv/powerlevel10k) - zsh theme |
| [pact-cli](src/pact-cli/README.md)                           | CLI for [pact.io](https://pact.io) - a contract tests tool           |
| [structurizr-lite](src/structurizr-lite/README.md)           | Installation of [structurizr-lite](https://docs.structurizr.com/lite) - a tool for C4 diagrams    |

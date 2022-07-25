# vim2rockspec
Generate a .rockspec for your plugin repository ! Why ? 
because vim plugins can then declare their dependencies/metadata via the rockspec !
See [this blog post](https://teto.github.io/posts/2022-06-22-neovim-plugin-luarocks-2.html) if you are curious.

Usage:
`python3 ./main USER/REPO`

For instance:
`python3 ./main MunifTanjim/nui.nvim`

[Description](https://docs.github.com/en/rest/repos/repos#get-a-repository) of the github API to retreive your vim plugin description

# dependencies

- python3
- curl

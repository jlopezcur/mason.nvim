local server = require "nvim-lsp-installer.server"
local npm = require "nvim-lsp-installer.installers.npm"

return function(name, root_dir)
    return server.Server:new {
        name = name,
        root_dir = root_dir,
        languages = { "cucumber" },
        homepage = "https://github.com/cucumber/language-server",
        installer = npm.packages { "@cucumber/language-server" },
        default_options = {
            cmd_env = npm.env(root_dir),
        },
    }
end

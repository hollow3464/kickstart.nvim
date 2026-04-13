vim.filetype.add {
  extension = {
    twig = 'twig',
    templ = 'templ',
    pug = 'pug',
  },
  pattern = {
    ['.*/*Caddyfile'] = 'caddy',
    ['%.env.*'] = 'dotenv',
    ['.*/devcontainer.json'] = 'jsonc',
  },
}

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

-- Templ
vim.filetype.add { extension = { templ = 'templ' } }

-- Docker compose
vim.filetype.add {
  filename = {
    ['docker-compose.yaml'] = 'yaml.docker-compose',
    ['docker-compose.yml'] = 'yaml.docker-compose',
    ['compose.yaml'] = 'yaml.docker-compose',
    ['compose.yml'] = 'yaml.docker-compose',
    ['docker-bake.json'] = 'jsonc',
    ['docker-bake.hcl'] = 'hcl',
    ['docker-bake.override.json'] = 'jsonc',
    ['docker-bake.override.hcl'] = 'hcl',
  },
}

-- Atlas config
vim.filetype.add {
  filename = {
    ['atlas.hcl'] = 'atlas-config',
  },
  pattern = {
    ['.*/*.my.hcl'] = 'atlas-schema-mysql',
    ['.*/*.pg.hcl'] = 'atlas-schema-postgresql',
    ['.*/*.lt.hcl'] = 'atlas-schema-sqlite',
    ['.*/*.tu.hcl'] = 'atlas-schema-sqlite',
    ['.*/*.ch.hcl'] = 'atlas-schema-clickhouse',
    ['.*/*.ms.hcl'] = 'atlas-schema-mssql',
    ['.*/*.rs.hcl'] = 'atlas-schema-redshift',
    ['.*/*.test.hcl'] = 'atlas-test',
    ['.*/*.plan.hcl'] = 'atlas-plan',
    ['.*/*.rule.hcl'] = 'atlas-rule',
  },
}

vim.treesitter.language.register('hcl', 'atlas-config')
vim.treesitter.language.register('hcl', 'atlas-schema-mysql')
vim.treesitter.language.register('hcl', 'atlas-schema-postgresql')
vim.treesitter.language.register('hcl', 'atlas-schema-sqlite')
vim.treesitter.language.register('hcl', 'atlas-schema-clickhouse')
vim.treesitter.language.register('hcl', 'atlas-schema-mssql')
vim.treesitter.language.register('hcl', 'atlas-schema-redshift')
vim.treesitter.language.register('hcl', 'atlas-test')
vim.treesitter.language.register('hcl', 'atlas-plan')
vim.treesitter.language.register('hcl', 'atlas-rule')

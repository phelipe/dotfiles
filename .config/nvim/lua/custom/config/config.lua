---- add net filetype
vim.filetype.add { extension = { typ = 'typst' } } -- add typst filetype
vim.filetype.add { extension = { hurl = 'hurl' } } -- add hurl filetype
vim.filetype.add {
  filename = {
    ['docker-compose.yml'] = 'yaml.docker-compose',
    ['docker-compose.yaml'] = 'yaml.docker-compose',
    ['compose.yml'] = 'yaml.docker-compose',
    ['compose.yaml'] = 'yaml.docker-compose',
  },
}

local pylsp_config = {
  settings = {
    pylsp = {
      plugins = {
        -- disable everything except ruff
        pyflakes = { enabled = false },
        autopep8 = { enabled = false },
        black = { enabled = false },
        yapf = { enabled = false },
        pylint = { enabled = false },
        flake8 = { enabled = false },
        mypy = { enabled = false },
        mccabe = { enabled = false },
        pycodestyle = { enabled = false },
        pydocstyle = { enabled = false },
        linting = { enabled = false },
        ruff = {
          enabled = true,
        },
        rope_autoimport = {
          enabled = true,
          max_results = 10,
        },
      },
    },
  },
}

return pylsp_config

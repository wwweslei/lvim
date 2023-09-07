-- https://github.com/potamides/pantran.nvim
--
return {
  'potamides/pantran.nvim',
  config = function()
    require('pantran').setup({
      default_engine = 'google',
      engines = {
        google = {
          default_source = 'auto',
          default_target = 'es',
        }
      }

    })
  end
}

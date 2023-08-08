-- https://github.com/ziontee113/color-picker.nvim
--
return {
  "ziontee113/color-picker.nvim",
  config = function()
    require("color-picker").setup({
      -- Default configuration options
      -- Default color: 'normal'
      -- Available values:
      -- 'normal', 'reverse', 'italic', 'bold', 'bold,italic', etc.
      preferred_style = "normal",

      -- Default RGB colors
      -- rgb_fn = require("color-picker.rgb").rgb_fn,

      -- Default HSL colors
      -- hsl_fn = require("color-picker.hsl").hsl_fn,

      -- Default CMYK colors
      -- cmyk_fn = require("color-picker.cmyk").cmyk_fn,

      -- Default HEX colors
      -- hex_fn = require("color-picker.hex").hex_fn,

      -- Default CSS colors
      -- css_fn = require("color-picker.css").css_fn,

      -- Default all colors
      -- all_fn = require("color-picker.all").all_fn,

      -- Default colors
      -- colors = req
    })
  end
}
-- By default:

-- h and l will increment the color slider value by 1.

-- u and i / a and d / A and D will increment the color slider value by 5.

-- s and w / S and W will increment the color slider value by 10.

-- o will change your color output
--If you press n, you can press number keys to input the color value manually
-- Number 0 to 9 will set the slider at your cursor to certain percentages. 0 sets to 0%, 9 sets to 90%, 5 sets to 50%.

-- H sets to 0%, M sets to 50%, L sets to 100%.

-- Converting Colors (RGB/HEX/HSL)
-- When your cursor is on a corlor, use :PickColor to open up the picker,
-- then press o to change the output type to RGB/HEX/HSL.
-- Press Enter and the color under your cursor will be converted.
-- Press t to toggle Transparency Slider. While this mode is active,

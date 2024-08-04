local status, wezterm = pcall(require, 'wezterm')
local act = wezterm.action
local config = {}

config.font = wezterm.font('0xProto', {weight='Medium', stretch='Normal', style='Normal'})
config.font_size = 12.4
config.color_scheme = 'Kanagawa (Gogh)'
config.force_reverse_video_cursor = true
config.audible_bell='Disabled'
config.detect_password_input=true
config.use_fancy_tab_bar = false
config.use_ime = true
config.enable_tab_bar = true
config.window_decorations = 'NONE'
config.hide_tab_bar_if_only_one_tab = false
config.adjust_window_size_when_changing_font_size = false
config.tab_bar_at_bottom = true
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.keys = {
  { key = 'q', mods = 'CTRL|ALT', action = act.CloseCurrentTab{ confirm = true }},
  { key = 'p', mods = 'CTRL|ALT', action = act({ SpawnTab = 'DefaultDomain' })},
  { key = 'r', mods = 'CTRL|ALT', action = wezterm.action.ReloadConfiguration },
  { key = 'f', mods = 'CTRL|ALT', action = act.Search { CaseInSensitiveString = 'hash' }},
}

for i = 1, 8 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'CTRL|ALT',
    action = wezterm.action.MoveTab(i - 1),
  })
end

return config


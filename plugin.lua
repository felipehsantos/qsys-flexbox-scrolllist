--[[ #include "info.lua" ]]

-- Define the color of the plugin object in the design
function GetColor(props)
  return { 102, 102, 102 }
end

-- The name that will initially display when dragged into a design
function GetPrettyName(props)
  return "Scroll List, version " .. PluginInfo.Version
end

-- Optional function used if plugin has multiple pages
PageNames = { "Control", "About" }  --List the pages within the plugin
function GetPages(props)
  local pages = {}
  --[[ #include "pages.lua" ]]
  return pages
end
-- Optional function to define model if plugin supports more than one model
function GetModel(props)
  local model = {}
 return model
end

-- Define User configurable Properties of the plugin
function GetProperties()
  local props = {}
  return props
end

-- Optional function to define pins on the plugin that are not connected to a Control
function GetPins(props)
  local pins = {}
  return pins
end

-- Optional function to update available properties when properties are altered by the user
function RectifyProperties(props)
  return props
end

-- Defines the Controls used within the plugin
function GetControls(props)
  local ctrls = {}
  --[[ #include "controls.lua" ]]
  return ctrls
end

--Layout of controls and graphics for the plugin UI to display
function GetControlLayout(props)
  local layout = {}
  local graphics = {}
  --[[ #include "layout.lua" ]]
  return layout, graphics
end

--Start event based logic
if Controls then
  --[[ #include "runtime.lua" ]]
end

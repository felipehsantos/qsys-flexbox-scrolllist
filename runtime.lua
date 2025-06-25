
scrollUp    = Controls.ScrollButtons[1]      
scrollDown  = Controls.ScrollButtons[2]       
scrollBar   = Controls.ScrollBar            
scrollMeter = Controls.ScrollMeter
firstPage   = Controls.FirstPage
lastPage    = Controls.LastPage          

MAX_VISIBLE_ITEMS = Controls.MaxVisibleItems   -- DEFINES THE MAX BUTTON CAN BE VISIBLE INSIDE THE FLEX BOX 
TOTAL_ITEMS       = Controls.TotalItems        -- TOTAL AMOUNT BUTTONS IS INSIDE THE FLEXBOX
CONTROL_PREFIX    = Controls.ControlPrefix     -- ALL THE BUTTONS MUST BE THE SAME PREFIX TO THIS WORK PROPERLY
INTERFACE         = Controls.InterfaceName

discoveredInterfaces={}
currentScrollPosition = 1

timer=Timer.New()
recurrenceTimer= 0.5

comps = Component.GetComponents()
for _,comp in pairs(comps) do
  if string.find(comp.Type,"device_controller_proxy",1,1) then
    table.insert(discoveredInterfaces,comp.Name)
  end
end
INTERFACE.Choices=discoveredInterfaces

function updateVisibleItems(startIdx)
    local endIdx = math.min(startIdx + MAX_VISIBLE_ITEMS.Value - 1, TOTAL_ITEMS.Value)
    for i = 1, TOTAL_ITEMS.Value do
        control = Component.New(INTERFACE.String)
        control[CONTROL_PREFIX.String..i].IsInvisible = not (i >= startIdx and i <= endIdx)
        if not control.IsInvisible then
        --    control[CONTROL_PREFIX.String..i].Legend = "Item "..i
        end
    end
end

function setScrollPosition(value)
    currentScrollPosition = math.max(1, math.min(math.floor(value), maxScrollPosition))
    scrollMeter.Value = currentScrollPosition
    scrollBar.Value = currentScrollPosition
    if not pcall(updateVisibleItems,currentScrollPosition) then
      print "error: Check Interface Name,Control Prefix and all parameters!"
    end
end

function init()
  maxScrollPosition = TOTAL_ITEMS.Value - MAX_VISIBLE_ITEMS.Value + 1
  --print("SET THE UCI KNOB PROPERTIES MAX VALUE to "..maxScrollPosition)
  setScrollPosition(currentScrollPosition)
end

-- Events
scrollUp.EventHandler = function(up)
    if up.Boolean then 
      setScrollPosition(currentScrollPosition - 1) 
      scrollDirection = "up"
      timer:Start(recurrenceTimer)
    else
      timer:Stop()
    end
end

scrollDown.EventHandler = function(down)
    if down.Boolean then 
      setScrollPosition(currentScrollPosition + 1)
      scrollDirection = "down"
      timer:Start(recurrenceTimer)
    else
      timer:Stop()
    end
end

scrollBar.EventHandler = function() setScrollPosition(scrollBar.Value) end

firstPage.EventHandler = function (ev)
  if ev.Boolean then setScrollPosition(1) end
end 

lastPage.EventHandler = function (ev)
  if ev.Boolean then setScrollPosition(maxScrollPosition)end
end

INTERFACE.EventHandler = function ()
  init()
end

CONTROL_PREFIX.EventHandler = function ()
  init()
end

MAX_VISIBLE_ITEMS.EventHandler = function ()
  init()
end 

TOTAL_ITEMS.EventHandler = function()
  init()
end

timer.EventHandler = function ()
  if scrollDirection == "down" then
    setScrollPosition(currentScrollPosition + 1)
  elseif scrollDirection == "up" then
    setScrollPosition(currentScrollPosition - 1)
  end
end


init()

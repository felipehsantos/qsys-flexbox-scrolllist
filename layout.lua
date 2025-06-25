local CurrentPage = PageNames[props["page_index"].Value]
if CurrentPage == "Control" then
   table.insert(graphics,{
      Type = "GroupBox",
--      Text = "Control",
      Fill = {200,200,200},
      StrokeWidth = 0,
      Position = {0,0},
      Size = {360,410}
    })
   table.insert(graphics,{
      Type = "Label",
      Text = "Flexbox Scroll List",
      FontSize = 25,
      Font="Roboto",
      FontStyle="Black",
      Color={0,0,0},
      Fill = {0,0,0,0},
      StrokeWidth = 0,
      Position = {0,0},
      Size = {360,41}
    })	
--HEADERS----------------------------------------
	table.insert(graphics,{
      Type = "Header",
      Text = "Setup",
      Position = {12,65},
      Size = {330,14},
      FontSize = 14,
      HTextAlign = "Center"
    })
	table.insert(graphics,{
      Type = "Header",
      Text = "Controls",
      Position = {12,180},
      Size = {330,14},
      FontSize = 14,
      HTextAlign = "Center"
    })
--TEXTs--------------------------------------
	table.insert(graphics,{
      Type = "Text",
      Text = "UCI Controller:",
      Position = {69,96},
      Size = {128,16},
      FontSize = 11,
      HTextAlign = "Left"
    })
	table.insert(graphics,{
      Type = "Text",
      Text = "Max Visible Items:",
      Position = {69,112},
      Size = {128,16},
      FontSize = 11,
      HTextAlign = "Left"
    })
	table.insert(graphics,{
      Type = "Text",
      Text = "Total Items:",
      Position = {69,128},
      Size = {128,16},
      FontSize = 11,
      HTextAlign = "Left"
    })
	table.insert(graphics,{
      Type = "Text",
      Text = "Control Prefix:",
      Position = {69,144},
      Size = {128,16},
      FontSize = 11,
      HTextAlign = "Left"
    })
	table.insert(graphics,{
      Type = "Text",
      Text = "First Page",
      Position = {85,213},
      Size = {128,16},
      FontSize = 11,
      HTextAlign = "Left"
    })
	table.insert(graphics,{
      Type = "Text",
      Text = "Up Page",
      Position = {85,229},
      Size = {128,16},
      FontSize = 11,
      HTextAlign = "Left"
    })
	table.insert(graphics,{
      Type = "Text",
      Text = "Scroll Bar & Scroll Meter",
      Position = {85,281},
      Size = {128,16},
      FontSize = 11,
      HTextAlign = "Left"
    })
	table.insert(graphics,{
      Type = "Text",
      Text = "Down Page",
      Position = {85,337},
      Size = {128,16},
      FontSize = 11,
      HTextAlign = "Left"
    }) 
	table.insert(graphics,{
      Type = "Text",
      Text = "LastPage",
      Position = {85,353},
      Size = {128,16},
      FontSize = 11,
      HTextAlign = "Left"
    })
	table.insert(graphics,{
      Type = "Text",
      Text = "Max Value Scroll Bar",
      Position = {85,381},
      Size = {112,16},
      FontSize = 11,
      HTextAlign = "Left"
    })
--CONTROLS ----
    layout["InterfaceName"] = {
	  PrettyName = "UCI Controller",
	  Style = "ComboBox",
	  --Legend =""..btsidx,
	  Position = {197,96},
	  Size = {90,16}
	  --Color = {0,0,0\}
	}
    layout["MaxVisibleItems"] = {
	  PrettyName = "Max Visible Items",
	  Style = "Text",
	  --Legend =""..btsidx,
	  Position = {197,112},
	  Size = {90,16}
	  --Color = {0,0,0\}
	}
    layout["TotalItems"] = {
	  PrettyName = "Total Items",
	  Style = "Text",
	  --Legend =""..btsidx,
	  Position = {197,128},
	  Size = {90,16}
	  --Color = {0,0,0\}
	}
    layout["ControlPrefix"] = {
	  PrettyName = "Control Prefix",
	  Style = "Text",
	  --Legend =""..btsidx,
	  Position = {197,144},
	  Size = {90,16}
	  --Color = {0,0,0\}
	}
    layout["FirstPage"] = {
      PrettyName = "First Page",
      Style = "Button",
      --Legend =""..btsidx,
      Position = {213,213},
      Size = {54,16}
      --Color = {0,0,0}
  }
    layout["LastPage"] = {
      PrettyName = "Last Page",
      Style = "Button",
      --Legend =""..btsidx,
      Position = {213,353},
      Size = {54,16}
      --Color = {0,0,0}
  }
    layout["ScrollButtons 1"] = {
      PrettyName = "Scroll Button Up",
      Style = "Button",
      --Legend =""..btsidx,
      Position = {213,229},
      Size = {54,16}
      --Color = {0,0,0}
  }
    layout["ScrollButtons 2"] = {
      PrettyName = "Scroll Button Down",
      Style = "Button",
      --Legend =""..btsidx,
      Position = {213,337},
      Size = {54,16}
      --Color = {0,0,0}
  }
    layout["ScrollBar"] = {
	  PrettyName = "Scroll Bar",
	  Style = "Fader",
	  --Legend =""..btsidx,
	  Position = {213,245},
	  Size = {36,92}
	  --Color = {0,0,0\}
	}
    layout["ScrollMeter"] = {
	  PrettyName = "Scroll Meter",
	  Style = "Meter",
	  --Legend =""..btsidx,
	  Position = {249,245},
	  Size = {18,92}
	  --Color = {0,0,0\}
	}
    layout["MaxValueScroll"] = {
	  PrettyName = "Max Value Scroll Bar",
	  Style = "Text",
	  --Legend =""..btsidx,
	  Position = {197,381},
	  Size = {90,16},
    IsReadOnly = true
	  --Color = {0,0,0\}
	}
elseif CurrentPage == "About" then
	  table.insert(graphics,{
      Type = "GroupBox",
	--Text = "Control",
      Fill = {200,200,200},
      StrokeWidth = 0,
      Position = {0,0},
      Size = {360,290}
    })
	  table.insert(graphics,{
      Type = "Text",
      Text = "documentation on github",
      Position = {13,115},
      Size = {148,16},
      FontSize = 11,
	  Font="Roboto",
	  FontStyle="Regular",
      HTextAlign = "Left"
    })
	  table.insert(graphics,{
      Type = "Text",
      Text = "https://github.com/felipehsantos/qsys-flexbox-scrolllist",
      Position = {13,131},
      Size = {335,27},
      FontSize = 11,
	  Font="Roboto",
	  FontStyle="Regular",
      HTextAlign = "Left"
    })
end
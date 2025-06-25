local ctrls = {
{
	Name 			    = "InterfaceName",
	ControlType 	= "Text",
	UserPin 	    = true,
	PinStyle 	    = "Both",
	Count 			  = 1
	},
	{
	Name           	= "MaxVisibleItems",
	ControlType    	= "Knob",
	ControlUnit     = "Integer",
	Max				      = 200,
	Min				      = 1,
	UserPin 	      = true,
	PinStyle 	      = "Both",
	Count          = 1
	},
	{
	Name           	= "TotalItems",
	ControlType    	= "Knob",
	ControlUnit     = "Integer",
	Max				      = 200,
	Min				      = 1,
	UserPin 	      = true,
	PinStyle 	      = "Both",
	Count          = 1
	},
	{
	Name 			    = "ControlPrefix",
	ControlType 	= "Text",
	UserPin 	    = true,
	PinStyle 	    = "Both",
	Count 			  = 1
	},
	{
	Name           	= "ScrollBar",
	ControlType    	= "Knob",
	ControlUnit     = "Integer",
	Max				      = 100,
	Min				      = 1,
	UserPin 	      = true,
	PinStyle 	      = "Both",
	Count          = 1
	},
	{
	Name           	= "ScrollMeter",
	ControlType    	= "Knob",
	ControlUnit     = "Integer",
	Max				      = 100,
	Min				      = 1,
	UserPin 	      = true,
	PinStyle 	      = "Both",
	Count          = 1
	},
	{
	Name           = "ScrollButtons",
	ControlType    = "Button",
	ButtonType     = "Momentary",
	UserPin 	     = true,
	PinStyle 	     = "Both",
	Count          = 2	
	},
	{
	Name           = "FirstPage",
	ControlType    = "Button",
	ButtonType     = "Momentary",
	UserPin 	     = true,
	PinStyle 	     = "Both",
	Count          = 1	
	},
  {
	Name           = "LastPage",
	ControlType    = "Button",
	ButtonType     = "Momentary",
	UserPin 	     = true,
	PinStyle 	     = "Both",
	Count          = 1	
	}
}

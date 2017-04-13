{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 1,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 57.0, 79.0, 1218.0, 684.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 771.958862, 83.0, 22.0 ],
					"style" : "",
					"text" : "send fmIndex"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 380.5, 771.958862, 89.0, 22.0 ],
					"style" : "",
					"text" : "send amDepth"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 726.0, 771.958862, 69.0, 22.0 ],
					"style" : "",
					"text" : "send gain3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 650.5, 771.958862, 69.0, 22.0 ],
					"style" : "",
					"text" : "send gain2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 571.5, 771.958862, 69.0, 22.0 ],
					"style" : "",
					"text" : "send gain1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 300.5, 771.958862, 67.0, 35.0 ],
					"style" : "",
					"text" : "send resonance"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 241.5, 771.958862, 40.0, 35.0 ],
					"style" : "",
					"text" : "send cutoff"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 667.0, 406.5, 29.5, 22.0 ],
					"style" : "",
					"text" : "- 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 127.0, 275.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 42.0, 48.0, 20.0 ],
					"style" : "",
					"text" : "On"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 260.0, 406.5, 49.0, 22.0 ],
					"style" : "",
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.5, 294.0, 67.0, 22.0 ],
					"style" : "",
					"text" : "append hz"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 451.0, 220.0, 75.0, 22.0 ],
					"style" : "",
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 7,
					"outlettype" : [ "float", "float", "float", "float", "float", "float", "float" ],
					"patching_rect" : [ 526.0, 735.041138, 91.0, 22.0 ],
					"style" : "",
					"text" : "LFORouterBox"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 688.0, 704.0, 82.0, 22.0 ],
					"style" : "",
					"text" : "receive dest3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 590.0, 704.0, 82.0, 22.0 ],
					"style" : "",
					"text" : "receive dest2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 463.5, 704.0, 82.0, 22.0 ],
					"style" : "",
					"text" : "receive dest1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 808.0, 603.5, 69.0, 22.0 ],
					"style" : "",
					"text" : "send dest1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 808.0, 441.0, 69.0, 22.0 ],
					"style" : "",
					"text" : "send dest2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 808.0, 281.0, 69.0, 22.0 ],
					"style" : "",
					"text" : "send dest1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"items" : [ "None", ",", "Filter", "Cutoff", ",", "Filter", "Resonance", ",", "AM", "Depth", ",", "FM", "Index", ",", "Osc.", 1, "Gain", ",", "Osc.", 2, "Gain", ",", "Osc.", 3, "Gain" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 808.0, 569.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 167.0, 83.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"items" : [ "None", ",", "Filter", "Cutoff", ",", "Filter", "Resonance", ",", "AM", "Depth", ",", "FM", "Index", ",", "Osc.", 1, "Gain", ",", "Osc.", 2, "Gain", ",", "Osc.", 3, "Gain" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 808.0, 411.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 116.0, 83.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 808.0, 541.0, 72.0, 22.0 ],
					"style" : "",
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 808.0, 510.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 145.0, 83.0, 20.0 ],
					"style" : "",
					"text" : "Destination 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 808.0, 383.0, 72.0, 22.0 ],
					"style" : "",
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 808.0, 352.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 94.0, 83.0, 20.0 ],
					"style" : "",
					"text" : "Destination 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 808.0, 223.0, 72.0, 22.0 ],
					"style" : "",
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 808.0, 192.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 42.0, 83.0, 20.0 ],
					"style" : "",
					"text" : "Destination 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"items" : [ "None", ",", "Filter", "Cutoff", ",", "Filter", "Resonance", ",", "AM", "Depth", ",", "FM", "Index", ",", "Osc.", 1, "Gain", ",", "Osc.", 2, "Gain", ",", "Osc.", 3, "Gain" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 808.0, 251.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 64.0, 83.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 162.5, 565.0, 78.0, 22.0 ],
					"style" : "",
					"text" : "sineCreation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 593.0, 609.0, 46.0, 20.0 ],
					"style" : "",
					"text" : "-1 to 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 593.0, 575.0, 44.0, 20.0 ],
					"style" : "",
					"text" : "0 to 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 558.0, 547.0, 31.0, 22.0 ],
					"style" : "",
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 639.0, 220.0, 72.0, 22.0 ],
					"style" : "",
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 642.0, 431.0, 148.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 227.0, 167.5, 79.0, 22.0 ],
					"style" : "",
					"text" : "0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 759.0, 220.0, 31.0, 22.0 ],
					"style" : "",
					"text" : "+ 1."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-82",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 719.0, 220.0, 30.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 228.0, 64.0, 76.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 639.0, 192.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 228.0, 42.0, 76.0, 20.0 ],
					"style" : "",
					"text" : "Offset"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-64",
					"maxclass" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 639.0, 256.5, 148.0, 148.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 227.0, 88.0, 77.0, 77.0 ],
					"size" : 2.0,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 544.5, 518.5, 29.5, 22.0 ],
					"style" : "",
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 528.5, 406.5, 65.0, 22.0 ],
					"style" : "",
					"text" : "append %"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 467.5, 406.5, 42.0, 22.0 ],
					"style" : "",
					"text" : "* 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 451.0, 431.0, 148.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 167.5, 79.0, 22.0 ],
					"style" : "",
					"text" : "0. %"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-70",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 533.0, 220.0, 66.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 64.0, 76.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 451.0, 192.0, 143.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 42.0, 76.0, 20.0 ],
					"style" : "",
					"text" : "Depth"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-72",
					"maxclass" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 451.0, 256.5, 148.0, 148.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 88.0, 77.0, 77.0 ],
					"size" : 1.0,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 158.5, 192.0, 54.0, 20.0 ],
					"style" : "",
					"text" : "On/off"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 341.0, 406.5, 67.0, 22.0 ],
					"style" : "",
					"text" : "append hz"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 260.0, 431.0, 148.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.0, 167.5, 77.0, 22.0 ],
					"style" : "",
					"text" : "0.37306 hz"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-61",
					"maxclass" : "flonum",
					"maximum" : 20000.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 220.0, 148.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.0, 64.0, 76.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 192.0, 143.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.0, 42.0, 76.0, 20.0 ],
					"style" : "",
					"text" : "Rate"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-76",
					"maxclass" : "dial",
					"min" : 0.001,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 256.5, 148.0, 148.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.0, 88.0, 77.0, 77.0 ],
					"size" : 10.0,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 558.0, 575.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "- 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 663.0, 507.0, 125.0, 22.0 ],
					"style" : "",
					"text" : "1.862"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 522.0, 490.5, 41.0, 22.0 ],
					"style" : "",
					"text" : "/ 500."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 162.5, 506.0, 36.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 121.0, 46.0, 20.0 ],
					"style" : "",
					"text" : "Sine"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 517.0, 643.5, 57.0, 33.0 ],
					"style" : "",
					"text" : "between -1 and 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 162.5, 534.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 143.0, 46.0, 46.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 171.5, 378.0, 81.0, 22.0 ],
					"style" : "",
					"text" : "counter 1000"
				}

			}
, 			{
				"box" : 				{
					"hint" : "",
					"id" : "obj-7",
					"maxclass" : "itable",
					"name" : "",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 482.0, 244.0, 206.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 195.0, 391.0, 230.0 ],
					"range" : 1000,
					"size" : 1000,
					"style" : "",
					"table_data" : [ 0, 500, 503, 506, 509, 512, 515, 518, 521, 403, 404, 405, 406, 413, 414, 415, 416, 423, 424, 425, 426, 428, 429, 430, 431, 442, 443, 444, 445, 452, 453, 454, 455, 466, 466, 466, 466, 476, 477, 478, 479, 480, 481, 482, 483, 484, 496, 497, 498, 499, 504, 504, 504, 504, 514, 514, 514, 514, 529, 529, 529, 529, 535, 537, 539, 541, 544, 545, 546, 547, 549, 550, 551, 552, 553, 554, 555, 556, 559, 560, 561, 562, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 580, 583, 586, 589, 592, 593, 593, 594, 594, 595, 595, 596, 598, 600, 602, 604, 607, 608, 609, 610, 611, 612, 613, 614, 617, 618, 619, 620, 621, 622, 623, 624, 624, 625, 626, 627, 627, 628, 629, 630, 631, 631, 632, 633, 634, 636, 637, 638, 639, 640, 641, 642, 643, 650, 651, 651, 652, 652, 653, 653, 654, 656, 657, 658, 659, 661, 662, 663, 664, 665, 665, 665, 665, 665, 665, 665, 665, 665, 665, 666, 667, 668, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 669, 668, 668, 668, 668, 667, 667, 667, 667, 666, 666, 666, 666, 665, 665, 665, 665, 664, 663, 662, 662, 661, 660, 660, 659, 658, 657, 657, 656, 655, 654, 653, 652, 651, 651, 650, 649, 648, 648, 647, 646, 645, 644, 643, 642, 641, 641, 640, 639, 638, 638, 637, 636, 635, 634, 633, 632, 631, 631, 630, 629, 628, 627, 627, 626, 625, 624, 624, 623, 622, 621, 620, 619, 618, 617, 617, 616, 615, 614, 614, 613, 612, 611, 609, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 598, 597, 596, 595, 594, 593, 592, 592, 591, 590, 589, 588, 587, 585, 584, 582, 581, 579, 578, 576, 575, 573, 572, 571, 570, 569, 569, 568, 567, 566, 566, 565, 564, 563, 561, 560, 559, 558, 557, 556, 555, 554, 552, 551, 550, 549, 547, 546, 545, 544, 542, 541, 540, 539, 538, 537, 536, 535, 534, 533, 532, 531, 530, 528, 527, 526, 525, 523, 522, 521, 520, 518, 517, 516, 515, 514, 513, 512, 511, 511, 510, 509, 508, 508, 507, 506, 505, 505, 504, 503, 502, 501, 501, 500, 499, 498, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 487, 486, 485, 484, 483, 482, 481, 480, 478, 477, 476, 475, 474, 473, 472, 471, 469, 468, 467, 466, 465, 464, 463, 462, 460, 459, 458, 457, 456, 454, 453, 452, 451, 450, 448, 447, 446, 445, 444, 443, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 426, 425, 424, 423, 422, 421, 420, 419, 418, 417, 416, 415, 414, 413, 411, 410, 408, 407, 406, 404, 403, 402, 400, 399, 397, 396, 395, 393, 392, 391, 389, 388, 387, 385, 384, 382, 381, 380, 379, 377, 376, 375, 374, 372, 371, 370, 369, 367, 366, 365, 364, 363, 362, 360, 359, 358, 357, 356, 355, 353, 352, 351, 350, 349, 348, 347, 345, 344, 343, 342, 341, 340, 338, 337, 336, 335, 334, 333, 331, 330, 329, 328, 327, 326, 325, 324, 323, 322, 321, 320, 320, 319, 318, 317, 316, 315, 313, 312, 311, 310, 309, 308, 307, 306, 305, 304, 303, 301, 300, 299, 298, 297, 296, 295, 294, 293, 292, 290, 289, 288, 287, 286, 285, 284, 283, 282, 281, 280, 279, 278, 277, 276, 275, 274, 273, 272, 271, 270, 269, 268, 267, 266, 265, 265, 264, 264, 263, 263, 262, 262, 261, 260, 260, 259, 259, 258, 258, 257, 256, 255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 236, 235, 235, 234, 234, 234, 233, 233, 232, 232, 232, 231, 231, 230, 230, 230, 229, 229, 228, 228, 227, 227, 226, 226, 225, 225, 224, 224, 223, 223, 222, 222, 221, 221, 220, 220, 219, 219, 218, 218, 217, 216, 216, 215, 215, 214, 214, 213, 213, 212, 211, 211, 210, 210, 209, 209, 208, 207, 207, 207, 206, 206, 206, 205, 205, 205, 204, 204, 204, 203, 203, 203, 203, 202, 202, 202, 201, 201, 201, 200, 200, 200, 199, 199, 199, 198, 198, 198, 197, 197, 197, 197, 196, 196, 196, 195, 195, 195, 195, 194, 194, 194, 193, 192, 191, 190, 190, 189, 188, 187, 187, 186, 185, 184, 183, 182, 182, 181, 180, 180, 179, 178, 178, 177, 177, 176, 175, 175, 174, 173, 173, 172, 172, 171, 170, 170, 169, 168, 168, 167, 166, 166, 165, 165, 164, 163, 163, 162, 161, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 138, 137, 136, 135, 134, 133, 132, 132, 131, 130, 129, 128, 127, 126, 124, 123, 121, 120, 118, 117, 115, 114, 112, 111, 109, 108, 106, 105, 103, 102, 101, 100, 99, 99, 98, 97, 97, 96, 95, 94, 94, 93, 92, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 81, 80, 79, 79, 78, 77, 77, 76, 75, 75, 74, 73, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 53, 52, 52, 51, 51, 50, 50, 49, 49, 48, 48, 48, 48, 48, 48, 48, 48, 48, 49, 50, 51, 52, 55, 57, 59, 61, 63, 65, 67, 69, 75, 78, 81, 84, 89, 91, 94, 96, 98, 103, 105, 107, 109, 114, 117, 120, 123, 127, 129, 131, 133, 137, 139, 141, 143, 147, 149, 151, 153, 158, 162, 166, 170, 176, 178, 180, 182, 186, 188, 190, 192, 196, 198, 200, 202, 204, 206, 208, 210, 349 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 158.5, 220.0, 44.0, 44.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 64.0, 46.0, 46.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 107.5, 341.0, 111.0, 22.0 ],
					"style" : "",
					"text" : "metro @interval hz"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-1",
					"maxclass" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 645.0, 539.5, 148.0, 148.0 ],
					"size" : 2.0,
					"style" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 181.0, 440.5, 269.5, 440.5 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 172.0, 597.0, 246.75, 597.0, 246.75, 471.0, 269.5, 471.0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 473.0, 730.020569, 535.5, 730.020569 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 697.5, 730.020569, 607.5, 730.020569 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 535.5, 763.0, 251.0, 763.0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 547.5, 763.0, 310.0, 763.0 ],
					"source" : [ "obj-125", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 571.5, 763.0, 489.5, 763.0 ],
					"source" : [ "obj-125", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 559.5, 763.0, 390.0, 763.0 ],
					"source" : [ "obj-125", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 607.5, 763.0, 735.5, 763.0 ],
					"source" : [ "obj-125", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 595.5, 763.0, 660.0, 763.0 ],
					"source" : [ "obj-125", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 583.5, 763.0, 581.0, 763.0 ],
					"source" : [ "obj-125", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 269.5, 438.5, 257.25, 438.5, 257.25, 283.0, 195.0, 283.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 676.5, 429.25, 780.5, 429.25 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 648.5, 252.0, 713.5, 252.0, 713.5, 209.0, 728.5, 209.0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 350.5, 429.25, 398.5, 429.25 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 538.0, 429.25, 589.5, 429.25 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 531.5, 515.0, 554.0, 515.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 460.5, 252.0, 526.5, 252.0, 526.5, 209.0, 542.5, 209.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 567.5, 607.0, 595.5, 607.0, 595.5, 507.5, 654.5, 507.5 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 567.5, 607.0, 594.0, 607.0, 594.0, 496.0, 778.5, 496.0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 168.0, 311.0, 117.0, 311.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 648.5, 405.0, 676.5, 405.0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 648.5, 475.25, 579.5, 475.25 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 477.0, 438.5, 507.5, 438.5, 507.5, 395.5, 538.0, 395.5 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 269.5, 698.0, 509.5, 698.0, 509.5, 475.0, 531.5, 475.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 542.5, 248.75, 460.5, 248.75 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 460.5, 405.0, 477.0, 405.0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 460.5, 461.0, 564.5, 461.0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 269.5, 405.0, 350.5, 405.0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 554.0, 549.0, 567.5, 549.0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 768.5, 248.75, 648.5, 248.75 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 728.5, 252.0, 755.5, 252.0, 755.5, 209.0, 768.5, 209.0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 567.5, 561.0, 567.5, 561.0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "sineCreation.maxpat",
				"bootpath" : "~/Desktop/ThreeDeeSynth/max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LFORouterBox.maxpat",
				"bootpath" : "~/Desktop/ThreeDeeSynth/max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LFORouteAndScale.maxpat",
				"bootpath" : "~/Desktop/ThreeDeeSynth/max",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}

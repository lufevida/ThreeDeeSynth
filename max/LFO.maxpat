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
		"rect" : [ 57.0, 79.0, 845.0, 684.0 ],
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
					"fontname" : "Univia Pro Regular",
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 127.0, 275.0, 144.0, 18.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 8.0, 33.0, 47.0, 18.0 ],
=======
					"presentation_rect" : [ 8.0, 33.0, 48.0, 20.0 ],
>>>>>>> master:max/LFO.maxpat
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
					"fontname" : "Univia Pro Regular",
					"id" : "obj-33",
					"items" : [ "None", ",", "Filter", "Cutoff", ",", "Filter", "Resonance", ",", "AM", "Depth", ",", "FM", "Index", ",", "Osc.", 1, "Gain", ",", "Osc.", 2, "Gain", ",", "Osc.", 3, "Gain" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 808.0, 569.0, 100.0, 22.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 316.0, 158.0, 83.0, 20.0 ],
=======
					"presentation_rect" : [ 316.0, 158.0, 83.0, 22.0 ],
>>>>>>> master:max/LFO.maxpat
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Univia Pro Regular",
					"id" : "obj-34",
					"items" : [ "None", ",", "Filter", "Cutoff", ",", "Filter", "Resonance", ",", "AM", "Depth", ",", "FM", "Index", ",", "Osc.", 1, "Gain", ",", "Osc.", 2, "Gain", ",", "Osc.", 3, "Gain" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 808.0, 411.0, 100.0, 22.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 316.0, 107.0, 83.0, 20.0 ],
=======
					"presentation_rect" : [ 316.0, 107.0, 83.0, 22.0 ],
>>>>>>> master:max/LFO.maxpat
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
					"fontname" : "Univia Pro Regular",
					"id" : "obj-80",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 808.0, 510.0, 103.0, 18.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 316.0, 136.0, 86.0, 18.0 ],
=======
					"presentation_rect" : [ 316.0, 136.0, 83.0, 20.0 ],
>>>>>>> master:max/LFO.maxpat
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
					"fontname" : "Univia Pro Regular",
					"id" : "obj-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 808.0, 352.0, 103.0, 18.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 316.0, 85.0, 86.0, 18.0 ],
=======
					"presentation_rect" : [ 316.0, 85.0, 83.0, 20.0 ],
>>>>>>> master:max/LFO.maxpat
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
					"fontname" : "Univia Pro Regular",
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 808.0, 192.0, 100.0, 18.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 316.0, 33.0, 83.0, 18.0 ],
=======
					"presentation_rect" : [ 316.0, 33.0, 83.0, 20.0 ],
>>>>>>> master:max/LFO.maxpat
					"style" : "",
					"text" : "Destination 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Univia Pro Regular",
					"id" : "obj-38",
					"items" : [ "None", ",", "Filter", "Cutoff", ",", "Filter", "Resonance", ",", "AM", "Depth", ",", "FM", "Index", ",", "Osc.", 1, "Gain", ",", "Osc.", 2, "Gain", ",", "Osc.", 3, "Gain" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 808.0, 251.0, 100.0, 22.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 316.0, 55.0, 83.0, 20.0 ],
=======
					"presentation_rect" : [ 316.0, 55.0, 83.0, 22.0 ],
>>>>>>> master:max/LFO.maxpat
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
					"fontname" : "Univia Pro Regular",
					"id" : "obj-43",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 642.0, 431.0, 148.0, 20.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 227.0, 158.5, 79.0, 20.0 ],
=======
					"presentation_rect" : [ 227.0, 158.5, 79.0, 22.0 ],
>>>>>>> master:max/LFO.maxpat
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
					"fontname" : "Univia Pro Regular",
					"format" : 6,
					"id" : "obj-82",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 719.0, 220.0, 30.0, 20.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 228.0, 55.0, 76.0, 20.0 ],
=======
					"presentation_rect" : [ 228.0, 55.0, 76.0, 22.0 ],
>>>>>>> master:max/LFO.maxpat
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Univia Pro Regular",
					"id" : "obj-66",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 639.0, 192.0, 158.0, 18.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 228.0, 33.0, 80.0, 18.0 ],
=======
					"presentation_rect" : [ 228.0, 33.0, 76.0, 20.0 ],
>>>>>>> master:max/LFO.maxpat
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
					"presentation_rect" : [ 227.0, 79.0, 77.0, 77.0 ],
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
					"fontname" : "Univia Pro Regular",
					"id" : "obj-42",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 451.0, 431.0, 148.0, 20.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 142.0, 158.5, 79.0, 20.0 ],
=======
					"presentation_rect" : [ 142.0, 158.5, 79.0, 22.0 ],
>>>>>>> master:max/LFO.maxpat
					"style" : "",
					"text" : "0. %"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Univia Pro Regular",
					"format" : 6,
					"id" : "obj-70",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 533.0, 220.0, 66.0, 20.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 143.0, 55.0, 76.0, 20.0 ],
=======
					"presentation_rect" : [ 143.0, 55.0, 76.0, 22.0 ],
>>>>>>> master:max/LFO.maxpat
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Univia Pro Regular",
					"id" : "obj-71",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 451.0, 192.0, 147.0, 18.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 143.0, 33.0, 78.0, 18.0 ],
=======
					"presentation_rect" : [ 143.0, 33.0, 76.0, 20.0 ],
>>>>>>> master:max/LFO.maxpat
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
					"presentation_rect" : [ 143.0, 79.0, 77.0, 77.0 ],
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
					"fontname" : "Univia Pro Regular",
					"id" : "obj-60",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 260.0, 431.0, 155.0, 20.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 59.0, 158.5, 81.0, 20.0 ],
=======
					"presentation_rect" : [ 59.0, 158.5, 77.0, 22.0 ],
>>>>>>> master:max/LFO.maxpat
					"style" : "",
					"text" : "0.37306 hz"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Univia Pro Regular",
					"format" : 6,
					"id" : "obj-61",
					"maxclass" : "flonum",
					"maximum" : 20000.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 220.0, 148.0, 20.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 59.0, 55.0, 76.0, 20.0 ],
=======
					"presentation_rect" : [ 59.0, 55.0, 76.0, 22.0 ],
>>>>>>> master:max/LFO.maxpat
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Univia Pro Regular",
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 192.0, 139.0, 18.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 59.0, 33.0, 74.0, 18.0 ],
=======
					"presentation_rect" : [ 59.0, 33.0, 76.0, 20.0 ],
>>>>>>> master:max/LFO.maxpat
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
					"presentation_rect" : [ 59.0, 79.0, 77.0, 77.0 ],
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
					"fontname" : "Univia Pro Regular",
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 162.5, 506.0, 35.0, 18.0 ],
					"presentation" : 1,
<<<<<<< HEAD:max/LFOgordon.maxpat
					"presentation_rect" : [ 8.0, 112.0, 45.0, 18.0 ],
=======
					"presentation_rect" : [ 8.0, 112.0, 46.0, 20.0 ],
>>>>>>> master:max/LFO.maxpat
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
					"presentation_rect" : [ 8.0, 134.0, 46.0, 46.0 ],
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
					"presentation_rect" : [ 8.0, 186.0, 391.0, 230.0 ],
					"range" : 1000,
					"size" : 1000,
					"style" : "",
					"table_data" : [ 0, 500, 503, 506, 509, 512, 515, 518, 521, 525, 528, 531, 534, 537, 540, 543, 547, 550, 553, 556, 559, 562, 565, 568, 572, 575, 578, 581, 584, 587, 590, 593, 596, 599, 602, 606, 609, 612, 615, 618, 621, 624, 627, 630, 633, 636, 639, 642, 645, 648, 651, 654, 657, 660, 663, 666, 669, 672, 675, 678, 681, 684, 686, 689, 692, 695, 698, 701, 704, 707, 710, 712, 715, 718, 721, 724, 726, 729, 732, 735, 738, 740, 743, 746, 749, 751, 754, 757, 759, 762, 765, 767, 770, 773, 775, 778, 781, 783, 786, 788, 791, 793, 796, 798, 801, 803, 806, 808, 811, 813, 816, 818, 821, 823, 825, 828, 830, 833, 835, 837, 839, 842, 844, 846, 849, 851, 853, 855, 857, 860, 862, 864, 866, 868, 870, 872, 875, 877, 879, 881, 883, 885, 887, 889, 891, 893, 895, 896, 898, 900, 902, 904, 906, 908, 909, 911, 913, 915, 917, 918, 920, 922, 923, 925, 927, 928, 930, 931, 933, 935, 936, 938, 939, 941, 942, 944, 945, 946, 948, 949, 951, 952, 953, 955, 956, 957, 958, 960, 961, 962, 963, 964, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 981, 982, 983, 984, 985, 985, 986, 987, 987, 988, 989, 989, 990, 991, 991, 992, 992, 993, 993, 994, 994, 995, 995, 996, 996, 996, 997, 997, 997, 998, 998, 998, 998, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 999, 998, 998, 998, 998, 997, 997, 997, 996, 996, 996, 995, 995, 994, 994, 993, 993, 992, 992, 991, 991, 990, 989, 989, 988, 987, 987, 986, 985, 985, 984, 983, 982, 981, 981, 980, 979, 978, 977, 976, 975, 974, 973, 972, 971, 970, 969, 968, 967, 966, 964, 963, 962, 961, 960, 958, 957, 956, 955, 953, 952, 951, 949, 948, 946, 945, 944, 942, 941, 939, 938, 936, 935, 933, 931, 930, 928, 927, 925, 923, 922, 920, 918, 917, 915, 913, 911, 909, 908, 906, 904, 902, 900, 898, 896, 895, 893, 891, 889, 887, 885, 883, 881, 879, 877, 875, 872, 870, 868, 866, 864, 862, 860, 857, 855, 853, 851, 849, 846, 844, 842, 839, 837, 835, 833, 830, 828, 825, 823, 821, 818, 816, 813, 811, 808, 806, 803, 801, 798, 796, 793, 791, 788, 786, 783, 781, 778, 775, 773, 770, 767, 765, 762, 759, 757, 754, 751, 749, 746, 743, 740, 738, 735, 732, 729, 726, 724, 721, 718, 715, 712, 710, 707, 704, 701, 698, 695, 692, 689, 686, 684, 681, 678, 675, 672, 669, 666, 663, 660, 657, 654, 651, 648, 645, 642, 639, 636, 633, 630, 627, 624, 621, 618, 615, 612, 609, 606, 602, 599, 596, 593, 590, 587, 584, 581, 578, 575, 572, 568, 565, 562, 559, 556, 553, 550, 547, 543, 540, 537, 534, 531, 528, 525, 521, 518, 515, 512, 509, 506, 503, 499, 496, 493, 490, 487, 484, 481, 478, 474, 471, 468, 465, 462, 459, 456, 452, 449, 446, 443, 440, 437, 434, 431, 427, 424, 421, 418, 415, 412, 409, 406, 403, 400, 397, 393, 390, 387, 384, 381, 378, 375, 372, 369, 366, 363, 360, 357, 354, 351, 348, 345, 342, 339, 336, 333, 330, 327, 324, 321, 318, 315, 313, 310, 307, 304, 301, 298, 295, 292, 289, 287, 284, 281, 278, 275, 273, 270, 267, 264, 261, 259, 256, 253, 250, 248, 245, 242, 240, 237, 234, 232, 229, 226, 224, 221, 218, 216, 213, 211, 208, 206, 203, 201, 198, 196, 193, 191, 188, 186, 183, 181, 178, 176, 174, 171, 169, 166, 164, 162, 160, 157, 155, 153, 150, 148, 146, 144, 142, 139, 137, 135, 133, 131, 129, 127, 124, 122, 120, 118, 116, 114, 112, 110, 108, 106, 104, 103, 101, 99, 97, 95, 93, 91, 90, 88, 86, 84, 82, 81, 79, 77, 76, 74, 72, 71, 69, 68, 66, 64, 63, 61, 60, 58, 57, 55, 54, 53, 51, 50, 48, 47, 46, 44, 43, 42, 41, 39, 38, 37, 36, 35, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 18, 17, 16, 15, 14, 14, 13, 12, 12, 11, 10, 10, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 3, 3, 3, 2, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 10, 10, 11, 12, 12, 13, 14, 14, 15, 16, 17, 18, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 35, 36, 37, 38, 39, 41, 42, 43, 44, 46, 47, 48, 50, 51, 53, 54, 55, 57, 58, 60, 61, 63, 64, 66, 68, 69, 71, 72, 74, 76, 77, 79, 81, 82, 84, 86, 88, 90, 91, 93, 95, 97, 99, 101, 103, 104, 106, 108, 110, 112, 114, 116, 118, 120, 122, 124, 127, 129, 131, 133, 135, 137, 139, 142, 144, 146, 148, 150, 153, 155, 157, 160, 162, 164, 166, 169, 171, 174, 176, 178, 181, 183, 186, 188, 191, 193, 196, 198, 201, 203, 206, 208, 211, 213, 216, 218, 221, 224, 226, 229, 232, 234, 237, 240, 242, 245, 248, 250, 253, 256, 259, 261, 264, 267, 270, 273, 275, 278, 281, 284, 287, 289, 292, 295, 298, 301, 304, 307, 310, 313, 315, 318, 321, 324, 327, 330, 333, 336, 339, 342, 345, 348, 351, 354, 357, 360, 363, 366, 369, 372, 375, 378, 381, 384, 387, 390, 393, 397, 400, 403, 406, 409, 412, 415, 418, 421, 424, 427, 431, 434, 437, 440, 443, 446, 449, 452, 456, 459, 462, 465, 468, 471, 474, 478, 481, 484, 487, 490, 567, 500 ]
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
					"presentation_rect" : [ 8.0, 55.0, 46.0, 46.0 ],
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
					"midpoints" : [ 350.5, 429.25, 405.5, 429.25 ],
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

{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 346.0, 158.0, 524.0, 623.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
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
					"id" : "obj-6",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 787.0, 247.5, 156.0, 47.0 ],
					"style" : "",
					"text" : "changes the y axis of what you are viewing in this window"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 684.0, 338.5, 88.0, 20.0 ],
					"style" : "",
					"text" : "prepend offset 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 684.0, 247.5, 37.0, 20.0 ],
					"style" : "",
					"text" : "* -426"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Select which tab to display on the right.",
					"id" : "obj-3",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 676.0, 134.5, 109.0, 153.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.0, 145.0, 422.0, 27.5 ],
					"rounded" : 0.0,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "Tabs",
							"parameter_shortname" : "Tabs",
							"parameter_type" : 3,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 0.0 ],
							"parameter_invisible" : 2
						}

					}
,
					"segmented" : 1,
					"spacing_y" : 2.0,
					"style" : "chiba",
					"tabs" : [ "LFO1", "LFO2", "LFO3" ],
					"varname" : "Tabs"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "LFOShell.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, -852.0 ],
					"patching_rect" : [ 48.0, 52.0, 430.0, 439.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.0, 180.0, 422.0, 434.0 ],
					"varname" : "tabs",
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 693.5, 368.5, 506.5, 368.5, 506.5, 26.0, 57.5, 26.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-3" : [ "Tabs", "Tabs", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "LFOShell.maxpat",
				"bootpath" : "~/Documents/workspace2/ThreeDeeSynth/max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LFO.maxpat",
				"bootpath" : "~/Documents/workspace2/ThreeDeeSynth/max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sineCreation.maxpat",
				"bootpath" : "~/Documents/workspace2/ThreeDeeSynth/max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LFORouterBox.maxpat",
				"bootpath" : "~/Documents/workspace2/ThreeDeeSynth/max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "LFORouteAndScale.maxpat",
				"bootpath" : "~/Documents/workspace2/ThreeDeeSynth/max",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}

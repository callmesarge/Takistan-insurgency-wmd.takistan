/* Briefing
 * The briefing can be defined by calling FHQ_TT_addBriefing.
 * The array is built like this.
 * The first element should be a filter (side, group, faction, or a piece of script). All units matching the 
 * filter will see the briefing
 * This is followed by pairs of strings, a head line, and an actual text.
 * Briefings are added in the order in which they appear for any unit that matches
 * the last filter.
 */
[
	west, 
		["Mission",
			"Clear all of Takistan of insurgents and bring peace to local population"],
			
		["Situation",
			"Clear Takistan. Take as little casualties as possible and watch your fire with civilians"],
			
		["Execution",
			""],
			
		["Allied forces",
			"NATO, USMC"],
			
		["Weather",
			"Look up"],
			
		["Credits",
			"Mission by Max Delaney \/ npmproductions13.  Scripts used; =BTS= Revive by Giallustio, EOS by Bangabob, Roadside IEDs by brians200, VAS by Tonic."]
    
] call FHQ_TT_addBriefing;

[
	west,                                                           // Filter
    	["task1",										// Task name
         "Take back Takistan and bring back some peace",				       // Task text in briefing
         "Take Over Takistan Good Luck",							// Task title in briefing
         "!",											// Waypoint text
          ""											// Optional: Position or object
														// Optional: Initial state
        ]
] call FHQ_TT_addTasks;
private _station = _this;

private _town = (getpos _station) call nearestTown; 
_garrison = player getVariable format['police%1',_town];
/*
_station addAction ["Manage", {		
	disableSerialization;
	
	_town = (getpos player) call nearestTown; 
	if !(_town in (server getvariable ["NATOabandoned",[]])) exitWith {"This police station is under NATO control" call notify_minor};
	
	_garrison = player getVariable [format['police%1',_town],0];
	createDialog "OT_dialog_police";
	
	_effect = floor(_garrison / 2);
	if(_effect == 0) then {_effect = "None"} else {_effect = format["+%1 Stability/hr",_effect]};

	((findDisplay 9000) displayCtrl 1100) ctrlSetStructuredText parseText format["<t size=""2"" align=""center"">%1 Police Station</t>",_town];
	((findDisplay 9000) displayCtrl 1101) ctrlSetStructuredText parseText format["<t size=""1.5"" align=""center"">Police: %1</t>",_garrison];
	((findDisplay 9000) displayCtrl 1104) ctrlSetStructuredText parseText format["<t size=""1.2"" align=""center"">Effects</t><br/><br/><t size=""0.8"" align=""center"">%1</t>",_effect];
	
	
},nil,5,true,true,"","alive _target",5];
*/
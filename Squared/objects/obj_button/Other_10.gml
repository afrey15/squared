/// @description Button click

// carry out button action
switch (action)
{
	case "local":
		// local game
		room_goto(room0);
		break;
	case "online":
		// online game
		scr_stateSwitch(STATE_MAIN, STATE_ONLINE);
		break;
	case "createServer":
        // host server
        with (global.OnlineObject) event_user(1);
        break;
    case "directConnect":
        // direct connect
        with (global.OnlineObject) event_user(2);
        break;
	case "backMainOnline":
        // return to main menu from the online menu
        scr_stateSwitch(STATE_ONLINE, STATE_MAIN);
        break;
	case "quit":
		// quit game
		game_end();
		break;
	default:
		// do nothing
}
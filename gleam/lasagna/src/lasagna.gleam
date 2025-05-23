// Please define the expected_minutes_in_oven function
pub fn expected_minutes_in_oven()->Int {
	40
}

// Please define the remaining_minutes_in_oven function
pub fn remaining_minutes_in_oven(minutes:Int) {
	expected_minutes_in_oven() - minutes
}

// Please define the preparation_time_in_minutes function
pub fn preparation_time_in_minutes(layers:Int)->Int {
	let minutes_per_layer = 2
	minutes_per_layer * layers
}

// Please define the total_time_in_minutes function
pub fn total_time_in_minutes(layers:Int, minutes_in_oven:Int)->Int {
	preparation_time_in_minutes(layers) + minutes_in_oven
}

// Please define the alarm function
pub fn alarm() -> String {
	"Ding!"
}

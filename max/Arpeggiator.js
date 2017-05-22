autowatch = 1
outlets = 3

var notes = new Array()
var dynamics = new Array(128)
var randomizer = 0

function randomize(value) {
	randomizer = value
}

function notein(pitch, velocity) {
	if (velocity != 0) {
		notes.push(pitch)
		dynamics[pitch] = velocity
	} else {
		// handle note off
		notes.splice(notes.indexOf(pitch), 1)
	}
	outlet(2, notes.length - 1)
}

function note(index) {
	if (notes[index]) {
		// set velocity first, then output note
		outlet(1, dynamics[notes[index]])
		if (randomizer) {
			var randomOctave = Math.floor((Math.random() * 6) - 3) * 12
			outlet(0, notes[index] + randomOctave)
		} else {
			outlet(0, notes[index])
		}
	}
}
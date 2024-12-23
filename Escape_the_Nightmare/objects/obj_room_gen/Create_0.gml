win = false

randomize() //Randomize seed

//List of rooms within the floorplan. -1 indicates no room.
rooms = [
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
]
//Room order begins at 0 (starting room), and rooms 1—(num rooms) are generated branching off of that

rooms[35] = 0 //Place starting room in the center
level = 0
num_rooms = round(random(2) + 5 + level * 2.6)
rooms_placed = 0

//Start level generation by placing the starting cell in a queue
queue = ds_queue_create()
ds_queue_enqueue(queue, 35)

while (rooms_placed < num_rooms and not ds_queue_empty(queue)) {
	var cell = ds_queue_dequeue(queue)
	var looking = cell //Which cell we're currently inspecting
	
	//Look at each cardinal direction (In order, up, right, bottom, left)
	
	//UP
	if cell + 10 < array_length(rooms) { looking = cell + 10 }
	
	//Check how many neighbors the cell has around it
	var neighbor_neighbors = 0
	try { if rooms[looking + 10] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	try { if rooms[looking - 10] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	try { if rooms[looking + 1] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	try { if rooms[looking - 1] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	
	if rooms[looking] == -1 and neighbor_neighbors < 2 and rooms_placed < num_rooms { //Skip if cell is already occupied or has too many neighbors		
		if random(10) >= 5 { //50% chance to place a room
			rooms[looking] = 0 
			ds_queue_enqueue(queue, looking)
			rooms_placed += 1
			} 
	}
	//END UP
	
	//DOWN
	if cell - 10 > 0 { looking = cell - 10 }
	
	//Check how many neighbors the cell has around it
	var neighbor_neighbors = 0
	try { if rooms[looking + 10] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	try { if rooms[looking - 10] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	try { if rooms[looking + 1] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	try { if rooms[looking - 1] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	
	if rooms[looking] == -1 and neighbor_neighbors < 2 and rooms_placed < num_rooms { //Skip if cell is already occupied or has too many neighbors		
		if random(10) >= 5 { //50% chance to place a room
			rooms[looking] = 0 
			ds_queue_enqueue(queue, looking)
			rooms_placed += 1
			} 
	}
	//END DOWN
	
	//LEFT
	if cell - 1 > 0 { looking = cell - 1 }
	
	//Check how many neighbors the cell has around it
	var neighbor_neighbors = 0
	try { if rooms[looking + 10] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	try { if rooms[looking - 10] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	try { if rooms[looking + 1] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	try { if rooms[looking - 1] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	
	if rooms[looking] == -1 and neighbor_neighbors < 2 and rooms_placed < num_rooms { //Skip if cell is already occupied or has too many neighbors		
		if random(10) >= 5 { //50% chance to place a room
			rooms[looking] = 0 
			ds_queue_enqueue(queue, looking)
			rooms_placed += 1
			} 
	}
	//END LEFT
	
	//RIGHT
	if cell + 1 < array_length(rooms) { looking = cell + 1 }
	
	//Check how many neighbors the cell has around it
	var neighbor_neighbors = 0
	try { if rooms[looking + 10] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	try { if rooms[looking - 10] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	try { if rooms[looking + 1] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	try { if rooms[looking - 1] != -1 { neighbor_neighbors += 1 } } catch(_exception) {  }
	
	if rooms[looking] == -1 and neighbor_neighbors < 2 and rooms_placed < num_rooms { //Skip if cell is already occupied or has too many neighbors		
		if random(10) >= 5 { //50% chance to place a room
			rooms[looking] = 0 
			ds_queue_enqueue(queue, looking)
			rooms_placed += 1
			} 
	}
	//END RIGHT
	
	//If queue is empty, but number of rooms is a good margin less than where it should be, reseed the starting room
	if (rooms_placed < num_rooms - 2) { ds_queue_enqueue(queue, 35) }
	
} //END WHILE

//Add in different room patterns (cell IDs other than 0)
for (var i = 0; i < array_length(rooms); i+=1) {
	if (rooms[i] != -1 and i != 35) { //Check if a room has been placed, skipping the starting room
		rooms[i] = irandom_range(1,4) //Give each room a random ID that will determine its room layout.
		//TODO: add more room patterns, and ensure identical patterns cannot be placed near eachother.
		

	}
}

//ROOMS HAVE BEEN GENERATED
//Go to starting room
current_room_idx = 35
prev_dir = -1 //Where to place the player at room start
room_goto(rm_start)
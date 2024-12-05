if (!invulnerable) { // Check if the player is vulnerable
    hp -= 1;       // Subtract HP
    invulnerable = true; // Make the player invulnerable
    alarm[2] = 30;    // Set a 30-frame invulnerability timer
	instance_destroy(other)
}

is_hit = true
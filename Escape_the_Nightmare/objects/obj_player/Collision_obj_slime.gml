if (!invulnerable) {
    hp -= 1;            // Initial damage on collision
    invulnerable = true; // Make the player temporarily invulnerable
    alarm[2] = 200;       // Set invulnerability timer

    is_burning = true; 
}

is_hit = true;

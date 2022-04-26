canJump = true
xSpeed = 3
maxSpeed = 5
xDirection = 0
xVector = xSpeed * xDirection
grv = .15
yVector = 0
jumpForce = -4
backpackEquiped = true
airborneTimer = 0
jumpsLeft  = 4
dashSpeed = 0
canDash = true
beltspeedx = 0
recentDirection = 1
enum states {
	idle,
	walking,
	jumping,
	slamming,
	dashing
}

state = states.idle

states_array[states.idle] = statePlayerIdle
states_array[states.walking] = statePlayerWalking
states_array[states.jumping] = statePlayerJumping
states_array[states.slamming] = statePlayerSlamming
states_array[states.dashing] = statePlayerDash

spritesB_array[states.idle] = sPlayerIdle
spritesB_array[states.walking] = sPlayerWalking
spritesB_array[states.jumping] = sPlayerJumping
spritesB_array[states.slamming] = sPlayerSlamming
spritesB_array[states.dashing] = sPlayerSlamming

spritesNB_array[states.idle] = sPlayerNoBackpackIdle
spritesNB_array[states.walking] = sPlayerNoBackpackWalking
spritesNB_array[states.jumping] = sPlayerNoBackpackJumping
spritesNB_array[states.slamming] = sPlayerNoBackpackSlamming
spritesNB_array[states.dashing] = sPlayerSlamming


global.hp = 2
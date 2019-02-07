//This file was generated from (Academic) UPPAAL 4.0.13 (rev. 4577), September 2010

/*
only if committer is honest
*/
A[] (time >= PROT_TIMELOCK) imply (parties[BOB].know_secret[0])

/*
only if committer is honest
*/
A[] (time >= PROT_TIMELOCK) imply (hold_bitcoins(parties[ALICE]) == 1)

/*

*/
A[] (time >= PROT_TIMELOCK+MAX_LATENCY) imply (hold_bitcoins(parties[BOB]) == 1 or parties[BOB].know_secret[0] or BobTA.failure)

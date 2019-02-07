//This file was generated from (Academic) UPPAAL 4.0.13 (rev. 4577), September 2010

/*

*/
A[] (time >=  4*MAX_LATENCY) imply (parties[ALICE].know_secret[SB_SEC] and parties[BOB].know_secret[SA_SEC] and hold_bitcoins(parties[ALICE]) == 2 and hold_bitcoins(parties[BOB]) == 2)

/*

*/
A[] (time >= PROT_TIMELOCK) imply hold_bitcoins(parties[BOB]) >= 2

/*

*/
A[] ((time >= PROT_TIMELOCK+2*MAX_LATENCY) imply (!parties[ALICE].know_secret[SB_SEC] or parties[BOB].know_secret[SA_SEC] or hold_bitcoins(parties[BOB]) >= 3))

/*

*/
A[] (time >= PROT_TIMELOCK) imply hold_bitcoins(parties[ALICE]) >= 2

/*

*/
A[] ((time >= PROT_TIMELOCK+2*MAX_LATENCY) imply (parties[ALICE].know_secret[SB_SEC] or !parties[BOB].know_secret[SA_SEC] or hold_bitcoins(parties[ALICE]) >= 3))

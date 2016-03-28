#Guessing Game

The Guessing Game randomly generates a number from 1 to 100 then prompts the user to enter guesses up to five times. Each guess is checked against the randomly generated number that has been saved in the meantime. Along the way, users will receive hints about the proximity of their guess to the answer. If someone attempts to guess the same answer more than once, the program will know. Get the answer in five tries or enjoy the surprise!


The Guessing Game was the first assignment in the back end engineering class at the Iron Yard that we pushed to github. The assignment itself was a practice in tracking workflow. Initially, it's tempting to order the primary loop which checks guesses against the answer so that guesses are checked against the answer first and then filters through the other options. However, workflow requires reordering these checks so that repeated answers and the number of attempts are checked first, because not doing so either allows people to guess too many times or won't catch that a guess has already been attempted once before.

/*#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>

// State Structure
typedef struct
{
    int id;
    bool isAccepting;
} State;

// Transition Structure
typedef struct
{
    int from;
    int to;
    char symbol;
} Transition;

// DFA Structure
typedef struct
{
    State *states;
    Transition *transitions;
    int numStates;
    int numTransitions;
    int startState;
} DFA;

// Function to simulate input string over a DFA
bool simulateDfa(DFA *dfa, const char *inputString) {
    int currentState = dfa->startState;
    int i = 0;

    while (inputString[i] != '\0') {
        char symbol = inputString[i];
        bool transitionFound = false;

        for (int j = 0; j < dfa->numTransitions; ++j) {
            if (dfa->transitions[j].from == currentState && dfa->transitions[j].symbol == symbol) {
                currentState = dfa->transitions[j].to;
                transitionFound = true;
                break;
            }
        }

        if (!transitionFound) {
            return false; // No valid transition for the symbol, reject the string
        }

        ++i;
    }

    // Check if the final state is an accepting state
    for (int k = 0; k < dfa->numStates; k++) {
        if (dfa->states[k].id == currentState && dfa->states[k].isAccepting) {
            return true; // Input string is accepted
        }
    }

    return false; // Input string is not accepted
}
*/
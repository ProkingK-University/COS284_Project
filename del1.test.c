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

DFA *readDfa(const char *filename){
    FILE *file = fopen(filename, "r");
    if (file == NULL) {
        printf("Error: Cannot open file '%s'\n", filename);
        return NULL;
    }

    DFA *dfa = (DFA *)malloc(sizeof(DFA));
    if (dfa == NULL) {
        fclose(file);
        printf("Error: Memory allocation failed\n");
        return NULL;
    }

    // Read the number of states and transitions
    if (fscanf(file, "%d,%d\n", &dfa->numStates, &dfa->numTransitions) != 2)
    {
        fclose(file);
        return NULL; // Incorrect format
    }

    // Allocate memory for states and transitions
    dfa->states = (State *)malloc(sizeof(State) * dfa->numStates);
    dfa->transitions = (Transition *)malloc(sizeof(Transition) * dfa->numTransitions);

    // Read state IDs
    for (int i = 0; i < dfa->numStates; i++) {
        fscanf(file, "%d,", &dfa->states[i].id);
        dfa->states[i].isAccepting = false;
    }

    fscanf(file, "\n");

    // Read accepting state IDs
    int acceptingStateId;
    int lastSetAcceptingID = -1;
    while (fscanf(file, "%d", &acceptingStateId) == 1) {
        if(dfa->states[acceptingStateId].isAccepting || acceptingStateId <= lastSetAcceptingID){
            fseek(file, -1, SEEK_CUR);
            break;
        }
        dfa->states[acceptingStateId].isAccepting = true;
        fscanf(file, ",");
        lastSetAcceptingID = acceptingStateId;
    }


    fscanf(file, "\n");


    // Read transitions
    for (int i = 0; i < dfa->numTransitions; i++) {
        fscanf(file, "%d,%d,%c", &dfa->transitions[i].from, &dfa->transitions[i].to, &dfa->transitions[i].symbol);
    }

    // Set the start state to 0
    dfa->startState = 0;

    fclose(file);
    return dfa;
}*/
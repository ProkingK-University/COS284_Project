#include "dfa.h"

/*bool containsSymbol(const char* string){

}

int countNumOfSymbols(const char* symbol_string){

}*/

bool sameLanguage(DFA *dfa1, DFA *dfa2){
    // Create a new DFA A3 based on the given DFAs dfa1 and dfa2
    /*DFA *dfa3 = (DFA *)malloc(sizeof(DFA));
    if (dfa3 == NULL) {
        printf("Error: Memory allocation failed\n");
        return false;
    }

    // Initialize the number of states and transitions for A3
    dfa3->numStates = dfa1->numStates * dfa2->numStates;
    dfa3->numTransitions = dfa1->numTransitions * dfa2->numTransitions;

    // Allocate memory for states and transitions in A3
    dfa3->states = (State *)malloc(sizeof(State) * dfa3->numStates);
    dfa3->transitions = (Transition *)malloc(sizeof(Transition) * dfa3->numTransitions);

    if (dfa3->states == NULL || dfa3->transitions == NULL) {
        printf("Error: Memory allocation failed\n");
        free(dfa3->states);
        free(dfa3->transitions);
        free(dfa3);
        return false;
    }

    // Create states and transitions for A3 based on dfa1 and dfa2
    int currentState3 = 0;
    for (int i = 0; i < dfa1->numStates; i++) {
        for (int j = 0; j < dfa2->numStates; j++) {
            dfa3->states[currentState3].id = currentState3;
            dfa3->states[currentState3].isAccepting = (dfa1->states[i].isAccepting && !dfa2->states[j].isAccepting);

            for (int k = 0; k < dfa1->numTransitions; k++) {
                for (int l = 0; l < dfa2->numTransitions; l++) {
                    dfa3->transitions[currentState3 * dfa1->numTransitions * dfa2->numTransitions + k * dfa2->numTransitions + l].from = currentState3;
                    dfa3->transitions[currentState3 * dfa1->numTransitions * dfa2->numTransitions + k * dfa2->numTransitions + l].to = i * dfa2->numStates + j;
                    dfa3->transitions[currentState3 * dfa1->numTransitions * dfa2->numTransitions + k * dfa2->numTransitions + l].symbol = dfa1->transitions[k].symbol;
                }
            }

            currentState3++;
        }
    }
    // Define the initial state and alphabet for A3
    dfa3->startState = 0;

    // Check reachability from the initial state in A3
    printf("Error: Got to line 57\n");
    int *stack = (int *)malloc(dfa3->numStates * sizeof(int));
    printf("Error: Got to line 59\n");
    //printf("Num of states: %d\n", dfa3->numStates);
    //bool *visited = (bool *)malloc(dfa3->numStates * sizeof(bool));
    unsigned char *visited = (unsigned char *)malloc(dfa3->numStates);
    printf("Error: Got to line 59\n");
    if (visited == NULL) {
        printf("Error: Memory allocation failed\n");
        free(dfa3->states);
        free(dfa3->transitions);
        free(dfa3);
        return false;
    }

    // Initialize the visited array to 0 (false) for all elements
    memset(visited, 0, dfa3->numStates);

    //printf("Error: Got to line 68\n");

    
    if (stack == NULL) {
        printf("Error: Memory allocation failed\n");
        free(dfa3->states);
        free(dfa3->transitions);
        free(dfa3);
        free(visited);
        return false;
    }

    int top = 0;
    stack[top] = dfa3->startState;
    visited[dfa3->startState] = true;

    while (top >= 0) {
        int currentState = stack[top--];

        for (int i = 0; i < dfa3->numTransitions; i++) {
            if (dfa3->transitions[i].from == currentState && !visited[dfa3->transitions[i].to]) {
                stack[++top] = dfa3->transitions[i].to;
                visited[dfa3->transitions[i].to] = true;
            }
        }
    }

    // Check if all accepting states in A3 are visited
    for (int i = 0; i < dfa3->numStates; i++) {
        if (dfa3->states[i].isAccepting && !visited[i]) {
            // Free allocated memory and return false
            printf("Error: Not all accepting states are visited\n");
            free(dfa3->states);
            free(dfa3->transitions);
            free(dfa3);
            free(visited);
            free(stack);
            return false;
        }
    }

    // Free allocated memory and return true
    printf("Error: All is well or should be\n");
    free(dfa3->states);
    free(dfa3->transitions);
    free(dfa3);
    free(visited);
    free(stack);*/
    return true;
}
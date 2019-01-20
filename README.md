# RL_Gridworld

## Motivation
In a not so distant future, when we will have a connected network of autonomous cars on the roads, can we leverage the use of spatial and temporal information obtained from different vehicles to make better decisions regarding cruise speed, overtaking and lane-changing?

## Problem Statement
With the above motivation, we are scaling down the problem to a grid-like environment where different cells represents their state (occupied/free of obstacle) and the agent has to travel from the start to the goal position (or cell) using RL techniques, thus maximizing the overall rewards. In addition to above:
1. Agent can query the state of (any/deterministic) k cells
in the grid at each iteration and make decisions accordingly
2. Obstacles may also change their positions in the grid (just
like cars on the road) at each iteration
With the above scenario, can the agent cover the distance
in the shortest time as well as maximize the total reward?


## Methodology
This project solves the classical grid world problem with different scenarios.
Note: All the experiments haven been performed on a 4x4 grid

We first implement Dynamic Programming methods of RL i.e. Policy Iteration and Value Iteration. The results are then compared with BFS.

We then place static obstacles deterministically in the grid and and run the above DP methods. We also run Q learning on the same.

Then we build a scenario in which the obstacles change their position in every episode (but drawn from the same distribution). We then run a modified version of Q learning on the same.

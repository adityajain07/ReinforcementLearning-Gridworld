# RL_Gridworld

This project solves the classical grid world problem with different scenarios.
Note: All the experiments haven been performed on a 4x4 grid

We first implement Dynamic Programming methods of RL i.e. Policy Iteration and Value Iteration. The results are then compared with BFS.

We then place static obstacles deterministically in the grid and and run the above DP methods. We also run Q learning on the same.

Then we build a scenario in which the obstacles change their position in every episode (but drawn from the same distribution). We then run a modified version of Q learning on the same.

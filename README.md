# DQN

DeepMind's DQN code for experimentation and extension.

[Orignal code](https://sites.google.com/a/deepmind.com/dqn/)

# Running the Code
## Docker
The code is setup for a Linux environment, in order to create this with minimal effort, [Docker](https://www.docker.com/) is used to create the appropriate environment.

## Instructions
* Start docker
```
$ boot2docker start
$ eval "$(boot2docker shellinit)" 
```

*  Setup the DQN environment
```
$ cd dqn
$ docker run -it -v $(pwd):/DeepMind rsepassi/dqn bash
```

*  Train the network (for instance, Breakout)
```
# cd DeepMind
# ./run_cpu breakout
```

*  To finish
```
# exit
$ boot2docker stop
```
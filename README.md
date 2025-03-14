# Lasers Doing Double Duty: Delivering Power and Data to Drones via a Relay Drone

This repository contains the code and resources for the research paper submitted to **IEEE PIMRC**:

> **Lasers Doing Double Duty: Delivering Power and Data to Drones via a Relay Drone**
>
> *Hossein Mohammadalizadeh, Holger Karl*
>
> *Internet Technologies and Softwarization,*
> *Hasso Plattner Institute, Potsdam, Germany*

> Email: {Ho.mohammadalizadeh, Holger.karl}@hpi.de

**The authors acknowledge the financial support by the Federal Ministry
of Education and Research of Germany in the project “Open6GHub” (grant
number: 16KISK011)**

## Abstract

Drone swarms are  attractive  to on-demand  provide capacity and coverage  in mobile access networks. 
As drones are power-hungry lasers can be used to deliver power to them.
Lest we need LoS from a laser, a master drone with a steerable mirror can be used to forward power
to slave drones, with only minor efficiency loss. 
Once such  laser \& mirror are in place, they can also be used to simultaneously deliver data to the 
selected slave drone, alleviating radio link congestion towards slave drones. 
This capability creates a trade-off between power and data delivery: how to decide which drone should 
be targeted for power or data delivery and how to split the laser between power and data, once a drone has been 
selected.  
We study this trade-off for different radio, power delivery, and usage models, casting it as an optimisation problem for the 
operational time of a drone network. We found that our system and optimisation framework can extend the drone swarm’s overall 
lifetime by 8.5% when delivering power only. Meanwhile, when delivering both power and data, 
the swarm also gains extra capacity via a high-throughput FSO link -- though with a smaller increase in overall lifetime -- 
all without needing additional drones.

**Key Contributions:**

- We propose a novel laser-assisted aerial communication network model that extends UAV operation through laser power delivery, eliminating the need for base station proximity and direct LoS constraints, typical of prior approaches.
- We use the dual use of the laser for power and data, enabling a trade-off between extra capacity and reduced lifespan based on system requirements.
- We present a method to maximize coverage while ensuring a minimum fraction of users remain connected throughout the drone swarm’s operation.
- We develope a framework that decides when to recharge which drone -- and optionally offload data to -- without compromising coverage.

**Datasets:**

The NS-3 generated datasets used in the paper for evaluation have been uploaded to [Google Drive](https://drive.google.com/drive/folders/1zZRRkLt9LYwmP-urwu8MsooVHQ-o3MjB?usp=sharing) for your convenience. Each simulation models a 5-hour period. You can download them and place them in the simulation_results folder to run the simulations. Alternatively, feel free to generate the results for any configuration you desire.

**Repository structure:**
```
Code/
├── ns3-install/                        # folder containing simulation codes in C
│   ├── ns-3-dev/                       # ns3 network simulator
│       ├── scratch/                    # folder to keep executable simulation scenarios
│           ├── uav-wpt.cc/             # network scenario discussed in the paper
│       ├── simulation_results/         # folder to keep simulation results for diferent configurations  
│
├── python-analysis/                    # notebooks
│   ├── Data_preprocessing.ipynb/       # processing the log file outputs from ns3
│   ├── Optimization.ipynb/             # actual optimization

```

Refer to [ns-3 Installation Guide](https://www.nsnam.org/docs/installation/html/) for the detailed ns-3 installation.
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

Drone swarms are  attractive  to on-demand  provide capacity and coverage  in mobile access networks. As drones are power-hungry, ground-based lasers and drone-mounted solar cells can be used to deliver power to them. Lest we need line-of-sight from a laser, a master drone with a steerable mirror can be used to forward power to slave drones, with only minor efficiency loss. Once such  laser \& mirror are in place, they can also be used to simultaneously deliver data to the selected slave drone, alleviating radio link congestion towards slave drones. 
This capability creates a trade-off between power and data delivery: how to decide which drone should be targeted for power or data delivery and how to split the laser between power and data, once a drone has been selected. We study this trade-off for different radio, power delivery, and usage models, casting it as an optimisation problem for the  operational time of a drone network. We found that our system and optimisation framework can extend the drone swarm’s overall lifetime by about 21 minutes when delivering power only, and—when delivering both power and data—can also provide extra capacity via a high-throughput FSO link to relieve radio interface congestion, all without needing additional drones.

**Key Contributions:**

- A novel laser-assisted aerial communication network model that extends UAV operation via laser power delivery.
- Dual use of the laser for both power and data, trading extra capacity for a reduced lifespan based on system needs.
- A two-step optimization: (i) ensuring connectivity by keeping a minimum fraction of users connected, and (ii) maximizing network lifespan through power-only and power-and-data delivery.
- An evaluation of these solutions in terms of network lifespan, coverage, and capacity, highlighting key trade-offs.

**Datasets:**

The datasets generated from ns-3 for different configurations have been uploaded to [Google Drive](https://drive.google.com/drive/folders/1zZRRkLt9LYwmP-urwu8MsooVHQ-o3MjB?usp=sharing). Please download them and place them in the `simulation_results` folder to run the simulations.

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
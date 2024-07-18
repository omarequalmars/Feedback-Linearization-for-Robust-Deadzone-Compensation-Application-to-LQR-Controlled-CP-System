# Feedback-Linearization-for-Robust-Deadzone-Compensation-Application-to-LQR-Controlled-CP-System

This repository hosts the data and code for the paper "Feedback Linearization for Robust Deadzone Compensation: Application to LQR-Controlled Cart-Pole System" for replication of results purposes.

## Directory Structure

- **Data Directory**
  - **Experimental Data**
    - `Experiment with PI Compensator.xlsx`
    - `Experiment without PI Compensator.xlsx`
  - **Simulations**
    - `compensatedsimulation.xlsx`
    - `uncompensatedsimulation.xlsx`

- **Code Directory**
  - `invertedPendulumInit.m`
  - `Model.slx` (Simulink model)
  - `deadzone.m`

## Usage

To run the model, just run the initialization file `invertedPendulumInit.m` and then open the model `Model.slx`. 

## Data Description

Explain the data files included in the repository:
- **Experimental Data**:
  - `Experiment with PI Compensator.xlsx`: This .xlsx contains the data collected in the experiment in which the compensator was activated.
  - `Experiment without PI Compensator.xlsx`: This .xlsx contains the data collected in the experiment in which the compensator was not activated ie. with LQR only.
- **Simulations**:
  - `compensatedsimulation.xlsx`: This .xlsx contains the timeseries simulation results, where the system was tested along a grid of deadzone values, with the PI compensator activated.
  - `uncompensatedsimulation.xlsx`: This .xlsx contains the timeseries simulation results, where the system was tested along a grid of deadzone values, without the PI compensator activated ie. with LQR only.

## Code Description

Briefly describe each file in the Code Directory:
- `invertedPendulumInit.m`: Initialization script for the inverted pendulum model.
- `Model`: Simulink model used for simulations.
- `deadzone.m`: MATLAB function for implementing the dead zone.

## License

MIT License

## Contact Information

You can contact me at 2300009@eng.asu.edu.eg

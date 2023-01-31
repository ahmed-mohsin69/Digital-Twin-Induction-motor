fault_state = [
  "healthy", ...
  "broken_bar", ...
  "bearing_fault", ...
  "unbalanced_voltage", ...
  "stator_fault", ...
  ];

Fs_vib = 7600; % Sampling frequency of vibration signals
Fs_elec = 50000; % Sampling frequency of electric signals
folder = 'data';

location = fullfile(pwd, folder);
ensemble = fileEnsembleDatastore (location,'.mat');
ensemble.ReadFcn = @readMemberData;
ensemble.WriteToMemberFcn = @writeMemberData;
ensemble.DataVariables = [ ...
                              "Ia"; "Ib"; "Ic"; ...
                              "Vib_acpi"; "Vib_axial"];
ensemble.ConditionVariables = ["Health"; "Load"];
ensemble.SelectedVariables = ["Ia"; "Vib_acpi"; "Vib_axial"; "Health"; "Load"];
ensemble.DataVariables = [ensemble.DataVariables; ...
    "Vib_acpi_env"; "Vib_axial_env"];
ensemble.SelectedVariables = [ensemble.SelectedVariables; ...
    "Vib_acpi_env"; "Vib_axial_env"];

app = diagnosticFeatureDesigner;
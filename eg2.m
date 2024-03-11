cars(1,1) = struct('model','Toyota Camry', 'fuel_econ',9.05, 'ABS', 'yes');
cars(1,2) = struct('model','Ford Fusion', 'fuel_econ',9.80, 'ABS', 'yes');
rmfield(cars, 'ABS');
disp(cars);


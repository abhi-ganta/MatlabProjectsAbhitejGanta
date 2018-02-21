data = 'GroupB_uknown.csv';
stress = csvread(data, 48, 3,[48 3 653 3]);
strain = csvread(data, 48, 4,[48 4 653 4]);

plot(strain,stress);
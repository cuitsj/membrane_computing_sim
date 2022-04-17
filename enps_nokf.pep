num_ps = {

	H = {m1, m2};
	
	structure = [m1 [m2 ]m2 ]m1;

	m1 = {
		var = {f1,leftspeed, rightspeed};
		E = {e_1_1};
		pr = {f1+550+0*leftspeed [e_1_1 -> ] 1|leftspeed};
		pr = {f1+550+0*rightspeed [e_1_1 -> ] 1|rightspeed};
		var0 = (0, 0, 0);
		E0  = (1);
	};

	m2 = {
		var = {f2,IR0,IR1,IR2,IR5,IR6,IR7};
		E = {e_1_2};
		pr = {f2+IR0*(0-8)+IR1*(0-4)+IR2*(0-2) [e_1_2 -> ] 1|leftspeed};
		pr = {f2+IR7*(0-8)+IR6*(0-4)+IR5*(0-2) [e_1_2 -> ] 1|rightspeed};
		var0 = (0,0,0,0,100,20,5);
		E0  = (1);
	};
}
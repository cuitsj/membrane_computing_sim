num_ps = {

	H = {m1 m2 m3 m4 m5 m6 m7};
	
	structure = [m1 [m2 ]m2 [m3 ]m3 [m4 ]m4 [m5 ]m5 [m6 ]m6 [m7 ]m7]m1;

	m1 = {
		var = {f1,leftspeed, rightspeed,IR0_KF,IR1_KF,IR2_KF,IR5_KF,IR6_KF,IR7_KF};
		E = {m1e1,m1e2};
		pr = {f1+550+IR0_KF*(0-8)+IR1_KF*(0-4)+IR2_KF*(0-2)+0*leftspeed [m1e2 -> ] 1|leftspeed};
		pr = {f1+550+IR7_KF*(0-8)+IR6_KF*(0-4)+IR5_KF*(0-2)+0*rightspeed [m1e2 -> ] 1|rightspeed};
		pr = {1+f1+0*m1e1+0*m1e2 [m1e1 -> ] 1|m1e2};
		pr = {1+f1+0*m1e1+0*m1e2 [m1e2 -> ] 1|m1e1};
		var0 = (0, 0, 0, 0,0,0,0,0,0);
		E0  = (1,0);
	};
	
	m2 = {
		var = {f2,IR0,IR0_last,Pt_last0,Q0,R0};
		E = {m2e1,m2e2};
		pr = {f2+IR0_last+(IR0-IR0_last)*(Pt_last0+Q0)/(Pt_last0+Q0+R0) [m2e1 -> ] 1|IR0_KF};
		pr = {f2+IR0_last+(IR0-IR0_last)*(Pt_last0+Q0)/(Pt_last0+Q0+R0) [m2e1 -> ] 1|IR0_last};
		pr = {f2+(Pt_last0*R0+Q0*R0)/(Pt_last0+Q0+R0) [m2e1 ->] 1|Pt_last0};
		pr = {f2+50+0*Q0 [m2e1 ->] 1|Q0};
		pr = {f2+10+0*R0 [m2e1 ->] 1|R0};
		pr = {1+f2+0*m2e1+0*m2e2 [m2e1 -> ] 1|m2e2};
		pr = {1+f2+0*m2e1+0*m2e2 [m2e2 -> ] 1|m2e1};
		var0 = (0,10,0,0,50,10);
		E0  = (1,0);
	};
	
	m3 = {
		var = {f3,IR1,IR1_last,Pt_last1,Q1,R1};
		E = {m3e1,m3e2};
		pr = {f3+IR1_last+(IR1-IR1_last)*(Pt_last1+Q1)/(Pt_last1+Q1+R1) [m3e1 -> ] 1|IR1_KF};
		pr = {f3+IR1_last+(IR1-IR1_last)*(Pt_last1+Q1)/(Pt_last1+Q1+R1) [m3e1 -> ] 1|IR1_last};
		pr = {f3+(Pt_last1*R1+Q1*R1)/(Pt_last1+Q1+R1) [m3e1 ->] 1|Pt_last1};
		pr = {f3+50+0*Q1 [m3e1 ->] 1|Q1};
		pr = {f3+10+0*R1 [m3e1 ->] 1|R1};
		pr = {1+f3+0*m3e1+0*m3e2 [m3e1 -> ] 1|m3e2};
		pr = {1+f3+0*m3e1+0*m3e2 [m3e2 -> ] 1|m3e1};
		var0 = (0,10,0,0,50,10);
		E0  = (1,0);
	};
	
	m4 = {
		var = {f4,IR2,IR2_last,Pt_last2,Q2,R2};
		E = {m4e1,m4e2};
		pr = {f4+IR2_last+(IR2-IR2_last)*(Pt_last2+Q2)/(Pt_last2+Q2+R2) [m4e1 -> ] 1|IR2_KF};
		pr = {f4+IR2_last+(IR2-IR2_last)*(Pt_last2+Q2)/(Pt_last2+Q2+R2) [m4e1 -> ] 1|IR2_last};
		pr = {f4+(Pt_last2*R2+Q2*R2)/(Pt_last2+Q2+R2) [m4e1 ->] 1|Pt_last2};
		pr = {f4+50+0*Q2 [m4e1 ->] 1|Q2};
		pr = {f4+10+0*R2 [m4e1 ->] 1|R2};
		pr = {1+f4+0*m4e1+0*m4e2 [m4e1 -> ] 1|m4e2};
		pr = {1+f4+0*m4e1+0*m4e2 [m4e2 -> ] 1|m4e1};
		var0 = (0,10,0,0,50,10);
		E0  = (1,0);
	};
	
	m5 = {
		var = {f5,IR5,IR5_last,Pt_last5,Q5,R5};
		E = {m5e1,m5e2};
		pr = {f5+IR5_last+(IR5-IR5_last)*(Pt_last5+Q5)/(Pt_last5+Q5+R5) [m5e1 -> ] 1|IR5_KF};
		pr = {f5+IR5_last+(IR5-IR5_last)*(Pt_last5+Q5)/(Pt_last5+Q5+R5) [m5e1 -> ] 1|IR5_last};
		pr = {f5+(Pt_last5*R5+Q5*R5)/(Pt_last5+Q5+R5) [m5e1 ->] 1|Pt_last5};
		pr = {f5+50+0*Q5 [m5e1 ->] 1|Q5};
		pr = {f5+10+0*R5 [m5e1 ->] 1|R5};
		pr = {1+f5+0*m5e1+0*m5e2 [m5e1 -> ] 1|m5e2};
		pr = {1+f5+0*m5e1+0*m5e2 [m5e2 -> ] 1|m5e1};
		var0 = (0,10,0,0,50,10);
		E0  = (1,0);
	};
	
	m6 = {
		var = {f6,IR6,IR6_last,Pt_last6,Q6,R6};
		E = {m6e1,m6e2};
		pr = {f6+IR6_last+(IR6-IR6_last)*(Pt_last6+Q6)/(Pt_last6+Q6+R6) [m6e1 -> ] 1|IR6_KF};
		pr = {f6+IR6_last+(IR6-IR6_last)*(Pt_last6+Q6)/(Pt_last6+Q6+R6) [m6e1 -> ] 1|IR6_last};
		pr = {f6+(Pt_last6*R6+Q6*R6)/(Pt_last6+Q6+R6) [m6e1 ->] 1|Pt_last6};
		pr = {f6+50+0*Q6 [m6e1 ->] 1|Q6};
		pr = {f6+10+0*R6 [m6e1 ->] 1|R6};
		pr = {1+f6+0*m6e1+0*m6e2 [m6e1 -> ] 1|m6e2};
		pr = {1+f6+0*m6e1+0*m6e2 [m6e2 -> ] 1|m6e1};
		var0 = (0,10,0,0,50,10);
		E0  = (1,0);
	};
	
	m7 = {
		var = {f7,IR7,IR7_last,Pt_last7,Q7,R7};
		E = {m7e1,m7e2};
		pr = {f7+IR7_last+(IR7-IR7_last)*(Pt_last7+Q7)/(Pt_last7+Q7+R7) [m7e1 -> ] 1|IR7_KF};
		pr = {f7+IR7_last+(IR7-IR7_last)*(Pt_last7+Q7)/(Pt_last7+Q7+R7) [m7e1 -> ] 1|IR7_last};
		pr = {f7+(Pt_last7*R7+Q7*R7)/(Pt_last7+Q7+R7) [m7e1 ->] 1|Pt_last7};
		pr = {f7+50+0*Q7 [m7e1 ->] 1|Q7};
		pr = {f7+10+0*R7 [m7e1 ->] 1|R7};
		pr = {1+f7+0*m7e1+0*m7e2 [m7e1 -> ] 1|m7e2};
		pr = {1+f7+0*m7e1+0*m7e2 [m7e2 -> ] 1|m7e1};
		var0 = (0,10,0,0,50,10);
		E0  = (1,0);
	};
}
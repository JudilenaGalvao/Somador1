ENTITY somador1 IS

	GENERIC(n: INTEGER := 3);
	
	PORT(A, B: IN BIT_VECTOR(n-1 DOWNTO 0);
			Te: IN BIT;
			S: OUT BIT_VECTOR(n-1 DOWNTO 0);
			TsFim: OUT BIT);
			
END somador1;

ARCHITECTURE comportamento OF somador1 IS
	SIGNAL Ts: BIT_VECTOR(n DOWNTO 0);
	
BEGIN

	Ts(0) <= Te;
	
	ABC: FOR i IN 0 TO n-1 GENERATE
		S(i) <= Ts(0) XOR A(i) XOR B(i);
		Ts(i+1) <= (Ts(i) AND A(i)) OR (Ts(i) AND B(i)) OR (A(i) AND B(i));
	
	END GENERATE ABC;
	
	TsFim <= Ts(n);

END comportamento;
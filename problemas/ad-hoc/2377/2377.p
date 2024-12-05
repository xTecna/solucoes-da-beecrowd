var
L, D, K, P : int64;

begin
	read(L);
	readln(D);
	read(K);
	readln(P);

	writeln(K * L + P * (L div D));
end.

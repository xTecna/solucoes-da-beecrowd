var
cv, ce, cs, fv, fe, fs, cp, fp: int64;

begin
	read(cv);
	read(ce);
	read(cs);
	read(fv);
	read(fe);
	read(fs);

	cp := 10000 * (3 * cv + ce) + cs;
	fp := 10000 * (3 * fv + fe) + fs;

	if (cp > fp) then
		writeln('C')
	else
		if (fp > cp) then
			writeln('F')
		else
			writeln('=');
end.

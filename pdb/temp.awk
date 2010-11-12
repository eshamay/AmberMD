BEGIN {
	x = 1
	c = 1
	f = 1
	h = 1
	o = 1
}

/ATOM/ {
	printf ("ATOM%7d  ", $2, $3);
	if ($3 == "O") {
		printf ("OS ");
	}
	else if ($3 == "Si") {
		printf ("Si ");
	}
	printf ("  qtz%6d    % 8.3f% 8.3f% 8.3f\n", $4, $5, $6, $7);
}

/TER/ {
	print "TER"
	x = x + 1
	c = 1
	f = 1
	h = 1
}

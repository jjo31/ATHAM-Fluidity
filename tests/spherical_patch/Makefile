GMSH_GEO_FILE=src/spherical_segment.geo
input: clean
	gmsh -2 -bin $(GMSH_GEO_FILE) -o patch.msh

clean:
	rm -rf *.msh *.halo *.vtu *.stat serial.flml fluidity.*
	rm -rf spherical_segment_* *.pvtu
	rm -rf *flredecomp* matrixdump*


TARGET_MODULE = f95_fibonacci
# Fortran compiler - This is used here only to check syntax. f2py does the
# compiling
FC = gfortran
# Fortfran flag - Show warnings and error if code is not conformal to f95
FFLAGS = -std=f95 -Wall -Wextra -Wconversion -fbacktrace 
FFLAGS += -ffpe-trap=zero,overflow,underflow
# Fortran files
FSRC = $(wildcard *.f*)

module: 
	f2py -m $(TARGET_MODULE) -h $(TARGET_MODULE).pyf $(FSRC)
	f2py -c --opt='$(FFLAGS)' $(TARGET_MODULE).pyf $(FSRC) 

clean:
	rm -f ./*.pyf ./*$(TARGET_MODLE)*.so ./*.out ./*.o 

check: $(FSRC)
	$(FC) $(FSRC) $(FFLAGS) -fsyntax-only


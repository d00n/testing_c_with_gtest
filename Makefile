# IDIR=include
# CC=gcc
# CFLAGS=-I$(IDIR) -std=c99
# CCFLAGS=-I$(IDIR)

# ODIR=obj
# LDIR=lib

# LIBS=-lm

# _DEPS = GtestHelper.h GtestC.h Sample.h SampleInclude.h
# DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

# _OBJ = Sample.o GtestHelper.o SampleHelper.o SampleTest.o
# OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

max.o: max.c
	gcc -c -o max.o max.c

test.o: test.cpp
	g++ -c -o test.o test.cpp

# $(ODIR)/%.o: %.cc $(DEPS)
# 	$(CC) -c -o $@ $< $(CCFLAGS)

runTests: max.o test.o
	g++ max.o test.o -lgtest -lpthread -o runTests

.PHONY: clean

clean:
	rm -rf *.o *~ core 
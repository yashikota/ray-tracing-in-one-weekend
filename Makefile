CC	= g++
CFLAGS	= -Wall
SRCDIR	= src
PROGRAM	= main


all: $(PROGRAM)

$(PROGRAM):
	$(CC) $(CFLAGS) -o $(PROGRAM).exe $(SRCDIR)/$(PROGRAM).cpp

.PHONY: fmt
fmt:
	clang-format -i $(SRCDIR)/*.cpp $(SRCDIR)/*.h

.PHONY: clean
clean:
	$(RM) $(PROGRAM).exe

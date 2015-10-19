INCL	=mavlink

CXXFLAGS = -I$(INCL) -g -O
LIBS=-lpthread -lzmq
SRC=mavlink_control.cpp serial_port.cpp autopilot_interface.cpp

all: mavlink_control

mavlink_control: $(SRC)
	g++ $(CXXFLAGS) $(SRC) -o mavlink_control $(LIBS)

clean:
	 rm -rf *.o mavlink_control

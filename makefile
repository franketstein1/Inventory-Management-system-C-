CXX = g++
CXXFLAGS = -std=c++17 -Wall -Iinclude
SRC = src/Product.cpp src/Inventory.cpp src/main.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = ims

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET)

clean:
	rm -f $(TARGET) *.o

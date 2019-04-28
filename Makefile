CXX        = g++
LD         = $(CXX)
TARGET     = main.exe
INSTALLDIR = ./bin
MV         = /bin/mv
 
all: $(TARGET)
 
$(TARGET): $(OFILES)
	$(LD) $(LDFLAGS) $(OFILES) -Wall -Werror -o $(TARGET) \
	&& $(MV) ./$(TARGET) $(INSTALLDIR)/$(TARGET)

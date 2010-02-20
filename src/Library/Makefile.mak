
all : $(BINDIR)Kinematic.a 


OBJECTS := $(call CompileTree,%.cpp,$(OBJDIR)Library/) $(call CompileTree,%.c,$(OBJDIR)Library/)

HEADERS := $(call HeaderTree,,$(INCDIR))


$(BINDIR)Kinematic.a : $(OBJECTS)
	mkdir -p $(BINDIR)
	ar -r $@ $^

# will get more refined later. This recompiles the world when a header file changes
$(OBJECTS) : $(HEADERS)
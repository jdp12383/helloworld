CFLAGS = -g -Wall
TARGET = helloworld

all: $(TARGET)
$(TARGET): helloworld.c greeting.c
	$(CC) $(CFLAGS) $(LDFLAGS) helloworld.c greeting.c -o $(TARGET)
install:
	install -d $(DESTDIR)
	install -m 0755 $(TARGET) $(DESTDIR)
clean:
	rm -f $(TARGET)
uninstall:
	rm $(DESTDIR)$(TARGET)

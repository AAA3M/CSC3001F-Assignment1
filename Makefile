JAVAC=/usr/bin/javac
.SUFFIXES: .java .class
SRCDIR=src
BINDIR=bin
DOCDIR=doc

$(BINDIR)/%.class:$(SRCDIR)/%.java
	$(JAVAC) -d $(BINDIR)/ -cp $(BINDIR) $<

CLASSES= Check.class Message.class ClientData.class RegisterClientThread.class ReceiverClientThread.class ServerThread.class Server.class Client.class
CLASS_FILES=$(CLASSES:%.class=$(BINDIR)/%.class)
default: $(CLASS_FILES)
clean:
	rm $(BINDIR)/*.class
server:
	java -cp bin Server
A:
	java -cp bin Client "4555" "A" "alaric-PS42-8RB"
B:
	java -cp bin Client "4600" "B" "alaric-PS42-8RB"
docs:
	javadoc -d $(DOCDIR) src/*.java 

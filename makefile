SRC_DIR := src
BIN_DIR := bin
DOCS_DIR := docs
DATA_DIR := data
COMPILER := javac
JVM := java
COMPILE_FLAGS := -d $(BIN_DIR) -sourcepath $(SRC_DIR)

SRC := 	$(wildcard $(SRC_DIR)/*.java) \
		$(wildcard $(SRC_DIR)/Model/*.java) \
		$(wildcard $(SRC_DIR)/View/*.java) \
		$(wildcard $(SRC_DIR)/Controller/*.java) \
		$(wildcard $(SRC_DIR)/Utils/*.java) \
		$(wildcard $(SRC_DIR)/FileManagement/*.java)

.PHONY: all run docs clean cleanall

all:

	$(COMPILER) $(COMPILE_FLAGS) $(SRC)

run:
	$(JVM) -cp $(BIN_DIR) Bilancio

docs:
	javadoc -d $(DOCS_DIR) -cp $(SRC_DIR) -subpackages View:Model:Controller:Utils:FileManagement

clean:
	find $(BIN_DIR) -name "*.class" -delete

cleanall:
	rm -rf $(BIN_DIR)
	rm -rf $(DOCS_DIR)
	rm -rf $(DATA_DIR)
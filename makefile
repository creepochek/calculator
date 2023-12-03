# Комментарий: это пример простого мейкфайла

# Определение переменных
CC=g++
CFLAGS=-c -Wall
LDFLAGS=
LIBS=libcalculator.a
EXECUTABLE=calculator_main

# Определение исходных файлов и объектных файлов
SOURCES=calculator.cpp calculator_operations.cpp main.cpp
OBJECTS=$(SOURCES:.cpp=.o)

# Правило для сборки всего
all: $(LIBS) $(EXECUTABLE)

# Правило для создания библиотеки
$(LIBS): $(OBJECTS)
	ar rcs $@ $(OBJECTS)

# Правило для создания исполняемого файла
$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

# Правило для компиляции .cpp в .o
.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

# Правило для очистки (удаления объектных файлов и исполняемого файла)
clean:
	rm -rf *.o $(LIBS) $(EXECUTABLE)


SRC = print.c sum.c sub.c 
OBJ = $(SRC:.c=.o)
LIB = mylib.a

all: $(LIB)

%.o: %.c
	${CC} -c $< -o $@

$(LIB): $(OBJ)
	ar rcs $@ $(OBJ)

clean:
	rm -rf $(OBJ) $(LIB)

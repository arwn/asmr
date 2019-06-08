ASM=nasm
AFLAGS=-f macho64
SRC=$(wildcard src/*)
OBJ=$(SRC:src/%.s=obj/%.o)
SHELL := /bin/bash
NAME=libfts.a

.PHONY: clean fclean all re norm norme debug test norman update

VPATH = src obj includes

$(NAME): $(OBJ)
	ar rc $(NAME) obj/*
	ranlib $(NAME)
	@echo "$(NAME) build complete!"

all: $(NAME)

obj/%.o: %.s
	@mkdir -p obj
	$(ASM) $(AFLAGS) -o $@ $<

clean:
	@rm -rf obj/*

fclean: clean
	@rm -f $(NAME)

test: all
	gcc test.c $(NAME) -I.
	./a.out
	@rm a.out

re: fclean all
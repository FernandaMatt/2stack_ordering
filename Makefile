NAME = push_swap

SRCS = src/push_swap.c \
	   src/push_swap_moves.c \
	   src/push_swap_moves2.c \
	   src/order5.c \
	   src/order.c \
	   src/utils.c \
	   src/utils2.c \
	   src/error.c

OBJS = $(SRCS:.c=.o)

LIBS = src/libft/libft.a

CC = cc

CFLAGS =  -g -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS) $(LIBS)
	$(CC) $(CFLAGS) $(OBJS) $(LIBS) -o  $(NAME)

$(LIBS): src/libft/
	make -C src/libft/ all

clean:
	rm -rf *.o src/libft/*.o

fclean:
	rm -rf *.o src/libft/*.o push_swap src/libft/libft.a

re: fclean all

.PHONY:		all clean fclean re

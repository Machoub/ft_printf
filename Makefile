# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: machouba <machouba@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/24 14:41:49 by machouba          #+#    #+#              #
#    Updated: 2023/12/12 14:33:18 by machouba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a

LIBFT_PATH	=	./libft

LIBFT	=	$(LIBFT_PATH)/libft.a

CC = cc

CFLAGS	=	-Wall -Wextra -Werror -I$(LIBFT)

RM	=	rm -f

AR	=	ar -rcs

HEADER = ft_printf.h

SOURCES = \
	ft_printf.c \
	ft_putchar.c \
	ft_puthexa.c \
	ft_putnbr.c \
	ft_putptr.c \
	ft_putstr.c \
	ft_putunbr.c \

OBJECTS	= $(SOURCES:.c=.o)

all: $(NAME)

$(NAME): $(OBJECTS)
	$(MAKE) -C $(LIBFT_PATH)
	cp $(LIBFT) $(NAME)
	$(AR) $(NAME) $(OBJECTS)

clean:
	$(MAKE) clean -C $(LIBFT_PATH)
	$(RM) $(OBJECTS)

fclean:	clean
	$(MAKE) fclean -C $(LIBFT_PATH)
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
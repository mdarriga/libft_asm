# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mdarriga <mdarriga@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/19 12:00:23 by mdarriga          #+#    #+#              #
#    Updated: 2015/03/19 16:21:35 by mdarriga         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
CC = gcc
CFLAGS = -Wall -Werror -Wextra
NC = nasm
NFLAGS = -f macho64

SRC += ft_bzero.s
SRC += ft_strcat.s
SRC += ft_isalpha.s
SRC += ft_isdigit.s
SRC += ft_isalnum.s
SRC += ft_isascii.s
SRC += ft_isprint.s
SRC += ft_toupper.s
SRC += ft_tolower.s
SRC += ft_puts.s
SRC += ft_strlen.s
SRC += ft_memset.s
SRC += ft_memcpy.s
SRC += ft_strdup.s
SRC += ft_cat.s

SRC += ft_strclr.s
SRC += ft_isspace.s
SRC += ft_isblank.s
SRC += ft_putstr.s
SRC += ft_strchr.s


OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

run: re
	$(CC) $(CFLAGS) main.c $(NAME)
	./a.out

%.o:%.s
	$(NC) $(NFLAGS) $<

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re

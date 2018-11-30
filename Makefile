# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oivanyts <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/17 13:27:43 by oivanyts          #+#    #+#              #
#    Updated: 2018/11/24 14:58:56 by oivanyts         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		= libft.a

INCLUDES 	= -I libft.h

CC		= gcc

FLAGS		= -Wall -Wextra -Werror

FUNCTIONS 	+= ft_atoi.c
FUNCTIONS 	+= ft_bzero.c
FUNCTIONS 	+= ft_countletter.c
FUNCTIONS 	+= ft_countwords.c
FUNCTIONS 	+= ft_isalnum.c
FUNCTIONS 	+= ft_isalpha.c
FUNCTIONS 	+= ft_isascii.c
FUNCTIONS 	+= ft_isdigit.c
FUNCTIONS 	+= ft_isprint.c
FUNCTIONS 	+= ft_isspace.c
FUNCTIONS 	+= ft_itoa_base.c
FUNCTIONS 	+= ft_itoa.c
FUNCTIONS 	+= ft_lstadd.c
FUNCTIONS 	+= ft_lstdel.c
FUNCTIONS 	+= ft_lstdelone.c
FUNCTIONS 	+= ft_lstiter.c
FUNCTIONS 	+= ft_lstmap.c
FUNCTIONS 	+= ft_lstnew.c
FUNCTIONS 	+= ft_matrixalloc.c
FUNCTIONS 	+= ft_memalloc.c
FUNCTIONS 	+= ft_memccpy.c
FUNCTIONS 	+= ft_memchr.c
FUNCTIONS 	+= ft_memcmp.c
FUNCTIONS 	+= ft_memcpy.c
FUNCTIONS 	+= ft_memdel.c
FUNCTIONS 	+= ft_memmove.c
FUNCTIONS 	+= ft_memset.c
FUNCTIONS 	+= ft_putchar_fd.c
FUNCTIONS 	+= ft_putchar.c
FUNCTIONS 	+= ft_putendl_fd.c
FUNCTIONS 	+= ft_putendl.c
FUNCTIONS 	+= ft_putnbr_fd.c
FUNCTIONS 	+= ft_putnbr.c
FUNCTIONS 	+= ft_putstr_fd.c
FUNCTIONS 	+= ft_putstr.c
FUNCTIONS 	+= ft_strcat.c
FUNCTIONS 	+= ft_strchr.c
FUNCTIONS 	+= ft_strclr.c
FUNCTIONS 	+= ft_strcmp.c
FUNCTIONS 	+= ft_strcpy.c
FUNCTIONS 	+= ft_strdel.c
FUNCTIONS 	+= ft_strdup.c
FUNCTIONS 	+= ft_strequ.c
FUNCTIONS 	+= ft_striter.c
FUNCTIONS 	+= ft_striteri.c
FUNCTIONS 	+= ft_strjoin.c
FUNCTIONS 	+= ft_strlcat.c
FUNCTIONS 	+= ft_strlen.c
FUNCTIONS 	+= ft_strmap.c
FUNCTIONS 	+= ft_strmapi.c
FUNCTIONS 	+= ft_strncat.c
FUNCTIONS 	+= ft_strncmp.c
FUNCTIONS 	+= ft_strncpy.c
FUNCTIONS 	+= ft_strnequ.c
FUNCTIONS 	+= ft_strnew.c
FUNCTIONS 	+= ft_strnstr.c
FUNCTIONS 	+= ft_strrchr.c
FUNCTIONS 	+= ft_strsplit.c
FUNCTIONS 	+= ft_strstr.c
FUNCTIONS 	+= ft_strsub.c
FUNCTIONS 	+= ft_strtrim.c
FUNCTIONS 	+= ft_swap.c
FUNCTIONS 	+= ft_tolower.c
FUNCTIONS 	+= ft_toupper.c
FUNCTIONS 	+= get_next_line.c

BINARY 		= $(FUNCTIONS:.c=.o)

all: $(NAME)

$(BINARY): 
	@$(CC) $(FLAGS) -c $(FUNCTIONS) $? $(INCLUDES)

$(NAME): $(BINARY) 
	@ar rc $(NAME) $(BINARY) $?;
	@ranlib $(NAME);

clean:
	@rm -f $(BINARY)

fclean: clean
	@rm -f $(NAME)

re: fclean all

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lunovill <lunovill@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/11 22:18:12 by lunovill          #+#    #+#              #
#    Updated: 2022/05/17 22:22:31 by lunovill         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

 #=============================================================================#
#								SOURCES											#
 #=============================================================================#
 
SRCS_DIR = sources
SRC_FILES = fg_check\
			fg_fldzr\
			fg_hyphen\
			fg_period\
			ft_abs\
			ft_atoi\
			ft_atrkornb\
			ft_bzero\
			ft_conv\
			ft_convc\
			ft_convi\
			ft_convn\
			ft_convp\
			ft_convs\
			ft_field\
			ft_isdigit\
			ft_isset\
			ft_itoa\
			ft_memalloc\
			ft_memset\
			ft_printf\
			ft_putchar\
			ft_putstr\
			ft_putsub\
			ft_strcpy\
			ft_strdup\
			ft_strichr\
			ft_strischr\
			ft_strlen\
			ft_toupper\
			ft_uitoa\
			ft_xtoa\
			ft_zero\

SRCS = $(addsuffix .c, $(SRC_FILES))

 #=============================================================================#
#									OBJETS										#
 #=============================================================================#

OBJS_DIR = objets
OBJS = $(SRCS:%.c=$(OBJS_DIR)/%.o)

 #=============================================================================#
#									COMPILATION									#
 #=============================================================================#

CC = gcc
CFLAGS = -Wall -Wextra -Werror
CIFLAGS = -Iincludes

 #=============================================================================#
#									MAKEFILE									#
 #=============================================================================#

NAME = ft_printf.a

all: $(NAME)

$(NAME): $(OBJS_DIR) $(OBJS)
	ar rcs $(NAME) $(OBJS)

$(OBJS_DIR) :
	mkdir $(OBJS_DIR)

$(OBJS) : $(OBJS_DIR)/%.o : $(SRCS_DIR)/%.c
	$(CC) $(CFLAGS) $(CIFLAGS) -c $< -o $@

clean :
	rm -rf $(OBJS_DIR)

fclean: clean
	rm -rf $(NAME)
re : fclean all

.PHONY: clean fclean all re

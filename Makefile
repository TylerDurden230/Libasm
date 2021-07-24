# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fd-agnes <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/30 19:11:02 by fd-agnes          #+#    #+#              #
#    Updated: 2021/04/30 19:11:33 by fd-agnes         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = 	ft_read.s ft_write.s ft_strlen.s ft_strcmp.s \
		ft_strcpy.s ft_strdup.s \

OBJS = ${SRCS:.s=.o}

ASM = nasm

ASMFLAGS = -f macho64

CC = gcc

FLAGS = -Wall -Wextra -Werror

NAME = libasm.a

AOUT = libasm

%.o:	%.s
		@${ASM} ${ASMFLAGS} $< -o $@

all:	${NAME}

${NAME}: 	${OBJS}
		@ar -rcs ${NAME} ${OBJS}

test:		
			@${MAKE}
			@$(CC) ${FLAGS} main.c ${OBJS} -o ${AOUT}
			@./${AOUT}
		
clean:	
		@rm -f ${OBJS}

fclean:	clean
		@rm -f ${NAME}
		@rm -f ${AOUT}

re:		fclean all

.PHONY: 	all clean fclean re


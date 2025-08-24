# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: joscastr <joscastr@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/02 13:00:55 by joscastr          #+#    #+#              #
#    Updated: 2024/10/02 13:13:39 by joscastr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap

DEL_LINE =		\033[2K
ITALIC =		\033[3m
BOLD =			\033[1m
DEF_COLOR =		\033[0;39m
GRAY =			\033[0;90m
RED =			\033[0;91m
GREEN =			\033[0;92m
YELLOW =		\033[0;93m
BLUE =			\033[0;94m
MAGENTA =		\033[0;95m
CYAN =			\033[0;96m
WHITE =			\033[0;97m
BLACK =			\033[0;99m
ORANGE =		\033[38;5;209m
BROWN =			\033[38;2;184;143;29m
DARK_GRAY =		\033[38;5;234m
MID_GRAY =		\033[38;5;245m
DARK_GREEN =	\033[38;2;75;179;82m
DARK_YELLOW =	\033[38;5;143m

SRCS = ./src/pushswap.c ./src/ft_strlen.c ./src/ft_atoi.c ./src/swap.c ./src/sortnum.c \
			./src/changenum.c ./src/sa.c ./src/rra.c ./src/ra.c ./src/rrb.c \
			./src/size3.c ./src/size5.c ./src/size100.c ./src/size500.c \
			./src/rb.c ./src/rr.c ./src/sb.c ./src/rrr.c ./src/check_order.c \
			./src/check_same_nums.c ./src/ft_free.c ./src/ordernums_peq.c ./src/ordernums.c \
			./src/pa.c ./src/pb.c ./src/check_num.c ./src/ft_isdigit.c \
			./src/ft_substr.c ./src/ft_free2.c ./src/check_args.c

INCLUDE = ./inc/pushswap.h


CC = gcc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror -MMD

%.o: %.c
			@echo "${BLUE} ◎ $(BROWN)Compiling   ${MAGENTA}→   $(CYAN)$< $(DEF_COLOR)"
			@${CC} ${CFLAGS} -c $< -o $@

OBJS = ${SRCS:.c=.o}
DEPS = $(addsuffix .d, $(basename $(SRCS)))

all:	${NAME}

-include ${DEPS}
${NAME}: ${OBJS} $(INCLUDE)
	@${CC} ${SRCS} -o ${NAME}
	@echo "\n$(GREEN) Created $(NAME) ✓ $(DEF_COLOR)\n"


clean:
			@${RM} ${OBJS} 
			@${RM} ${DEPS} 
			@echo "\n${BLUE} ◎ $(RED)All objects cleaned successfully ${BLUE}◎$(DEF_COLOR)\n"

fclean: 
			@${RM} ${OBJS} 
			@${RM} ${NAME} 
			@echo "\n${BLUE} ◎ $(RED)All objects and executable cleaned successfully${BLUE} ◎$(DEF_COLOR)\n"

re: fclean all

.PHONY: all clean fclean re
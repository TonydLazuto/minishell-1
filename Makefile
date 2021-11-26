# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wluong <wluong@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/23 18:47:25 by hawwar            #+#    #+#              #
#    Updated: 2021/11/25 15:39:32 by wluong           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME		=		minishell

DIR_LIBFT	=		libft
LIBFT		=		libft.a

SRCS		=		srcs/main.c \
					srcs/parsing/parsing.c \
					srcs/parsing/parsing_quotes.c \
					srcs/parsing/parsing_utils.c \
					srcs/parsing/parsing_utils2.c \
					srcs/parsing/parsing_utils3.c \
					srcs/parsing/lexer.c \
					srcs/parsing/lexer_utils.c \
					srcs/parsing/env_var.c \
					srcs/exit/exit.c \
					srcs/exit/exit_utils.c \
					srcs/builtin/ft_echo.c \
					srcs/builtin/ft_cd.c \
					srcs/builtin/ft_env.c \
					srcs/builtin/ft_export.c \
					srcs/builtin/ft_pwd.c \
					srcs/builtin/ft_unset.c \
					srcs/env/env_util.c \
					srcs/env/env_util2.c \
					srcs/exec/exec.c \
					srcs/exec/exec_minilib.c \
					srcs/exec/exec_get_args.c \
					srcs/exec/exec_utils.c \
					srcs/redir/redir.c \
					srcs/redir/redir_in.c \
					srcs/redir/redir_out.c \
					srcs/redir/redir_in_out.c \
					srcs/redir/redir_heredoc_out.c \
					srcs/redir/redir_utils.c \
					srcs/signal/signal.c \
					srcs/pipe/pipe.c \
					srcs/utils/error.c \
					srcs/utils/count.c \
					srcs/utils/strings_utils.c \
					srcs/utils/free.c \
					srcs/utils/while_pipe.c \


INCLUDE		=		-I./include/

OBJS		=		$(SRCS:.c=.o)

AR			=		ar rcs
RM			=		rm -f
CC			=		gcc
CFLAGS		=		-Wall -Wextra -Werror

%.o:				%.c
	@$(CC) $(CFLAGS) -c $< -o $@ -I $(INCLUDE)

all:	$(NAME)

$(NAME):		$(OBJS)
	@clear
	@echo "\033[1;31m███\033[0m╗   \033[1;31m███\033[0m╗\033[1;31m██\033[0m╗\033[1;31m███\033[0m╗   \033[1;31m██\033[0m╗\033[1;31m██\033[0m╗\033[1;31m███████\033[0m╗\033[1;31m██\033[0m╗  \033[1;31m██\033[0m╗\033[1;31m███████\033[0m╗\033[1;31m██\033[0m╗     \033[1;31m██\033[0m╗     "
	@echo "\033[1;31m████\033[0m╗ \033[1;31m████\033[0m║\033[1;31m██\033[0m║\033[1;31m████\033[0m╗  \033[1;31m██\033[0m║\033[1;31m██\033[0m║\033[1;31m██\033[0m╔════╝\033[1;31m██\033[0m║  \033[1;31m██\033[0m║\033[1;31m██\033[0m╔════╝\033[1;31m██\033[0m║     \033[1;31m██\033[0m║     "
	@echo "\033[1;31m██\033[0m╔\033[1;31m████\033[0m╔\033[1;31m██\033[0m║\033[1;31m██\033[0m║\033[1;31m██\033[0m╔\033[1;31m██\033[0m╗ \033[1;31m██\033[0m║\033[1;31m██\033[0m║\033[1;31m███████\033[0m╗\033[1;31m███████\033[0m║\033[1;31m█████\033[0m╗  \033[1;31m██\033[0m║     \033[1;31m██\033[0m║     "
	@echo "\033[1;31m██\033[0m║╚\033[1;31m██\033[0m╔╝\033[1;31m██\033[0m║\033[1;31m██\033[0m║\033[1;31m██\033[0m║╚\033[1;31m██\033[0m╗\033[1;31m██\033[0m║\033[1;31m██\033[0m║╚════\033[1;31m██\033[0m║\033[1;31m██\033[0m╔══\033[1;31m██\033[0m║\033[1;31m██\033[0m╔══╝  \033[1;31m██\033[0m║     \033[1;31m██\033[m║     "
	@echo "\033[1;31m██\033[0m║ ╚═╝ \033[1;31m██\033[0m║\033[1;31m██\033[0m║\033[1;31m██\033[0m║ ╚\033[1;31m████\033[0m║\033[1;31m██\033[0m║\033[1;31m███████\033[0m║\033[1;31m██\033[0m║  \033[1;31m██\033[0m║\033[1;31m███████\033[0m╗\033[1;31m███████\033[0m╗\033[1;31m███████\033[0m╗"
	@echo "╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝"
	@echo "\033[3;95mMade by Hawwar & Wluong 🛠️\n\n\033[m"
	@echo "▄▄▄▄▄▄▄ ▄▄▄ ▄▄ ▄▄   ▄ ▄▄▄▄▄▄▄			▄▄▄▄▄▄▄   ▄ ▄ ▄ ▄  ▄  ▄▄▄▄▄▄▄" 
	@echo "█ ▄▄▄ █ █▀█▄ ▀▄▄ ▄ ██ █ ▄▄▄ █			█ ▄▄▄ █ ▀ ▀ ▄▀██▀ ▄▄▄ █ ▄▄▄ █"
	@echo "█ ███ █ ▀▀ ▀ ▀█▄█  ▀▄ █ ███ █			█ ███ █ ▀█▀ ▀▀█▀▄▀▀█  █ ███ █"
	@echo "█▄▄▄▄▄█ █ ▄▀█ ▄ █▀█▀▄ █▄▄▄▄▄█			█▄▄▄▄▄█ █▀▄▀█▀█▀▄▀█ █ █▄▄▄▄▄█"
	@echo "▄▄  ▄▄▄  ▀ ▄▀ ▀ ▄█▄▄▄  ▄ ▄▄▄▄			▄▄▄▄▄ ▄▄▄█▀█ ▄█▀ ▄█  ▄ ▄ ▄ ▄ "
	@echo "▄ ▄▄▄▄▄▄▄▀▀▄█▄██▀▀█  ▄▀██▀▀▀█			▀█▀▀▄█▄█  █ ▀  ▄██▀▀▀██▀▀   ▀"
	@echo "█▄  █ ▄ ▀ █▀▄  ▄ █ █ ▄▀  ▀ █▀			█ █▄▄ ▄▀ ▄▄ █▄█ ▀▄▀▀▄  ▀▀█▄▀ "
	@echo "█ ▄▀▀█▄█ █   ███  █   ▀▀███▀█			▀▄▀▀ ▀▄▄█▄ ▄▄▄▀▄▄▄▀▀▀▀██▀▄▄ ▀"
	@echo "▀█▄▄▀█▄▀▀ ▄▄▀▄█ ██ ▄▀█▀ ▀  █▀			 █ █▀ ▄▀█▄▄█   ▄▄▄▀ █▀ ▀ ▄▄▀ "
	@echo "▀  █▄ ▄▄▀▄ ▄█▄███     ███▀▄▀█			█▀ ███▄ ▄██ ▀█▄▄▀▄▄▀▀▀▀▀▀ █ ▀ "
	@echo "▄▄▄▀▄▄▄█▄▄▄▀▄█  ██▄▀█▄██▄▄ ▀█			█  ▀█▀▄▄▀▀  █▀▄▄▄▄███▄▄▄█ ▄█▄"
	@echo "▄▄▄▄▄▄▄ ▀██  ▀▀█▀▀███ ▄ █▄▄ █			▄▄▄▄▄▄▄ █▄█▄▄  ▄██▀▄█ ▄ ███▀▀"
	@echo "█ ▄▄▄ █ █▄ ▄▀▄█▀ █▀██▄▄▄█▄ ▀█			█ ▄▄▄ █ ▄▄▄█  ▀█▀▄ ▀█▄▄▄█ ▄█▄"
	@echo "█ ███ █  ▄▄▄█▄▄█▀▄▄ █▄ ▀ ▄▄▄█			█ ███ █ █▀  ▀██▄█  ▀▄█▄█▄███▀"
	@echo "█▄▄▄▄▄█ ███▀▄█  ██▀ █ ▄▀▄▀ █▀			█▄▄▄▄▄█ ██▄ █▀▄▄▄▄ ▄▀▄█ ██▄▀\n\n"
	@make re -C $(DIR_LIBFT)
	@cp $(DIR_LIBFT)/$(LIBFT) $(NAME)
	@echo "\n\033[1;33mCompilation de Minishell ⌛\033[0;m\n"
	@$(AR) $(NAME) $(OBJS)
	@$(CC) -o $(NAME) $(OBJS) $(DIR_LIBFT)/$(LIBFT) -L/usr/include -lreadline
	@bash .script.sh
	@echo
	@echo "\033[1;32mMINISHELL COMPILÉE ✓\n\033[0;m"
	@echo "\n\033[3;34mVous pouvez lancez \033[1;4m./minishell\033[m \033[3;34m!\n\033[0;m"

clean:
	@$(RM) $(OBJS)
	@make clean -C $(DIR_LIBFT)
	@echo "\033[5;1;32mCLEANED\033[m"
	@echo "\033[5;1;32m     _____\    _______		\033[m"
	@echo "\033[5;1;32m   /      \  |      /\		\033[m"
	@echo "\033[5;1;32m  /_______/  |_____/  \	\033[m"
	@echo "\033[5;1;32m |   \   /        /   /	\033[m"
	@echo "\033[5;1;32m  \   \         \/   /		\033[m"
	@echo "\033[5;1;32m   \  /          \__/_		\033[m"
	@echo "\033[5;1;32m    \/ ____    /\			\033[m"
	@echo "\033[5;1;32m      /  \    /  \			\033[m"
	@echo "\033[5;1;32m     /\   \  /   /			\033[m"
	@echo "\033[5;1;32m       \   \/   /			\033[m"
	@echo "\033[5;1;32m        \___\__/			\033[m"

fclean:		clean
	@$(RM) $(NAME)

re:		fclean all
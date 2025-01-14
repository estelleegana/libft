#nom de l'executable
NAME = libft.a

#compilateur
CC = gcc

#flags
CFLAGS = -Wall -Wextra -Werror

#fichiers sources
SRCS = ft_atoi.c \
	ft_bzero.c \
	ft_calloc.c \
	ft_isalnum.c \
	ft_isalpha.c \
	ft_isascii.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_itoa.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_memset.c \
	ft_putchar_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_putstr_fd.c \
	ft_split.c \
	ft_strchr.c \
	ft_strdup.c \
	ft_striteri.c \
	ft_strjoin.c \
	ft_strlcat.c \
	ft_strlcpy.c \
	ft_strlen.c \
	ft_strmapi.c \
	ft_strncmp.c \
	ft_strnstr.c \
	ft_strrchr.c \
	ft_strtrim.c \
	ft_substr.c \
	ft_tolower.c \
	ft_toupper.c \
bonus = ft_lstadd_back.c \
	ft_lstadd_front.c \
	ft_lstlast.c \
	ft_lstnew.c \
	ft_lstsize.c \

#objets
OBJS = ${SRCS:.c=.o}
OBJSBONUS = ${bonus:.c=.o}


%.o : %.c
	$(CC) ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}: ${OBJS}
	ar rc ${NAME} ${OBJS}
	ranlib ${NAME}

all : ${NAME}

clean:
	rm -f ${OBJS}

fclean: clean
	rm -f ${NAME}

re: fclean all

bonus: $(OBJSBONUS) ${OBJS}
	ar rcs ${NAME} ${OBJSBONUS} ${OBJS}

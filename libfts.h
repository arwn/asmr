#ifndef LIBFTS_H
#define LIBFTS_H

#include <stdlib.h>
#include <unistd.h>

void ft_bzero(char *s, size_t n);
char *ft_strcat(char *s1, char *s2);
int ft_isalpha(int c);
int ft_isdigit(int c);
int ft_isalnum(int c);
int ft_isascii(int c);
int ft_isprint(int c);
int ft_toupper(int c);
int ft_tolower(int c);
int ft_puts(char *s);
int ft_strlen(char *s);
void *ft_memset(void *b, int c, size_t len);
void *ft_memcpy(void *dst, const void *src, size_t n);
char *ft_strdup(char *s);
void ft_cat(int fd);

// bonus
int ft_abs(int i);
char *ft_strjoin(char *s1, char *s2);
void ft_striter(char *s, void (*f)(char *));
int ft_fact(int n);
int ft_fib(int n);

#endif
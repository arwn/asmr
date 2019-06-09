#include <stdio.h>
#include "libfts.h"
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include <assert.h>
#include <limits.h>
#include <fcntl.h>

void test_isdigit()
{
    for (int i = 0; i < 255; i++)
        assert(ft_isdigit(i) == isdigit(i));
    ft_puts("isdigit passed");
}

void test_isalpha()
{
    for (int i = 0; i < 255; i++)
        assert(ft_isalpha(i) == isalpha(i));
    ft_puts("isalpha passed");
}

void test_isalnum()
{
    for (int i = 0; i < 255; i++)
        assert(ft_isalpha(i) == isalpha(i));
    ft_puts("isalnum passed");
}

void test_isascii()
{
    assert(ft_isascii(-1) == isascii(-1));
    assert(ft_isascii(0) == isascii(0));
    assert(ft_isascii(1) == isascii(1));
    assert(ft_isascii(6) == isascii(6));
    assert(ft_isascii(127) == isascii(127));
    assert(ft_isascii(128) == isascii(128));
    assert(ft_isascii(1000) == isascii(1000));
    ft_puts("isascii passed");
}

void test_bzero()
{
    char *s1 = malloc(14);
    char *s2 = malloc(14);
    strcpy(s1, "Hello world.");
    strcpy(s2, "Hello world.");

    ft_bzero(s1 + 3, 2);
    bzero(s2 + 3, 2);

    ft_bzero(s1 + 7, 1);
    bzero(s2 + 7, 1);
    assert(s1[1] == s2[1]);
    assert(s1[2] == s2[2]);
    assert(s1[3] == s2[3]);
    assert(s1[4] == s2[4]);
    assert(s1[5] == s2[5]);
    assert(s1[6] == s2[6]);
    assert(s1[7] == s2[7]);
    assert(s1[8] == s2[8]);
    assert(s1[9] == s2[9]);
    assert(s1[10] == s2[10]);
    assert(s1[11] == s2[11]);
    assert(s1[12] == s2[12]);
    assert(s1[13] == s2[13]);
    assert(s1[14] == s2[14]);
    ft_puts("bzero passed");
    free(s1);
    free(s2);
}

void test_isprint()
{
    assert(ft_isprint(1) == isprint(1));
    assert(ft_isprint(2) == isprint(2));
    assert(ft_isprint(10) == isprint(10));
    assert(ft_isprint(255) == isprint(255));
    assert(ft_isprint(-1) == isprint(-1));
    assert(ft_isprint('1') == isprint('1'));
    assert(ft_isprint('a') == isprint('a'));
    assert(ft_isprint('\t') == isprint('\t'));
    assert(ft_isprint('z') == isprint('z'));
    assert(ft_isprint('\0') == isprint('\0'));
    assert(ft_isprint(' ') == isprint(' '));
    ft_puts("isprint passed");
}

void test_toupper()
{
    char *s1 = malloc(100);
    strcpy(s1, "Hello, wu e OEAu eA  aoaorld!\tHow au eoa Are you?");
    for (int i = 0; i < 100; i++)
        assert(ft_toupper(s1[i]) == toupper(s1[i]));
    ft_puts("toupper passed");
    free(s1);
}

void test_tolower()
{
    char *s1 = malloc(100);
    strcpy(s1, "Hell A AA  AA  EUOo, woRld!\tHoOwhueccHPHhu are you?");
    for (int i = 0; i < 100; i++)
        assert(ft_tolower(s1[i]) == tolower(s1[i]));
    ft_puts("tolower passed");
    free(s1);
}

void test_strlen()
{
    assert(ft_strlen("hello") == strlen("hello"));
    assert(ft_strlen("aoeuaoeuaoeu") == strlen("aoeuaoeuaoeu"));
    assert(ft_strlen("!") == strlen("!"));
    assert(ft_strlen("") == strlen(""));
    ft_puts("strlen passed");
}

void test_puts()
{
    assert(ft_puts("puts passed") == 12);
    assert(ft_puts(0) == 7);
}

void test_strcat()
{
    char *s1 = malloc(28);
    char *s2 = malloc(28);
    strcpy(s1, "Hello, world!");
    strcpy(s2, "Hello, world!");
    ft_strcat(s1, "butt butt butt");
    strcat(s2, "butt butt butt");
    assert(strcmp(s1, s2) == 0);
    ft_puts("strcat passed");
    free(s1);
    free(s2);
}

void test_memset()
{
    char *s1 = malloc(10);
    char *s2 = malloc(10);
    s1[9] = 0;
    s2[9] = 0;
    char *a = ft_memset(s1, 'a', 9);
    char *b = memset(s2, 'a', 9);
    assert(*a == *b);
    assert(a = s1);
    assert(b = s2);
    assert(strcmp(s1, s2) == 0);
    free(s1);
    free(s2);
    ft_puts("memset passed");
}

void test_memcpy()
{
    char *s1 = malloc(10);
    char *s2 = malloc(10);
    s1[9] = 0;
    s2[9] = 0;
    char *a = (char *)ft_memcpy(s1, "hello", 5);
    char *b = (char *)memcpy(s2, "hello", 5);
    assert(a = s1);
    assert(b = s2);
    assert(strncmp(s1, s2, 5) == 0);
    free(s1);
    free(s2);
    ft_puts("memcpy passed");
}

void test_strdup()
{
    char *s1 = ft_strdup("hello");
    char *s2 = ft_strdup("world!!!!!!!!!!!!!");
    assert(strcmp(s1, "hello") == 0);
    assert(strcmp(s2, "world!!!!!!!!!!!!!") == 0);
    ft_puts("strdup passed");
    free(s1);
    free(s2);
}

void test_cat()
{
    int fd = open("author", O_RDONLY);
    ft_cat(-14389);
    ft_cat(fd);
    close(fd);
    puts("cat passed");
}

void test_striter_func(char *c)
{
    *c = ft_toupper(*c);
}

void test_striter()
{
    char *s = ft_strdup("Hello, world!");
    ft_striter(s, test_striter_func);
    assert(strcmp(s, "HELLO, WORLD!") == 0);
    ft_puts("striter passed");
}

void test_abs()
{
    assert(ft_abs(1) == abs(1));
    assert(ft_abs(2) == abs(2));
    assert(ft_abs(0) == abs(0));
    assert(ft_abs(-1) == abs(-1));
    assert(ft_abs(-24) == abs(-24));
    assert(ft_abs(100) == abs(100));
    assert(ft_abs(INT_MAX) == abs(INT_MAX));
    assert(ft_abs(INT_MIN) == abs(INT_MIN));
    ft_puts("abs passed");
}

void test_fact()
{
    assert(1 == ft_fact(1));
    assert(2 == ft_fact(2));
    assert(6 == ft_fact(3));
    assert(24 == ft_fact(4));
    assert(120 == ft_fact(5));
    assert(720 == ft_fact(6));
    assert(5040 == ft_fact(7));
    assert(40320 == ft_fact(8));
    assert(362880 == ft_fact(9));
    ft_puts("fact passed");
}

void test_fib()
{
    assert(ft_fib(1) == 1);
    assert(ft_fib(2) == 1);
    assert(ft_fib(3) == 2);
    assert(ft_fib(4) == 3);
    assert(ft_fib(5) == 5);
    assert(ft_fib(6) == 8);
    assert(ft_fib(7) == 13);
    assert(ft_fib(8) == 21);
    assert(ft_fib(9) == 34);
    ft_puts("fib passed");
}

void test_atoi()
{
    assert(ft_atoi("0") == atoi("0"));
    assert(ft_atoi("1") == atoi("1"));
    assert(ft_atoi("-1") == atoi("-1"));
    assert(ft_atoi("12") == atoi("12"));
    assert(ft_atoi("-12") == atoi("-12"));
    assert(ft_atoi("112") == atoi("112"));
    assert(ft_atoi("-112") == atoi("-112"));
    assert(ft_atoi("1112") == atoi("1112"));
    assert(ft_atoi("-1112") == atoi("-1112"));
    assert(ft_atoi("2147483647") == atoi("2147483647"));
    assert(ft_atoi("-2147483648") == atoi("-2147483648"));
    ft_puts("atoi passed");
}

int main()
{
    test_bzero();
    test_strcat();
    test_isalpha();
    test_isdigit();
    test_isalnum();
    test_isascii();
    test_isprint();
    test_toupper();
    test_tolower();
    test_puts();
    test_strlen();
    test_memset();
    test_memcpy();
    test_strdup();
    test_cat();

    // bonus
    test_striter();
    test_abs();
    test_fact();
    test_fib();
    test_atoi();

    return 0;
}

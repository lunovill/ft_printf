/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftc.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lunovill <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/17 23:30:07 by lunovill          #+#    #+#             */
/*   Updated: 2022/05/17 23:30:37 by lunovill         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTC_H
# define LIBFTC_H

# include <unistd.h>
# include <stdlib.h>

void			ft_bzero(void *s, size_t n);
void			ft_putchar(char c);

int				ft_abs(int n);
int				ft_atoi(const char *str);
int				ft_isdigit(int c);
int				ft_isset(int c, const char *set);
int				ft_toupper(int c);

size_t			ft_putstr(const char *s);
size_t			ft_putsub(char const *s, unsigned int start, size_t len);
size_t			ft_strlen(const char *s);

ssize_t			ft_strichr(const char *s, int c);
ssize_t			ft_strischr(const char *s, const char *set);

void			*ft_memalloc(size_t size);
void			*ft_memset(void *b, int c, size_t len);

char			*ft_itoa(int n);
char			*ft_strcpy(char *dst, const char *src);
char			*ft_strdup(const char *s1);
char			*ft_uitoa(unsigned int n);
char			*ft_xtoa(unsigned long long ptr);

#endif

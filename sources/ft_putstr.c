/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lunovill <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/09 01:02:04 by lunovill          #+#    #+#             */
/*   Updated: 2022/05/17 22:45:40 by lunovill         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftc.h"

size_t	ft_putstr(const char *s)
{
	size_t	size;

	size = 0;
	if (!s)
		return (0);
	while (s[size])
		ft_putchar(s[size++]);
	return (size);
}

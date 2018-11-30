/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   atoi.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oivanyts <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/10 16:13:03 by oivanyts          #+#    #+#             */
/*   Updated: 2018/11/06 15:20:33 by oivanyts         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdint.h>

int	ft_atoi(const char *str)
{
	unsigned long long	x;
	int					znak;

	znak = 1;
	x = 0;
	while (ft_isspace(*str))
		str++;
	if (*str == '-' || *str == '+')
	{
		if (*str == '-')
			znak = -1;
		str++;
	}
	while (ft_isdigit(*str))
		x = x * 10 + (*str++ - '0');
	if (x > 9223372036854775807 && znak == 1)
		return (-1);
	if (x > 9223372036854775807 && znak == -1)
		return (0);
	return (x * znak);
}

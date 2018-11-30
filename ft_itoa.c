/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oivanyts <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/02 17:32:09 by oivanyts          #+#    #+#             */
/*   Updated: 2018/11/06 12:39:48 by oivanyts         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static size_t	ft_count_st(long long int n)
{
	size_t	count;

	count = 1;
	if (n < 0)
	{
		n *= -1;
		count++;
	}
	while (n >= 10)
	{
		n /= 10;
		count++;
	}
	return (count);
}

char			*ft_itoa(int num)
{
	char			*str;
	size_t			lenth;
	long long int	n;

	n = (long int)num;
	lenth = ft_count_st(n);
	if (!(str = (char *)malloc(sizeof(char) * lenth + 1)))
		return (NULL);
	if (n < 0)
	{
		*str = '-';
		n *= -1;
	}
	str[lenth--] = '\0';
	while (n >= 10)
	{
		str[lenth--] = n % 10 + '0';
		n /= 10;
	}
	str[lenth] = n + '0';
	return (str);
}

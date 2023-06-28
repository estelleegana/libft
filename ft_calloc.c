/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: estegana <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/26 19:21:29 by estegana          #+#    #+#             */
/*   Updated: 2023/05/29 19:44:55 by estegana         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>
#include <stdint.h>

void	*ft_calloc(size_t nmemb, size_t size)
{
	void	*s;
	size_t	i;

	i = 0;
	if (size >= SIZE_MAX || nmemb >= SIZE_MAX || (nmemb * size) >= SIZE_MAX)
		return (NULL);
	if (size != 0 && nmemb != 0)
	{
		if ((nmemb * size) < size || (nmemb * size) < nmemb)
			return (NULL);
	}
	s = malloc(nmemb * size);
	if (!s)
		return (NULL);
	while (i < nmemb * size)
	{
		((unsigned char *)s)[i] = '\0';
		i++;
	}
	return (s);
}

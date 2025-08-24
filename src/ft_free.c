/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_free.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: joscastr <joscastr@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/02 12:55:34 by joscastr          #+#    #+#             */
/*   Updated: 2024/10/02 13:29:42 by joscastr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/pushswap.h"

void	ft_free(t_list *d)
{
	if (d)
	{
		if (d->sa)
		{
			free(d->sa);
		}
		if (d->sb)
		{
			free(d->sb);
		}
		if (d->sp)
		{
			free(d->sp);
		}
		free(d);
	}
	write(2, "Error\n", 6);
	exit(0);
}

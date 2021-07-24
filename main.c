/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fd-agnes <fd-agnes@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/30 19:29:30 by fd-agnes          #+#    #+#             */
/*   Updated: 2021/05/04 16:07:02 by fd-agnes         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int	main(void)
{
	char	ss[10];
	int		fd;
	char	buf[100];
	char	*str;

	fd = open("test.txt", O_RDONLY);
	bzero(buf, 10);
	ft_read(fd, buf, 9);
	printf("Read   : %s\n", buf);
	ft_write(1, "Write: Mourinho\n", 16);
	printf("Strlen: %d\n", ft_strlen("strlen"));
	printf("Strcpy: %s\n", ft_strcpy(ss, "Mourinho"));
	printf("Strcmp: %d\n", ft_strcmp("dtrcmp", "strcmp"));
	str = ft_strdup("Mourinho");
	printf("Strdup: %s\n", str);
}

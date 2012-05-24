/*
 * SdioDrvDbg.h
 *
 * Copyright (C) 2010 Texas Instruments, Inc. - http://www.ti.com/
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as 
 * published by the Free Software Foundation version 2.
 *
 * This program is distributed "as is" WITHOUT ANY WARRANTY of any
 * kind, whether express or implied; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */
/*
 * SdioDrvDbg.h
 *
 * Copyright (C) 2008 Texas Instruments, Inc. - http://www.ti.com/
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as 
 * published by the Free Software Foundation version 2.
 *
 * This program is distributed "as is" WITHOUT ANY WARRANTY of any
 * kind, whether express or implied; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */

#ifndef OMAP3430_SDIODRV_DEBUG_H
#define OMAP3430_SDIODRV_DEBUG_H

#include <linux/kernel.h>

typedef enum{
SDIO_DEBUGLEVEL_EMERG=1,
SDIO_DEBUGLEVEL_ALERT,
SDIO_DEBUGLEVEL_CRIT,
SDIO_DEBUGLEVEL_ERR=4,
SDIO_DEBUGLEVEL_WARNING,
SDIO_DEBUGLEVEL_NOTICE,
SDIO_DEBUGLEVEL_INFO,
SDIO_DEBUGLEVEL_DEBUG=8
}sdio_debuglevel;

extern int g_sdio_debug_level;

#define LOGTAG "TIWLAN: "

#ifdef SDIO_DEBUG

#define PDEBUG(format, ...)   if(g_sdio_debug_level >= SDIO_DEBUGLEVEL_DEBUG)   pr_info(LOG_TAG format, ##__VA_ARGS__)
#define PINFO(format, ...)    if(g_sdio_debug_level >= SDIO_DEBUGLEVEL_INFO)    pr_info(LOG_TAG format, ##__VA_ARGS__)
#define PNOTICE(format, ...)  if(g_sdio_debug_level >= SDIO_DEBUGLEVEL_NOTICE)  pr_notice(LOG_TAG format, ##__VA_ARGS__)
#define PWARNING(format, ...) if(g_sdio_debug_level >= SDIO_DEBUGLEVEL_WARNING) pr_warning(LOG_TAG format, ##__VA_ARGS__)
#define PERR(format, ...)     if(g_sdio_debug_level >= SDIO_DEBUGLEVEL_ERR)     pr_err(LOG_TAG format, ##__VA_ARGS__)

#else

#define PDEBUG(format, ...)
#define PINFO(format, ...)    if(g_sdio_debug_level >= SDIO_DEBUGLEVEL_INFO)    pr_info(LOG_TAG format, ##__VA_ARGS__)
#define PNOTICE(format, ...)  if(g_sdio_debug_level >= SDIO_DEBUGLEVEL_NOTICE)  pr_notice(LOG_TAG format, ##__VA_ARGS__)
#define PWARNING(format, ...) if(g_sdio_debug_level >= SDIO_DEBUGLEVEL_WARNING) pr_warning(LOG_TAG format, ##__VA_ARGS__)
#define PERR(format, ...)     pr_err(format , ##__VA_ARGS__)

#endif

/* we want errors reported anyway */

#define PERR1 PERR
#define PERR2 PERR
#define PERR3 PERR

#endif /* OMAP3430_SDIODRV_DEBUG_H */

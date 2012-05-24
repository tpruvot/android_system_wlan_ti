/*
 * SdioDrvDbg.h
 *
 * Copyright(c) 1998 - 2010 Texas Instruments. All rights reserved.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *  * Neither the name Texas Instruments nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
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

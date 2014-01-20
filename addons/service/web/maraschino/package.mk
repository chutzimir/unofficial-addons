################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="maraschino"
PKG_VERSION="1681187"
PKG_REV="0"
PKG_ARCH="i386 x86_64"
PKG_LICENSE="OSS"
PKG_SITE="http://www.maraschinoproject.com/"
PKG_URL="$DISTRO_SRC/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET=""
PKG_BUILD_DEPENDS_TARGET="toolchain Python CherryPy"
PKG_PRIORITY="optional"
PKG_SECTION="service/web"
PKG_SHORTDESC="Maraschino: Web interface to act as a nice overview/front page for my XBMC HTPC"
PKG_LONGDESC="Maraschino is an XBMC web interface with customisable applications module providing quick access to your web interfaces (e.g. SABnzb+, SickBeard, or whatever else you want to link to), recently added episodes module, media library browser, currently playing bar and disk space module."

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.service"

PKG_AUTORECONF="no"

PKG_MAINTAINER="unofficial.addon.pro"

make_target() {
  : # nop
}

makeinstall_target() {
  : # nop
}

addon() {
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/
  cp -PR $PKG_BUILD/* $ADDON_BUILD/$PKG_ADDON_ID/
}

class ScimGtkx3AT4118 < Formula
  desc "The Smart Common Input Method platform"
  homepage "https://github.com/scim-im/scim"
  url "https://github.com/scim-im/scim/archive/refs/tags/1.4.18.tar.gz"
  version "1.4.18"
  sha256 "072d79dc3c7277b8e8fcb1caf1a83225c3bf113d590f314b85ae38024427a228"
  license "LGPL-2.1"

  keg_only :versioned_formula

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "intltool" => :build
  depends_on "libtool" => :build
  depends_on "perl" => :build
  depends_on "gettext" => :build
  depends_on "pkgconf" => :build
  depends_on "at-spi2-core"
  depends_on "cairo"
  depends_on "fontconfig"
  depends_on "fribidi"
  depends_on "gdk-pixbuf"
  depends_on "glib"
  depends_on "glibc"
  depends_on "harfbuzz"
  depends_on "libepoxy"
  depends_on "pango"
  depends_on "libx11"
  depends_on "libxau"
  depends_on "libxcb"
  depends_on "libxdamage"
  depends_on "libxext"
  depends_on "libxfixes"
  depends_on "libxi"
  depends_on "libxinerama"
  depends_on "libxkbcommon"
  depends_on "libxrandr"
  depends_on "xorgproto"
  depends_on "gtk+3"

  patch :p1 do
    url "https://mirrors.sjtug.sjtu.edu.cn/gentoo/app-i18n/scim/files/scim-1.4.18-fix-for-gcc15.patch"
    sha256 "1db8d4acc686895b5d3123e172fdf6a7542ae8f160d94399982fca770e6d6bf1"
  end

  def install
    ENV["LC_ALL"] = "C"

    system "./bootstrap"

    args  = std_configure_args
    args << "--enable-silent-rules"
    args << "--enable-shared"
    args << "--disable-static"
    args << "--disable-tests"
    args << "--disable-documents"
    args << "--disable-config-simple"
    args << "--disable-config-socket"
    args << "--enable-frontend-x11"
    args << "--enable-frontend-socket"
    args << "--enable-im-rawcode"
    args << "--enable-im-socket"
    args << "--disable-orig-gtk2-immodule"
    args << "--disable-orig-gtk3-immodule"
    args << "--disable-gtk2-immodule"
    args << "--enable-gtk3-immodule"
    args << "--with-gtk3-im-module-dir=#{lib}/gtk-3.0/3.0.0/immodules"
    args << "--disable-qt3-immodule"
    args << "--disable-qt4-immodule"
    args << "--disable-clutter-immodule"
    args << "--disable-panel-gtk"
    args << "--disable-setup-ui"
    args << "--with-x"
    args << "--without-doxygen"
    args << "--with-gtk-version=3"

    system "./configure", *args
    system "make"
    system "make", "install"
  end

  def post_install
    ohai "Symlink #{lib}/gtk-3.0/3.0.0/immodules/im-scim.so => #{Formula["gtk+3"].lib}/gtk-3.0/3.0.0/immodules/im-scim.so"
    (Formula["gtk+3"].lib/"gtk-3.0/3.0.0/immodules").install_symlink lib/"gtk-3.0/3.0.0/immodules/im-scim.so"
    system Formula["gtk+3"].bin/"gtk-query-immodules-3.0 > #{Formula["gtk+3"].lib}/gtk-3.0/3.0.0/immodules.cache"
  end

  test do
    system "false"
  end
end

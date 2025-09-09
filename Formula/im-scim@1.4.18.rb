class ImScimAT1418 < Formula
  desc "Smart Common Input Method platform"
  homepage "https://github.com/scim-im/scim"
  url "https://github.com/scim-im/scim/archive/refs/tags/1.4.18.tar.gz"
  sha256 "072d79dc3c7277b8e8fcb1caf1a83225c3bf113d590f314b85ae38024427a228"
  license "GPL-2.0-or-later"

  keg_only :versioned_formula

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "intltool" => :build
  depends_on "perl" => :build
  depends_on "pkgconf" => :build
  depends_on "gettext"
  depends_on "glib"
  depends_on "glibc"
  depends_on "libtool"
  depends_on "libx11"
  depends_on "libxau"
  depends_on "libxcb"
  depends_on "pango"
  depends_on "gtk+3"

  patch :p1 do
    url "https://mirrors.sjtug.sjtu.edu.cn/gentoo/app-i18n/scim/files/scim-1.4.18-fix-for-gcc15.patch"
    sha256 "1db8d4acc686895b5d3123e172fdf6a7542ae8f160d94399982fca770e6d6bf1"
  end

  def install
    ENV["LC_ALL"] = "C"
    ENV.append "CXXFLAGS", "-fpermissive"

    system "./bootstrap"

    args  = std_configure_args
    args << "--disable-silent-rules"
    args << "--disable-documents"
    args << "--with-x"
    args << "--without-doxygen"
    args << "--disable-gtk2-immodule"
    args << "--disable-qt3-immodule"
    args << "--disable-qt4-immodule"
    args << "--disable-panel-gtk"
    args << "--disable-setup-ui"

    system "./configure", *args
    system "make"
    system "make", "install"
  end

  test do
    system "#{bin}/scim-setup", "--version"
  end
end

class Fcitx5Gtkx3AT514 < Formula
  desc "gtk im module and glib based dbus client library"
  homepage "https://github.com/fcitx/fcitx5-gtk"
  url "https://github.com/fcitx/fcitx5-gtk/archive/refs/tags/5.1.4.tar.gz"
  version "5.1.4"
  sha256 "73f63d10078c62e5b6d82e6b16fcb03d2038cc204fc00052a34ab7962b0b7815"
  license "GPL-2.0-or-later"

  keg_only :versioned_formula

  depends_on "cmake" => :build
  depends_on "extra-cmake-modules" => :build
  depends_on "fmt" => :build
  depends_on "gettext" => :build
  depends_on "glib"
  depends_on "glibc"
  depends_on "gobject-introspection"
  depends_on "gtk+3"

  def install
    ENV["LC_ALL"] = "C"

    args  = std_cmake_args
    args << "-DENABLE_GIR=OFF"
    args << "-DENABLE_GTK2_IM_MODULE=OFF"
    args << "-DENABLE_GTK3_IM_MODULE=ON"
    args << "-DENABLE_GTK4_IM_MODULE=OFF"
    args << "-DENABLE_SNOOPER=OFF"
    args << "-DGTK3_IM_MODULEDIR=#{lib}/gtk-3.0/3.0.0/immodules"

    # Using std::free may cause a compile error.
    inreplace "./gtk3/utils.h", /std::free/, "free"

    system "cmake", "-S", ".", "-B", "build", *args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  def post_install
    ohai "Symlink #{lib}/gtk-3.0/3.0.0/immodules/im-fcitx5.so => #{Formula["gtk+3"].lib}/gtk-3.0/3.0.0/immodules/im-fcitx5.so"
    (Formula["gtk+3"].lib/"gtk-3.0/3.0.0/immodules").install_symlink lib/"gtk-3.0/3.0.0/immodules/im-fcitx5.so"
    system Formula["gtk+3"].bin/"gtk-query-immodules-3.0 > #{Formula["gtk+3"].lib}/gtk-3.0/3.0.0/immodules.cache"
  end

  test do
    system "false"
  end
end

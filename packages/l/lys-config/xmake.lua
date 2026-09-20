package("lys-config")
    set_kind("library", {headeronly = true})
    set_description("Part of the Lys Framwork - Config")
    set_license("zlib")
    set_homepage("https://github.com/Tigole/Lys-Config.git")

    add_urls("https://github.com/Tigole/Lys-Config.git")
    add_versions("0.0.0", "81d11dfb962d2c56b129e8217a52ecc943240600")

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
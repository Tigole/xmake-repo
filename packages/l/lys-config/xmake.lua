package("lys-config")
    set_kind("library", {headeronly = true})
    set_description("Part of the Lys Framwork - Config")
    set_license("zlib")
    set_homepage("https://github.com/Tigole/Lys-Config.git")

    add_urls("https://github.com/Tigole/Lys-Config.git")
    add_versions("0.0.0", "7af5a16221ec36a592674051bf132cd5fa407230")

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
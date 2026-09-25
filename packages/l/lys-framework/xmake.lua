package("lys-workingthread")
    set_kind("library", {headeronly = true})
    set_description("Part of the Lys Framwork - Working Thread")
    set_license("zlib")
    set_homepage("https://github.com/Tigole/Lys-Framework.git")

    add_urls("https://github.com/Tigole/Lys-Framework.git")
    add_versions("0.0.0", "866124aa40ae97f5f59fa3b0163f64e3ad5dff35")

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
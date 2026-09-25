package("lys-framework")
    set_kind("library")
    set_description("Lys Framwork")
    set_license("zlib")
    set_homepage("https://github.com/Tigole/Lys-Framework.git")

    add_urls("https://github.com/Tigole/Lys-Framework.git")
    add_versions("0.0.0", "1b003f4747a71648f6ca87400249ce1e869e9e73")

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
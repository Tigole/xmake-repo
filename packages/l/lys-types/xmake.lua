package("lys-types")
    set_kind("library", {headeronly = true})
    set_description("Part of the Lys Framwork - Types")
    set_license("zlib")
    set_homepage("https://github.com/Tigole/Lys-Types.git")

    add_urls("https://github.com/Tigole/Lys-Types.git")
    add_versions("HEAD", "b8accdbffaa9b3707c17f3d577bb2b3742cc978e")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)

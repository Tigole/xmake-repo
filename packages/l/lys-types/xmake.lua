package("lys-types")
    set_kind("library", {headeronly = true})
    set_description("Part of the Lys Framwork - Types")
    set_license("zlib")
    set_homepage("https://github.com/Tigole/Lys-Types.git")

    add_urls("https://github.com/Tigole/Lys-Types.git")
    add_versions("HEAD", "71fca69c44b13d90aa11f4faa949634c6fe2c894")

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

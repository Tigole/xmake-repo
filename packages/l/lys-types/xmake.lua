package("op")
    set_kind("library", {headeronly = true})
    set_description("Part of the Lys Framwork - Types")
    set_license("zlib")
    set_homepage("https://github.com/Tigole/Lys-Types.git")

    add_urls("https://github.com/Tigole/Lys-Types.git")
    add_versions("HEAD", "bcd87932e98195ef23d9cf5c57cd0de620136c24")

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

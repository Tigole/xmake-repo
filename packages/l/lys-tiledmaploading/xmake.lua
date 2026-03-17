package("lys-tiledmaploading")
    set_kind("library", {headeronly = true})
    set_description("Part of the Lys Framwork - Types")
    set_license("zlib")
    set_homepage("https://github.com/Tigole/Lys-TiledMapLoading.git")

    add_urls("https://github.com/Tigole/Lys-TiledMapLoading.git")
    add_versions("HEAD", "f27056cec9ea21ae60504e50b94cccc1511ef64a")

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
package("lys-config")
    set_kind("library", {headeronly = true})
    set_description("Part of the Lys Framwork - Config")
    set_license("zlib")
    set_homepage("https://github.com/Tigole/Lys-Config.git")

    add_urls("https://github.com/Tigole/Lys-Config.git")
    add_versions("0.0.0", "6a5a19d5a3610abdf9f1fc544b5073e7084cdc2c")

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
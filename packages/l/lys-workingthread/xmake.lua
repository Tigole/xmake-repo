package("lys-workingthread")
    set_kind("library", {headeronly = true})
    set_description("Part of the Lys Framwork - Working Thread")
    set_license("zlib")
    set_homepage("https://github.com/Tigole/Lys-WorkingThread.git")

    add_urls("https://github.com/Tigole/Lys-WorkingThread.git")
    add_versions("0.0.0", "3105ed5041bfe5b19dc6eb5119be1c102ce42f05")

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